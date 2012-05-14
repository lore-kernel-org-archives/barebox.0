Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr43-0004tQ-Ft
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:55:38 +0000
Date: Mon, 14 May 2012 10:55:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514085532.GJ13302@pengutronix.de>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
 <1336929884-19292-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336929884-19292-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/3] MIPS: add the initial support for lowlevel init
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 13, 2012 at 09:24:43PM +0400, Antony Pavlov wrote:
> This commit introduce the initial support for
> machine specific lowlevel initialization
> (e.g. RAM controller or cache memory).
> 
> To return from mach_init_lowlevel() it uses
> explicit mach_init_lowlevel_return label.
> This saves ra register for using inside mach_init_lowlevel()
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boot/start.S |    8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index 6bf5baa..6db104b 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -74,6 +74,14 @@ __start:
>  	and	k0, k1
>  	mtc0	k0, CP0_STATUS
>  
> +#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
> +	b	mach_init_lowlevel
> +	 nop
       ^^^^

Space after tab.

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
