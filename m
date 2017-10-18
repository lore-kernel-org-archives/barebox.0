Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4o3l-0002uz-2l
 for barebox@lists.infradead.org; Wed, 18 Oct 2017 13:06:59 +0000
Date: Wed, 18 Oct 2017 15:06:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171018130631.jthbrkz6xmwustok@pengutronix.de>
References: <580704064.144248.1508321596762@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <580704064.144248.1508321596762@mail.vodafone.de>
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
Subject: Re: intel efi system too slow
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Wed, Oct 18, 2017 at 12:13:16PM +0200, Giorgio Dal Molin wrote:
> Hi,
> 
> I'm working on an embedded system with an intel CPU (atom).
> 
> I've built a barebox from the current master (v2017.10.0) and it
> runs and can actually boot a kernel.
> 
> Nevertheless I think the bootloader is very slow, for example when
> reading or writing files to the disk (an industrial CFastCard). 
> 
> After the kernel starts the system becomes fast 'es expected'.
> 
> While barebox starts up I noticed the following line on the console:
> 
> ...
> EFI Event timer too slow freq = 50 Hz
> ...
> 
> I found the warning in the source file 'drivers/clocksource/efi.c':
> 
> static int efi_cs_init(struct clocksource *cs)
> {
> 	efi_status_t efiret;
> 	uint64_t freq;
> ...
> 	freq = 1000 * 1000;
> 	if (ticks_freq() < 800 * 1000) {
> 		uint64_t nb_100ns;
> 
> 		freq = ticks_freq_x86();
> 		if (freq == 0) {
> 			BS->close_event(efi_cs_evt);
> 			return -ENODEV;
> 		}
> 		nb_100ns = 10 * 1000 * 1000 / freq;
> 		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
> 		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
> 		if (EFI_ERROR(efiret)) {
> 			BS->close_event(efi_cs_evt);
> 			return -efi_errno(efiret);
> 		}
> 	}
> ...
> }
> 
> Can this be a possible reason for a too slow system or is it 'OK'
> to see this warning.

Yes, this can be a reason why the system feels slow. a timer frequency
of 50Hz means that the smallest delay barebox can do is 1/50s. This
means that even a udelay(1) will take 20ms.
Try disabling CLOCKSOURCE_EFI (which should be the default in
efi_defconfig). barebox should than use the X86 TSC as clocksource
instead.

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
