Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8It4-0002T9-Qz
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 06:47:28 +0000
Date: Thu, 12 Sep 2019 08:47:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190912064725.72dg6dykqnu7vzvh@pengutronix.de>
References: <20190909203451.13047-1-u.kleine-koenig@pengutronix.de>
 <20190909203451.13047-3-u.kleine-koenig@pengutronix.de>
 <20190912061617.guwsnwogkiya2y36@pengutronix.de>
 <20190912064240.nyljjoqhgdharwk7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912064240.nyljjoqhgdharwk7@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 12, 2019 at 08:42:40AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> -m was an intermediate step. You suggested to use -m instead of
> "setmax", but while implementing I noticed that with options there is no
> need for a keyword or option.
> =

> Can you please squash this into my patch?:
> =

> diff --git a/commands/mmc.c b/commands/mmc.c
> index b51522fce2a6..c696e7b8817b 100644
> --- a/commands/mmc.c
> +++ b/commands/mmc.c
> @@ -80,7 +80,7 @@ static u8 *mci_get_ext_csd(struct mci *mci)
>  	return ext_csd;
>  }
>  =

> -/* enh_area -m [-c] /dev/mmcX */
> +/* enh_area [-c] /dev/mmcX */
>  static int do_mmc_enh_area(int argc, char *argv[])
>  {
>  	const char *devpath;
> @@ -98,10 +98,6 @@ static int do_mmc_enh_area(int argc, char *argv[])
>  		}
>  	}
>  =

> -	/*
> -	 * -m is currently mandatory to allow more flexible enhanced area
> -	 * specifications in the future.
> -	 */
>  	if (argc - optind !=3D 1) {
>  		printf("Usage: mmc enh_area [-c] /dev/mmcX\n");
>  		return COMMAND_ERROR_USAGE;
> =

> or should I resend?

squashed into the patch, no need to resend. Thanks,

 Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
