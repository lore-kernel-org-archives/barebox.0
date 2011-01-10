Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcNlV-00017i-S1
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 19:50:55 +0000
Date: Mon, 10 Jan 2011 20:50:34 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110110195034.GJ24920@pengutronix.de>
References: <1294658358-18311-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1294658358-18311-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] defaultenv: make 'boot' work from subdirs
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Wolfram,

On Mon, Jan 10, 2011 at 12:19:18PM +0100, Wolfram Sang wrote:
> Wrong pathnames prevented that.
> =

> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  defaultenv/bin/boot |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 42c7ec2..4c2975d 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -56,13 +56,13 @@ fi
>  =

>  if [ ! -e /dev/ram0.kernelraw ]; then
>  	# arm raw kernel images are usually located at sdram start + 0x8000
> -	addpart dev/ram0 8M@0x8000(kernelraw)
> +	addpart /dev/ram0 8M@0x8000(kernelraw)
>  fi
>  =

>  if [ ! -e /dev/ram0.kernel ]; then
>  	# Here we can safely put the kernel without risking of overwriting it
>  	# while extracting
> -	addpart dev/ram0 8M@8M(kernel)
> +	addpart /dev/ram0 8M@8M(kernel)
>  fi
I stumbled over this one some time ago, too.  but never came around to
look for its cause.  Thanks, looks good.

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
