Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHWb9-0007YB-Fr
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:38:48 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 7FC9A4B00F2
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 10:38:40 +0200 (CEST)
Date: Tue, 10 Apr 2012 10:38:39 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120410103839.6f7bcef9@eb-e6520>
In-Reply-To: <1333616355-632-2-git-send-email-s.hauer@pengutronix.de>
References: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
 <1333616355-632-2-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] cfi flash: Fix loop count calculation
To: barebox@lists.infradead.org

Le Thu,  5 Apr 2012 10:59:14 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> 'reduce the number of loops by the width of the port' means
> a simple len / width. Do not try to be clever by shifting
> and doing it wrong.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/nor/cfi_flash_intel.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
> index 6318cfe..f0cbf72 100644
> --- a/drivers/nor/cfi_flash_intel.c
> +++ b/drivers/nor/cfi_flash_intel.c
> @@ -68,7 +68,7 @@ static int intel_flash_write_cfibuffer (struct flash_in=
fo *info, ulong dest, con
>  		return retcode;
>  =

>  	/* reduce the number of loops by the width of the port	*/
> -	cnt =3D len >> (info->portwidth - 1);
> +	cnt =3D len / width;
>  =

>  	flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  	while (cnt-- > 0) {



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
