Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5KFV-0007uS-Io
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 15:25:14 +0000
Date: Mon, 11 Oct 2010 17:23:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101011152304.GD7412@game.jcrosoft.org>
References: <20101010230505.17833.46593.stgit@zaytsev.su>
	<20101011144129.GB7412@game.jcrosoft.org>
	<20101011144836.GB28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101011144836.GB28242@pengutronix.de>
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
Subject: Re: [PATCH] Add basic support from ARM Versatile/PB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bahadir Balban <bbalban@b-labs.com>

On 16:48 Mon 11 Oct     , Sascha Hauer wrote:
> On Mon, Oct 11, 2010 at 04:41:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 23:15 Sun 10 Oct     , Alexey Zaytsev wrote:
> > > Signed-off-by: Alexey Zaytsev <alexey.zaytsev@gmail.com>
> > > ---
> > > 
> > > Hi.
> > > 
> > > It seems that barebox does not run on any ARM machines provided
> > > by QEMU. This patch adds basic Versatile/PB support. It is far from
> > > being complete and has not been tested on real hardware, but
> > > seems to work fine in QEMU.
> > > 
> > > Please notice, that you need to set CONFIG_VERSATILE_SMC91C111
> > > in order to have networking in QEMU, as it does not provide
> > > smc91x found on the real hardware.
> > > 
> > > For a queck test, run:
> > > 
> > > 	qemu-system-arm -kernel barebox.bin -M versatilepb -cpu arm926 -nographic -m 64 -net nic,model=smc91c111 -net user
> > this must be in a doc
> > 
> > please use defaultenv and enable more functionnability
> > 
> > as we can use it as ref board for emulation
> > > 
> > > 
> > > +
> > > +config BOARDINFO
> > > +	default "ARM Versatile/PB (ARM926EJ-S)"
> > > +endif
> > > +
> > > +config VERSATILE_SMC91C111
> > > +	bool "Use smc91c111 instead of smc91x (for QEMU)"
> > > +	default 0
> > ??
> > > +	help
> > > +	 Enable this option to run barebox inside qemu.
> > > +	 Real versatile boards are equipped with smc911x,
> > > +	 but qemu only provides smc91111, which is a bit different.
> > it will be beter to modify the ressources depending on the drivers enabled
> 
> I think it's ok the way Alexey did this. It's a good place to document
> that we need two different ethernet drivers depending on native/qemu
> compilation.
yeah but just enable the drivers is enough but we need to make it exclusive
via Kconfig otherwise it will be confusing

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
