Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeaJ5-0007Rt-G5
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 00:52:16 +0000
Date: Fri, 8 Nov 2013 01:51:53 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20131108005153.GA14892@pengutronix.de>
References: <1383869846-26033-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383869846-26033-1-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] partitions: dos: parse extended partition
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

Hello,

On Fri, Nov 08, 2013 at 01:17:26AM +0100, Uwe Kleine-K=F6nig wrote:
> DOS MBRs might contain an extended partition that holds several logical
> partitions. Add these to the partitions of the block device.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  common/partitions/dos.c | 76 +++++++++++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 75 insertions(+), 1 deletion(-)
This even fails to build. See below.

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 1d8213b..f907abc 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> [...]
> @@ -129,6 +181,7 @@ static void dos_partition(void *buf, struct block_dev=
ice *blk,
> [...]
> +					dev_warn(blk->dev, "Skipping additional extended partition\n");
> +			}
> +
>  		} else {
>  			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
>  		}
>  	}
>  =

> +	if (first_extended_partition)
s/first_//

> +		dos_extended_partition(blk, pd, extended_partition);
> +
>  	dsp =3D xzalloc(sizeof(*dsp));
>  	dsp->blk =3D blk;
>  =


Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
