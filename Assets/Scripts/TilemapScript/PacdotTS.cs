using UnityEngine;
using System.Collections;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;
using UnityEngine.Tilemaps;

public class PacdotTS : MonoBehaviour {

    public Tilemap tiles;
    public AnimatedTile uwuCoin;

    private void OnCollisionEnter2D(Collision2D collision)
    {
        Vector3 hitPosition = Vector3.zero;
        foreach (ContactPoint2D hit in collision.contacts)
        {
            hitPosition.x = hit.point.x - 0.1f;
            hitPosition.y = hit.point.y - 0.1f;
            Vector3Int cell = new Vector3Int((int)hitPosition.x, (int)hitPosition.y, 0);
            tiles.SetTile(tiles.WorldToCell(hitPosition), null);
            GameManagerTS.score += 10;
            if (!tiles.ContainsTile(uwuCoin))
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            }
        }
    }
}
