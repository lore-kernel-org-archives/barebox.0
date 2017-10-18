Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4lMG-0006Db-Qf
 for barebox@lists.infradead.org; Wed, 18 Oct 2017 10:13:54 +0000
Received: from vsmx001.vodafonemail.xion.oxcs.net (unknown [192.168.75.191])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id F28B5C30C8
 for <barebox@lists.infradead.org>; Wed, 18 Oct 2017 10:13:18 +0000 (UTC)
Received: from null (app-38.app.xion.oxcs.net [10.10.1.38])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTPA id DA2C9300698
 for <barebox@lists.infradead.org>; Wed, 18 Oct 2017 10:13:16 +0000 (UTC)
Date: Wed, 18 Oct 2017 12:13:16 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <580704064.144248.1508321596762@mail.vodafone.de>
MIME-Version: 1.0
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
Subject: intel efi system too slow
To: barebox@lists.infradead.org

Hi,

I'm working on an embedded system with an intel CPU (atom).

I've built a barebox from the current master (v2017.10.0) and it
runs and can actually boot a kernel.

Nevertheless I think the bootloader is very slow, for example when
reading or writing files to the disk (an industrial CFastCard). 

After the kernel starts the system becomes fast 'es expected'.

While barebox starts up I noticed the following line on the console:

...
EFI Event timer too slow freq = 50 Hz
...

I found the warning in the source file 'drivers/clocksource/efi.c':

static int efi_cs_init(struct clocksource *cs)
{
	efi_status_t efiret;
	uint64_t freq;
...
	freq = 1000 * 1000;
	if (ticks_freq() < 800 * 1000) {
		uint64_t nb_100ns;

		freq = ticks_freq_x86();
		if (freq == 0) {
			BS->close_event(efi_cs_evt);
			return -ENODEV;
		}
		nb_100ns = 10 * 1000 * 1000 / freq;
		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
		if (EFI_ERROR(efiret)) {
			BS->close_event(efi_cs_evt);
			return -efi_errno(efiret);
		}
	}
...
}

Can this be a possible reason for a too slow system or is it 'OK'
to see this warning.

I don't really know where I should start searching for a possible
problem or system misconfiguration.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
