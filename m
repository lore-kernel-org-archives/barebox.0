Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr0Yp-0008J7-R6
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 14:51:38 +0000
Date: Thu, 2 Jul 2020 16:51:23 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <310140614.6974.1593701483446@mail.vodafone.de>
In-Reply-To: <b095fd3c-7cda-1394-ba4d-6dd882606920@pengutronix.de>
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
 <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
 <429834562.114102.1593444620511@mail.vodafone.de>
 <aac7feb5-604f-2914-bfbd-75f0271401ad@pengutronix.de>
 <1874617325.108865.1593446626706@mail.vodafone.de>
 <21c2fc40-e385-b05e-6392-55ad219597da@pengutronix.de>
 <1036676243.111725.1593448425601@mail.vodafone.de>
 <CAOMZO5Cxa6Yk-uWUummRhNVQbLHvduCZQM9djxXNG683GQ4gRw@mail.gmail.com>
 <473645456.227984.1593597168773@mail.vodafone.de>
 <b095fd3c-7cda-1394-ba4d-6dd882606920@pengutronix.de>
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
Subject: Re: reset / watchdog on an imx7d soc
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi,

> On July 2, 2020 at 11:25 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> 
> On 7/1/20 11:52 AM, Giorgio Dal Molin wrote:
> > Hi,
> > > On June 29, 2020 at 6:39 PM Fabio Estevam <festevam@gmail.com> wrote:
> > > Hi Giorgio,
> >> On Mon, Jun 29, 2020 at 1:33 PM Giorgio Dal Molin
> >> <giorgio.nicole@arcor.de> wrote:
> >>
> >>> U-Boot configures the ddr3 with c code in its board code 'lowlevel.c'.
> >>> Looking at the code I noticed this special treatment:
> >>>
> >>> static void spl_dram_init(void)
> >>> {
> >>> ...
> >>> /*
> >>> * Make sure that both aresetn/core_ddrc_rstn and preset/PHY reset
> >>> * bits are set after WDOG reset event. DDRC_PRST can only be
> >>> * released when DDRC clock inputs are stable for at least 30
> >>> cycles.
> >>> */
> >>> writel(SRC_DDRC_RCR_DDRC_CORE_RST_MASK |
> >>> SRC_DDRC_RCR_DDRC_PRST_MASK, &src_regs->ddrc_rcr);
> >>> udelay(500);
> >>> ...
> >>>
> >>> This writel() set both reset bits, the DDRC_CORE (0x2) and the DDRC_PRST
> >>> (0x1) of the SRC
> >>> register 0x30391000.
> >>> Unfortunately, if I try also to set both bits in my DCD table then barebox
> >>> doesn't boot anymore;
> >>> I also tried to port the uboot spl_dram_init(void) to my barebox
> >>> lowlevel.c and I could eventually
> >>> boot barebox with an empty DCD but still adding the second bit
> >>> (SRC_DDRC_RCR_DDRC_PRST_MASK)
> >>> hangs the soc.
> >>
> >> Does it help if you try to apply this U-Boot commit to Barebox?
> >> https://gitlab.denx.de/u-boot/u-boot/-/commit/0e06d63d195670f5181958f43216d7106c05357f
> > I've made some more tests with the imx7d and found that the following DCD
> > sequence:
> > 
> > wm 32 0x30391000 0x00000003 // <== added this write
> > wm 32 0x30391000 0x00000002
> > ...
> > 
> > have an (unreliable) effect: I can now some time reboot barebox with a
> > 'reset'
> > command and after the reboot I can see the correct reset reason on the
> > serial console:
> > 
> > barebox 2020.06.0-00327-g712fde835-dirty #2 Wed Jul 1 10:21:11 CEST 2020
> > 
> > Board: Kontron SMARC-sAMX7
> > detected i.MX7d revision 1.3
> > i.MX reset reason POR (SRSR: 0x00000001)
> > ...
> > 
> > samx7: /
> > samx7: / reset 
> > 
> > barebox 2020.06.0-00327-g712fde835-dirty #2 Wed Jul 1 10:21:11 CEST 2020
> > 
> > Board: Kontron SMARC-sAMX7
> > detected i.MX7d revision 1.3
> > i.MX reset reason WDG (SRSR: 0x00000010)
> > mdio_bus: miibus0: probed
> > ...
> > 
> > samx7: /
> > 
> > 
> > This is the first time I see a reset working on my imx7 module with barebox;
> > the
> > problem is now that the reboot process is not reliable: it works a couple of
> > times
> > (not deterministic) and then it hangs the soc forcing me to push the reset
> > button.
> > 
> > As a possible fix I tried adding some 'nop' in the DCD around the two wm 32
> > to simulate
> > a delay but it makes no difference.
> 
> IIRC, you can poll an address for a set bit in the DCD table for N times. If
> you poll
> something that doesn't change, you can adjust N to simulate a delay..

I've already had the same idea, the 'check data' DCD 'command' has an optional
[count] argument (IMX7 dev. man. 6.6.7.2.2)...

To use it I had to patch the barebox tool 'scripts/imx/imx-image' to handle the
new parameter; now I can write something like:

wm 32 0x30340004 0x4F400005
wm 32 0x30391000 0x00000003 // SRC_DDRC_RCR: DDR Controller Reset Control -
enable reset
check 32 until_all_bits_set 0x30340004 0xffffffff 0xffff
wm 32 0x30391000 0x00000002 // SRC_DDRC_RCR: DDR Controller Reset Control -
enable reset

in my DCD.

Unfortunately it does not work, the soc does not boot at all. It could be that
the ROM code performs the 'count' dummy checks on my reg. (0x30340004), finds
them all unsuccessful and hangs the system at the end.
If I change the check to:

check 32 until_all_bits_set 0x30340004 0x0f000000 0xffff

than it boots normally (but the reset is unreliable).

Comparing again the u-boot and barebox code I've found another possible place
that effectively makes a difference: u-boot, after triggering the watchdog goes
directly in an endless loop:

void __attribute__((weak)) reset_cpu(ulong addr)
{
  struct watchdog_regs *wdog = (struct watchdog_regs *)WDOG1_BASE_ADDR;

  clrsetbits_le16(&wdog->wcr, WCR_WT_MSK, WCR_WDE);

  writew(0x5555, &wdog->wsr);
  writew(0xaaaa, &wdog->wsr);	/* load minimum 1/2 second timeout */
  while (1) {
	/*
	 * spin for .5 seconds before reset
	 */
  }
}


barebox does something similar to trigger the wdog but afterwards also calls
mdelay() and a printf() before falling in the endless loop:

static void imx21_soc_reset(struct imx_wd *priv)
{
...
	imxwd_write(priv, IMX21_WDOG_WCR, val);

	/* Two additional writes due to errata ERR004346 */
	imxwd_write(priv, IMX21_WDOG_WCR, val);
	imxwd_write(priv, IMX21_WDOG_WCR, val);

...

	mdelay(1000);

	hang(); // <== this also calls printf() before for(;;);


What I've found is that if I put the endless loop right at the end of
imx21_soc_reset(), after the imxwd_write's, then the reboot process becomes
reliable.

(The changes in the DCD with the addition of the write:

wm 32 0x30391000 0x00000003

at the beginning, before the write:

wm 32 0x30391000 0x00000002

are also essential, only the delay between the two seems to be not a big deal).

giorgio

> > giorgio
> > 
> > >
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> 
> -- 
> Pengutronix e.K. | |
> Steuerwalder Str. 21 | http://www.pengutronix.de/ |
> 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
> Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
