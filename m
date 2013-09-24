Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOVwA-00063H-AZ
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 16:58:11 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5D6B710203DC
 for <barebox@lists.infradead.org>; Tue, 24 Sep 2013 18:32:14 +0200 (CEST)
Date: Tue, 24 Sep 2013 18:33:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130924163332.GN31585@ns203013.ovh.net>
References: <CAO-21LNqyD5-wMWC+Xy9grkxzb9bVRqw+pE7gnJJ_f0jog=izw@mail.gmail.com>
 <20130924073928.GC30088@pengutronix.de>
 <CAO-21LNPjMd_zeLfz+xf3oMecfxsPGpsnYvd3S45MG_bi1aNtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-21LNPjMd_zeLfz+xf3oMecfxsPGpsnYvd3S45MG_bi1aNtQ@mail.gmail.com>
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
Subject: Re: Porting to a new board
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: barebox@lists.infradead.org

On 10:00 Tue 24 Sep     , Allen Kennedy Jr. wrote:
> The dhcp command gives:
> "warning: No MAC address set. Using random address 62:1C:8B:DF:6D:4D"
> Then the device console hangs, Ctrl-C does nothing.  Breaking into it
> via JTAG, I see
> the PC and LR are off in the weeds and the stack and registers
> contains nothing of
> indication as to where it went awry.
> 
> md 0x1002b000 does show the FEC registers:
>  md 0x1002b000
> 1002b000: 00000600 00000000 00000000 00000600                ................
> 1002b010: 00000000 00000000 00000000 00000000                ................
> 1002b020: 00000600 f0000000 00000600 00000600                ................
> 1002b030: 00000600 00000600 00000600 00000600                ................
> 1002b040: 6f86782d 00000018 00060006 00040006                -x.o............
> 1002b050: 6f86782d 00000018 000a0006 00080006                -x.o............
> 1002b060: 00000000 c0000000 fffffffd fffffffd                ................
> 1002b070: fffffffd fffffffd fffffffd fffffffd                ................
> 1002b080: 000b0000 05ee0004 19000000 84680868                ............h.h.
> 1002b090: ffffffff 00000000 10008208 33428006                ..............B3
> 1002b0a0: 00c40000 ffffffff ffffffff ffffffff                ................
> 1002b0b0: ffffffff ffffffff ffffffff ffffffff                ................
> 1002b0c0: 00000000 00000000 00000000 00000000                ................
> 1002b0d0: 02b20000 91cc3d09 00000000 0180c200                .....=..........
> 1002b0e0: 00010000 068f6c9e b50d8808 00010020                .....l...... ...
> 1002b0f0: 00000000 00000000 00000000 00000000                ................
> 
> 
> iomem output:
>  iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x10002000 - 0x10002fff (size 0x00001000) imx21-wdt0
>   0x10003000 - 0x100030ff (size 0x00000100) imx1-gpt0
>   0x1000a000 - 0x1000afff (size 0x00001000) imx21-uart0
>   0x10015000 - 0x100150ff (size 0x00000100) imx1-gpio0
>   0x10015100 - 0x100151ff (size 0x00000100) imx1-gpio1
>   0x10015200 - 0x100152ff (size 0x00000100) imx1-gpio2
>   0x10015300 - 0x100153ff (size 0x00000100) imx1-gpio3
>   0x10015400 - 0x100154ff (size 0x00000100) imx1-gpio4
>   0x10015500 - 0x100155ff (size 0x00000100) imx1-gpio5
>   0x10027000 - 0x10027fff (size 0x00001000) imx27-ccm
>   0x10028000 - 0x10028fff (size 0x00001000) imx_iim
>   0x1002b000 - 0x1002bfff (size 0x00001000) imx27-fec
>   0xa0000000 - 0xa7ffffff (size 0x08000000) ram0
>     0xa7a00000 - 0xa7dfffff (size 0x00400000) malloc space
>     0xa7e00000 - 0xa7e1afdf (size 0x0001afe0) barebox
>     0xa7e1afe0 - 0xa7e20aaf (size 0x00005ad0) barebox data
>     0xa7e20ab0 - 0xa7e24f4b (size 0x0000449c) bss
>     0xa7ff8000 - 0xa7ffffff (size 0x00008000) stack
>   0xd8001000 - 0xd8001fff (size 0x00001000) imx27-esdctl
> 
> This seems valid to me... does anyone see anything missing?
> 
> As to putting in some debug statements in the FEC driver, I put an
> enter and exit line in each function.  Startup gave me this:
> fec_probe enter
> fec_alloc_receive_packets enter
> fec_alloc_receive_packets exit
> fec_init enter
> fec_init exit
> mdio_bus: miibus0: probed
> fec_probe exit 0
> 
> So that looks good I would think.
> 
> The DHCP command as follows:
> dhcp<enter>
> warning: No MAC address set. Using random address 12:D4:85:77:78:E4
> fec_set_hwaddr enter
> fec_set_hwaddr exit
> fec_open enter
> fec_miibus_read enter
> fec_miibus_read exit
> <... more reads ... >
> fec_miibus_read enter
> fec_miibus_read exit
> fec_miibus_write enter
> fec_miibus_write exit
> fec_miibus_read enter
> fec_miibus_read exit
> fec_miibus_read enter
> fec_miibus_read exit
> fec_miibus_write enter
> fec_miibus_write exit
> fec_miibus_read enter
> fec_miibus_read exit
> fec_miibus_write enter
> fec_miibus_write exit
> fec_rbd_init enter
> fec_rbd_init exit
> fec_tbd_init enter
> fec_tbd_init exit
> fec_rx_task_enable enter
> fec_rx_task_enable exit
> fec_open exit
> fec_miibus_read enter
> fec_miibus_read exit
> 
> this is followed by many more reads, until the output garbles:
> fec_miibus_read exit
> fec_miibus_read enter
> fec_miibus_read exit

are you sure about the power of the board?

because it seems a clock change otherwise

Best Regards,
J.
> miiear
> miiea
> iibad
> iibad
> fibud
> fibud e
> febus us_enfeus_exiecs_rntec_s_xitc__retec_m_reit_mireaer_miret
> mieadr
> miiea
> iibad
> iibad
> ibud
> fibud
> febus euenfecusexiec_s_nteec_s_xitc__reterc__reit
> _mreaer
> _mreat
> mieadr
> miead
> iibad
> 
> and the chip ends up in the weeds.
> 
> Any thoughts?
> 
> 
> On Tue, Sep 24, 2013 at 2:39 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Sep 23, 2013 at 04:47:19PM -0500, Allen Kennedy Jr. wrote:
> >> > What's the output of some network command, like for example 'dhcp'?
> >>
> >> This hangs the chip.
> >
> > This shouldn't happen. No reaction from the board at all? Does ctrl-c
> > work? You could add some debug messages to the FEC driver to see where
> > it hangs.
> >
> > One situation where a board might hang is when the clock is disabled,
> > but I don't see how this can happen since it's explicitly enabled in
> > arch/arm/mach-imx/clk-imx27.c
> >
> > What's the output of 'md 0x1002b000'? Does it show the FEC registers
> > or does it hang the board aswell? The output of 'iomem' might also
> > help.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
