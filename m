Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abjnU-0000TT-3c
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:05:12 +0000
Date: Fri, 4 Mar 2016 08:04:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160304070448.GB21869@pengutronix.de>
References: <1456959088-9609-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456959088-9609-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] arm/cpu/lowlevel: fix: possible processor mode change
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>

Hi Alexander,

On Wed, Mar 02, 2016 at 11:51:28PM +0100, Alexander Kurz wrote:
> This is a re-application of fix 17644b55.
> arm_cpu_lowlevel_init() will set the processor mode to 0x13 (supervisor).
> When this function is entered via a different processor mode, register
> banking will happen to lr (r14), resulting in an invalid return address.
> This fix will preserve the return address manually.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/cpu/lowlevel.S | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index b76222d..e5baa12 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -4,6 +4,8 @@
>  
>  .section ".text_bare_init_","ax"
>  ENTRY(arm_cpu_lowlevel_init)
> +	/* save lr, since it may be banked away with a processor mode change */
> +	mov	r2, lr

Thanks for fixing this and for adding a comment why this is done. This
hopefully prevents us from breaking it again.

Out of interest, what system are you using where this fix is necesssary?

Uwe, now we know why that was done and why e190bcf (arm/cpu/lowlevel:
Don't save the return address in another register) was a bad idea.

Applied this one to master.

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
