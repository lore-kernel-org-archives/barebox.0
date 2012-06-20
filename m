Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShFPA-0002AY-NU
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 07:32:45 +0000
Date: Wed, 20 Jun 2012 09:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120620073241.GK28394@pengutronix.de>
References: <201206191229.29035.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206191229.29035.jbe@pengutronix.de>
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
Subject: Re: i.MX23/i.MX28, software reset feature
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 19, 2012 at 12:29:28PM +0200, Juergen Beisert wrote:
> Hi list,
> 
> currently we use the watchdog to make the "reset" command work on the 
> i.XM23/i.MX28 CPUs. This collides if someone wants to use the watchdog in a 
> regular manner, as Barebox cannot distinguish if the reset was a result of 
> the "reset" command (or "reboot" from Linux) or if something strange happens 
> and the watchdog has barked to reboot and try again (maybe in a different 
> manner).
> 
> The i.XM23/i.MX28 CPUs are coming with a bit in a special register in 
> the "clock generation and control" unit to hard reset the whole SoC. This 
> could be used instead to make the "reset" command work. But the register 
> offsets are different in both SoCs. So:
> 
>  - using ifdefs to distinguish both SoCs in "arch/arm/mach-mxs/reset-imx.c"
>  - or moving the reset_cpu() function into "arch/arm/mach-mxs/speed-imx*.c"
>    where all the required symbols and correct offset are already defined on a
>    per SoC base?

Or add a imx23.c and imx28.c where we could collect the SoC specific
code.

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
