Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TctrI-0000Lw-Kl
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 08:16:05 +0000
Date: Mon, 26 Nov 2012 09:16:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126081602.GW10369@pengutronix.de>
References: <1353783209-16451-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353783209-16451-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Cleanup Kconfig files
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Nov 24, 2012 at 10:53:29PM +0400, Alexander Shiyan wrote:
> This patch provides a global cleanup barebox Kconfig files. This includes
> replacing spaces to tabs, formatting in accordance format, removing
> extraneous lines and spaces. No functional changes.
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 3afd885..01fe9de 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -19,7 +19,7 @@ config ARM_LINUX
>  config HAVE_MACH_ARM_HEAD
>  	bool
>  
> -menu "System Type                   "
> +menu "System Type"

These whitespaces are present on purpose. They are there for aligning
the arrows in menus in make menuconfig. I tend to say that this is a
good change anyway, because counting the spaces to align line lengths
is something which hurts during review (and I can't remember having
done this before).

If nobody objects I'll apply it. If somebody objects, I probably say him
that he should provide a patch for Kconfig instead.

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
