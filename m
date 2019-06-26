Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg268-0004o8-B2
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 07:12:05 +0000
Date: Wed, 26 Jun 2019 09:12:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190626071202.yvzsac4ysbalixm3@pengutronix.de>
References: <20190619104916.4128-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619104916.4128-1-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] sandbox: prevent segfault in tap_alloc()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

Hi Antony,

On Wed, Jun 19, 2019 at 01:49:16PM +0300, Antony Pavlov wrote:
> Tap network interface initialization in sandbox
> barebox leads to segfault under Debian Buster/Sid.
> 
> The problem is that strcpy(dev, ifr.ifr_name) inside
> tap_alloc() tries to alter read-only data passed
> by tap_probe() and barebox receives SIGSEGV.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/tap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/tap.c b/drivers/net/tap.c
> index 1fbfa085b1..d7e32f4875 100644
> --- a/drivers/net/tap.c
> +++ b/drivers/net/tap.c
> @@ -14,7 +14,7 @@
>  
>  struct tap_priv {
>  	int fd;
> -	char *name;
> +	char name[128];
>  };
>  
>  static int tap_eth_send(struct eth_device *edev, void *packet, int length)
> @@ -65,7 +65,7 @@ static int tap_probe(struct device_d *dev)
>  	int ret = 0;
>  
>  	priv = xzalloc(sizeof(struct tap_priv));
> -	priv->name = "barebox";
> +	strncpy(priv->name, "barebox", sizeof(priv->name));
>  
>  	priv->fd = tap_alloc(priv->name);

Can we change the prototype of tap_alloc() to something like this:

int tap_alloc(const char *name, int *fd, char **outname);

outname would be an allocated string to be freed by the caller.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
