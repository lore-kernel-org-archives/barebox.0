Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4whx-0006X8-Gk
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 19:39:42 +0000
Received: by labko7 with SMTP id ko7so18491373lab.2
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2015 12:39:18 -0700 (PDT)
Date: Tue, 16 Jun 2015 22:45:34 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150616224534.65cf88031ca4cfb4a5329595@gmail.com>
In-Reply-To: <1434482496.2184.9.camel@lynxeye.de>
References: <1433879479-11300-1-git-send-email-antonynpavlov@gmail.com>
 <1434481487.2184.5.camel@lynxeye.de>
 <20150616222204.e62fcf9d7ba5152e480de395@gmail.com>
 <1434482496.2184.9.camel@lynxeye.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] PCI: skip pci host bridge as early as possible
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, 16 Jun 2015 21:21:36 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Am Dienstag, den 16.06.2015, 22:22 +0300 schrieb Antony Pavlov:
> > On Tue, 16 Jun 2015 21:04:47 +0200
> > Lucas Stach <dev@lynxeye.de> wrote:
> > =

> > > Hi Antony,
> > > =

> > > I don't think ignoring the host bridge is the right thing to do in the
> > > first place and unfortunately I'm unable to reproduce your problem.
> > =

> > What is your qemu version?
> > =

> QEMU emulator version 2.1.3 (qemu-2.1.3-7.fc21)

Hmm, 2.1.3 is from "old and stable" branch.

I use latest qemu release from debian:

$ qemu-system-mips --version
QEMU emulator version 2.3.0 (Debian 1:2.3+dfsg-6a), Copyright (c) 2003-2008=
 Fabrice Bellard

AFAIR qemu-2.2.x has the same qemu malta PCI problem.

> =

> > =

> > Anyway linux PCI initialization code differ from barebox PCI initializa=
tion code:
> >   linux code tries to revert PBAR contents after determening PBAR sizes.
> > =

> > Here is the patch that adds linux PCI setup behaviour to barebox:
> > =

> Does this fix your problem?

no.

> =

> Linux puts back the previous content as it tries to keep as much as
> possible from a potentially existing firmware configuration. It doesn't
> make too much sense in a bootloader that is essentially the firmware
> itself. But if it fixes the problem you are seeing we might still
> include something like that.
> =

> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > index 7953c55..b60bd5b 100644
> > --- a/drivers/pci/pci.c
> > +++ b/drivers/pci/pci.c
> > @@ -141,9 +141,12 @@ static void setup_device(struct pci_dev *dev, int =
max_bar)
> >  =

> >  	for (bar =3D 0; bar < max_bar; bar++) {
> >  		resource_size_t last_addr;
> > +		u32 l;
> >  =

> > +		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &l);
> >  		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe=
);
> >  		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
> > +		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, l);
> >  =

