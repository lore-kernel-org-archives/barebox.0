Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnJci-00024o-Dd
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 08:15:18 +0000
Date: Wed, 8 Aug 2018 10:15:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808081504.tzrbrniwpev3ataa@pengutronix.de>
References: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
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
Subject: Re: PATCH added tftp port to fsoptions
To: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Aug 03, 2018 at 11:07:11AM +0000, Toews, Dietrich wrote:
> Hi all,
> 
> we are using barebox for a while now, but we need different tftp-server with different ports.
> Here a proposition for a patch, if someone else needs it also.
> 
> Usage: tftp -o port=1234 ....
> 
> Sincirely
> Dietrich
> 
> 
> From 062a4c8148c2d31c7ce1d405632051b297b64ce0 Mon Sep 17 00:00:00 2001
> From: Dietrich Toews <dietrich.toews@heidelberg.com>
> Date: Fri, 3 Aug 2018 12:55:53 +0200
> Subject: [PATCH] Added tftp port to fsoptions
> 
> ---
>  fs/tftp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 847921a..13efa20 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -87,6 +87,7 @@ struct file_priv {
> 
>  struct tftp_priv {
>         IPaddr_t server;
> +       uint16_t port;
>  };
> 
>  static int tftp_create(struct device_d *dev, const char *pathname, mode_t mode)
> @@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
>                 goto out;
>         }
> 
> -       priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
> +       priv->tftp_con = net_udp_new(tpriv->server, tpriv->port, tftp_handler,
>                         priv);
>         if (IS_ERR(priv->tftp_con)) {
>                 ret = PTR_ERR(priv->tftp_con);
> @@ -651,7 +652,22 @@ static int tftp_probe(struct device_d *dev)
>         dev->priv = priv;
> 
>         priv->server = resolv(fsdev->backingstore);
> -
> +       priv->port   = TFTP_PORT;
> +       if( fsdev->options ) {
> +               // ToDo: if needed check other options.
> +               //       Assumption here: the only option used is 'port=nxxxx'
> +               if( strncmp( fsdev->options, "port=", 5 ) == 0 ) {
> +                       uint16_t p = 0;
> +                       for( uint8_t i=5; i<10; i++ ) {
> +                               // portnumber can only contain ascii chars 0..9
> +                               if( (fsdev->options[i] >= 48) && (fsdev->options[i] < 58) )
> +                                       p = (p * 10) + (fsdev->options[i] - 48);
> +                               else
> +                                       break;  // break on first char that is not a number
> +                       }
> +                       if( p > 0 ) priv->port = p;
> +               }
> +       }

Look at fs/nfs.c to see how it's implemented there. There is
parseopt_hu() which can be used to simplify this code.

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
