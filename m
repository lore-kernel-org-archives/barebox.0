Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8RKQ-00065z-3f
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 07:44:14 +0000
Date: Mon, 3 Sep 2012 09:44:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903074412.GZ26594@pengutronix.de>
References: <1346428837-20422-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346428837-20422-1-git-send-email-w.sang@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: miidev: really wait for auto negotiation
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 31, 2012 at 06:00:37PM +0200, Wolfram Sang wrote:
> miidev_wait_aneg() polled the wrong bit, so link detection did fail on
> boards where the PHY had to come out of a powerdown mode.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/net/miidev.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> index b49944b..75b53e3 100644
> --- a/drivers/net/miidev.c
> +++ b/drivers/net/miidev.c
> @@ -116,7 +116,7 @@ int miidev_wait_aneg(struct mii_device *mdev)
>  			return -ETIMEDOUT;
>  		}
>  
> -	} while (!(status & BMSR_LSTATUS));
> +	} while (!(status & BMSR_ANEGCOMPLETE));
>  
>  	return 0;
>  }
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
