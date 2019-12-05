using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class PacmanCollision : MonoBehaviour
{
    public void OnTriggerEnter2D(Collider2D other)
    {
        if (other.name == "front")
        {
            transform.parent.GetComponent<PlayerControllerTS>().PositionDead();
            transform.parent.GetComponent<PlayerControllerTS>().UpdateScoreDeaths();
            other.transform.parent.GetComponent<PlayerControllerTS>().UpdateScoreKills();
        }
    }
}
