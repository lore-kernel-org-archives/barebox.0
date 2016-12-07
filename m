Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiQa-0007A9-Qh
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:02:58 +0000
Date: Wed, 7 Dec 2016 21:02:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207200235.627it7hkpisbo2fl@pengutronix.de>
References: <1480583994-27062-1-git-send-email-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480583994-27062-1-git-send-email-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] x86: update boot message "UBOOT2" to "BAREBOX"
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Dec 01, 2016 at 10:19:54AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  arch/x86/boot/boot_hdisk.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/x86/boot/boot_hdisk.S b/arch/x86/boot/boot_hdisk.S
> index 143336d3b43e..6f98197512a0 100644
> --- a/arch/x86/boot/boot_hdisk.S
> +++ b/arch/x86/boot/boot_hdisk.S
> @@ -164,7 +164,7 @@ output_message:
>  =

>  	.section .boot_data
>  =

> -notification_string:	.asciz "UBOOT2 "
> +notification_string:	.asciz "BAREBOX "
>  chs_string:	.asciz "CHS "
>  jmp_string:	.asciz "JMP "
>  =

> -- =

> 2.1.4
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
