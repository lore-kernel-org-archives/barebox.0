Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rhg6K-0000rq-Tn
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:30:49 +0000
Date: Mon, 2 Jan 2012 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120102113036.GJ27267@pengutronix.de>
References: <1325157211-3986-1-git-send-email-renaud.barbier@ge.com>
 <1325157211-3986-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325157211-3986-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/2] Preparation stage to support multiple PPC
 architectures.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 29, 2011 at 11:13:30AM +0000, Renaud Barbier wrote:
> diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
> index 632fb85..088d07e 100644
> --- a/arch/ppc/mach-mpc5xxx/Kconfig
> +++ b/arch/ppc/mach-mpc5xxx/Kconfig
> @@ -1,3 +1,55 @@
> +if ARCH_MPC5XXX
> +
> +config CLOCKSOURCE_MASK
> +	int
> +	default 32
> +
> +config CLOCKSOURCE_SHIFT
> +	int
> +	default 15

Please no kconfig variable for this. It's easier to just have some SoC
specific include file for this. But please let me first see your 8xxx
patches. arch/ppc/lib/time.c has some (currently unused) #ifdefs and it
might be more appropriate to create a time-8xxx.c (and moving time.c to
time-mpc5200.c) instead of ifdeffing a 75 line file.

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
