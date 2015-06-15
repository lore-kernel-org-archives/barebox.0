Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4MsG-0007fN-Le
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 05:23:57 +0000
Date: Mon, 15 Jun 2015 07:23:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150615052333.GK6325@pengutronix.de>
References: <557AA945.4040108@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <557AA945.4040108@celad.com>
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
Subject: Re: [RFC] Barebox shutdown hooks
To: Herve Codina <herve.CODINA@celad.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Herve,

On Fri, Jun 12, 2015 at 11:41:25AM +0200, Herve Codina wrote:
> I try to find a way to perform some tasks on barebox leaving (ie last step of go command or boot/bootm command)
> and i look at shutdown_barebox (common/startup.c)
> This function is :
> ---- 8< -----
> void shutdown_barebox(void)
> {
> 	devices_shutdown();
> #ifdef ARCH_SHUTDOWN
> 	arch_shutdown();
> #endif
> 	if (board_shutdown)
> 		board_shutdown();
> }
> ---- 8< -----
> 
> I have several questions :
> 
> 1) Why board_shutdown is called after arch_shutdown.
> arch shutdown is supposed to do stuf like disabling mmu, flushing cache, ...
> Don't you think that board_shutdown should be between devices_shutdown and arch_shutdown ?

You are probably right. Only one single board implements board_shutdown
anyway, so I guess it's just where it suited the original author.

> 
> 2) What about the ability to have hooks for shutdown with all resources available
> For my tasks, i need devices available. What do you thing about a new "early_shutdown" called before devices_shutdown.
> barebox_shutdown will become :
> void shutdown_barebox(void)
> {
> 	early_shutdown();
> 	devices_shutdown();
> #ifdef ARCH_SHUTDOWN
> 	arch_shutdown();
> #endif
> 	if (board_shutdown)
> 		board_shutdown();
> }
> 
> for early_shutdown itself, i would give flexibility. I thing about 2 way :
> 
> 2.1) register shutdown hooks
> Use same mechanism as fixing up device tree :
> early_shutdown_register function to register hook
> and iterator calling all registered hooks in early_shutdown
> 
> 2.2) exitcall
> Use same mechanism as initcall functions :
> Use a specific section to store exit hooks table. A macro early_exitcall (same mechanism as xxxx_initcall macro) will be used to do this.
> Iterate on each hook in this section in early_shutdown (same mechanism as initcall in start_barebox).

I vote for 2.2). It has the smaller runtime overhead and we can hook
the existing devices_shutdown, arch_shutdown and board_shutdown into
that mechanism aswell.

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
