Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHW5n-0007Nq-2v
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:06:24 +0000
Date: Tue, 10 Apr 2012 10:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410080614.GV3852@pengutronix.de>
References: <1334016745-7914-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334016745-7914-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cfi_flash_intel: fix buffer write for width > 2
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Tue, Apr 10, 2012 at 02:12:25AM +0200, Eric B=E9nard wrote:
> This patch does what the comment tells the code should do.
> Actual code fails for width =3D 4 (verified : only half of the buffer
> is copied because len is divided by 8 instead of 4) and 8 where len
> will be divided by 128.
> The bug was introduced in 3d3c13d8f8238d0ed6e3e23841737de53b2c424f
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Can you please check if this is also fixed by the patches I recently
posted:

http://www.mail-archive.com/barebox@lists.infradead.org/msg01033.html

Thanks
 Sascha

> ---
>  drivers/nor/cfi_flash_intel.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
> index 6318cfe..3b325c1 100644
> --- a/drivers/nor/cfi_flash_intel.c
> +++ b/drivers/nor/cfi_flash_intel.c
> @@ -68,7 +68,7 @@ static int intel_flash_write_cfibuffer (struct flash_in=
fo *info, ulong dest, con
>  		return retcode;
>  =

>  	/* reduce the number of loops by the width of the port	*/
> -	cnt =3D len >> (info->portwidth - 1);
> +	cnt =3D len >> (info->portwidth =3D=3D 8 ? 3 : info->portwidth >> 1);
>  =

>  	flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  	while (cnt-- > 0) {
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
