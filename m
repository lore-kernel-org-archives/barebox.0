Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NvT-0004uB-OV
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 11:54:01 +0000
Message-ID: <ea522b8d2edc79a5354bc8234aea66519603cc55.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 19 Feb 2020 12:53:56 +0100
In-Reply-To: <20200219082730.jwvsp3cdsoomdhwd@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
 <20200218153732.14845-6-s.hauer@pengutronix.de>
 <843b47cf-272e-3800-df85-9a2f9dcbee23@gmx.net>
 <20200219082730.jwvsp3cdsoomdhwd@pengutronix.de>
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
Subject: Re: [PATCH 5/6] ARM: i.MX: external NAND boot: Leave icache disabled
To: Sascha Hauer <s.hauer@pengutronix.de>, Oleksij Rempel <fishor@gmx.net>
Cc: Barebox List <barebox@lists.infradead.org>

On Mi, 2020-02-19 at 09:27 +0100, Sascha Hauer wrote:
> On Wed, Feb 19, 2020 at 07:23:09AM +0100, Oleksij Rempel wrote:
> > Am 18.02.20 um 16:37 schrieb Sascha Hauer:
> > > It seems running from the NFC SRAM doesn't work with the instruction
> > > cache enabled, it leads to corruptions on the i.MX27. We stumbled upon
> > > this earlier and the solution at that time was to disable the
> > > instruction cache in the NAND boot code. It is, however, more reliable
> > > to just not enable the instruction cache in the first place.
> > > This is not particularly nice as we have to ifdef this in generic code,
> > > duplicate arm_cpu_lowlevel_init(), or call arm_cpu_lowlevel_init() later
> > > when we are out of NFC SRAM. From the different bad solutions I chose
> > > to ifdef the instruction cache away. It will be enabled later in the
> > > common cache functions.
> > 
> > Hm... is it possible that we have similar speculation issues as on i.MX6UL? The CPU was speculating
> > in to IOMEM, caused cache poisoning/corruption and executed corrupted cache.
> 
> I don't know how much speculation an ARM9 processor does, but the end
> result looks very similar. via JTAG I can see that the memory matches
> my disassembly, just the CPU does something completely different.

Processors from this generation don't do much speculation at all. They
have a simple branch predictor, but wrong predictions are resolved via
a simple pipeline flush. I wouldn't expect a misspeculated instruction
to reach the load/store units on those simple cores.

It's much more likely that the I-cache simply issues AXI transactions
(most likely WRAP ones to implement critical word first) which the NAND
controller slave can't handle properly. In that case there is nothing
much we can do besides keeping the I$ disabled while we are running
from the NAND SRAM region.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