> >  		if (mask =3D=3D 0 || mask =3D=3D 0xffffffff) {
> >  			pr_debug("pbar%d set bad mask\n", bar);
> > =

> > =

> > =

> > > Am Dienstag, den 09.06.2015, 22:51 +0300 schrieb Antony Pavlov:
> > > > The barebox' pci_scan_bus() function first tries to setup GT64120
> > > > host bridge BARs but fails:
> > > > =

> > > >     barebox:/ dmesg
> > > >     pci: pci_scan_bus for bus 0
> > > >     pci:  last_io =3D 0x18000000, last_mem =3D 0x10000000, last_mem=
_pref =3D 0x00000000
> > > >     pci: class =3D 00000600, hdr_type =3D 00000000
> > > >     pci: 00:00 [11ab:4620]
> > > >     pci: pbar0: mask=3D00000008 NP memory 0 bytes
> > > >     pci: pbar1: mask=3D01000008 NP memory -16777216 bytes
> > > >     pci: pbar2: mask=3D1c000000 NP memory -469762048 bytes
> > > >     pci: BAR does not fit within bus np-mem res
> > > >     pci: skip pci host bridge
> > > > =

> > > I can reproduce up until here. But the messages suggest that barebox =
is
> > > in fact skipping the BAR configuration, so this isn't really a proble=
m.
> > > =

> > > This might be improved by checking for invalid BAR sizes before trying
> > > to fit them.
> > > =

> > > > so PCI host bridge and all discovered devices are misconfigured, e.=
g.
> > > > miitool can't find rtl8139 emulated NIC tranceiver:
> > > > =

> > > >     rtl8139_eth pci-10ec:8139.0: rtl8139 (rev 20) at 90: 0200 (base=
=3D8f000000)
> > > >     rtl8139_eth pci-10ec:8139.0: enabling bus mastering
> > > >     ...
> > > >     barebox:/ miitool
> > > >     miibus0: registered phy as /dev/phy0
> > > >     phy0: eth0:   No MII transceiver present!.
> > > > =

> > > =

> > > Works for me:
> > > =

> > > barebox:/ miitool
> > > miibus0: registered phy as /dev/phy0
> > > phy0: eth0: no autonegotiation, 100baseTx-FD flow-control, link ok
> > > =

> > > > Here is linux-3.19 GT64120 host bridge discovery log:
> > > > =

> > > >     PCI host bridge to bus 0000:00
> > > >     pci_bus 0000:00: root bus resource [mem 0x10000000-0x17ffffff]
> > > >     pci_bus 0000:00: root bus resource [io  0x1000-0x1fffff]
> > > >     pci_bus 0000:00: No busn resource found for root bus, will use =
[bus 00-ff]
> > > >     pci 0000:00:00.0: [Firmware Bug]: reg 0x14: invalid BAR (can't =
size)
> > > >     pci 0000:00:00.0: [Firmware Bug]: reg 0x18: invalid BAR (can't =
size)
> > > >     pci 0000:00:00.0: [Firmware Bug]: reg 0x1c: invalid BAR (can't =
size)
> > > >     pci 0000:00:00.0: [Firmware Bug]: reg 0x20: invalid BAR (can't =
size)
> > > >     pci 0000:00:00.0: [Firmware Bug]: reg 0x24: invalid BAR (can't =
size)
> > > > =

> > > > The appropriate lspci -v log:
> > > > =

> > > >     00:00.0 Host bridge: Marvell Technology Group Ltd. GT-64120/641=
20A/64121A System Controller (rev 10)
> > > >             Subsystem: Red Hat, Inc Device 1100
> > > >             Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASn=
oop- ParErr- Stepping- SERR- FastB2B- DisINTx-
> > > >             Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=3Dmedi=
um >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> > > >             Interrupt: pin A routed to IRQ 0
> > > >             Subsystem: Red Hat, Inc Device 1100
> > > >             Flags: medium devsel
> > > >             Memory at <unassigned> (32-bit, prefetchable) [disabled]
> > > >             Memory at <ignored> (32-bit, prefetchable) [disabled]
> > > >             Memory at <ignored> (32-bit, non-prefetchable) [disable=
d]
> > > >             Memory at <ignored> (32-bit, non-prefetchable) [disable=
d]
> > > >             Memory at <ignored> (32-bit, non-prefetchable) [disable=
d]
> > > >             I/O ports at <ignored> [disabled]
> > > > =

> > > > It looks like qemu-system-mips does not fully emulates GT64120 host
> > > > bridge BARs so skipping host bridge BAR's setup fixes qemu-malta
> > > > problem. But can we skip host bridge BAR's setup for other targets?
> > > > =

> > > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > > ---
> > > >  drivers/pci/pci.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > =

> > > > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > > > index 3a0e7a5..7953c55 100644
> > > > --- a/drivers/pci/pci.c
> > > > +++ b/drivers/pci/pci.c
> > > > @@ -331,6 +331,11 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
> > > >  		pr_debug("%02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
> > > >  		    dev->vendor, dev->device);
> > > >  =

> > > > +		if (class =3D=3D PCI_CLASS_BRIDGE_HOST) {
> > > > +			pr_debug("skip pci host bridge\n");
> > > > +			continue;
> > > > +		}
> > > > +
> > > >  		switch (hdr_type & 0x7f) {
> > > >  		case PCI_HEADER_TYPE_NORMAL:
> > > >  			if (class =3D=3D PCI_CLASS_BRIDGE_PCI)
> > > > @@ -391,11 +396,6 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
> > > >  			       bus->number, dev->devfn, dev->vendor, dev->device, class=
, hdr_type);
> > > >  			continue;
> > > >  		}
> > > > -
> > > > -		if (class =3D=3D PCI_CLASS_BRIDGE_HOST) {
> > > > -			pr_debug("skip pci host bridge\n");
> > > > -			continue;
> > > > -		}
> > > >  	}
> > > >  =

> > > >  	/*
> > > =

> > > =

> > =

> > =

> =

> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
