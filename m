Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtCek-000671-RS
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 05:57:43 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 4FA41FFB5F4
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 07:49:25 +0200 (CEST)
Date: Tue, 16 Aug 2011 07:29:53 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110816052953.GG32705@game.jcrosoft.org>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
	<20110815091406.GD32705@game.jcrosoft.org>
	<20110815155038.GU31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110815155038.GU31404@pengutronix.de>
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
Subject: Re: [PATCH] parent fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:50 Mon 15 Aug     , Sascha Hauer wrote:
> On Mon, Aug 15, 2011 at 11:14:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:46 Mon 15 Aug     , Sascha Hauer wrote:
> > > Hi,
> > > 
> > > We have a nice devinfo command which can print the devices as a tree.
> > > Let's make more use of it and make spi/network/console devices children
> > > of the corresponding hardware devices.
> > > Also, when a file under /dev/ is associated to a device, print the
> > > start and end with the information.
> > > 
> > > On a i.MX51 babbage board we change from:
> > > 
> > > devices:
> > > |----imx_serial0
> > > |----cs0
> > > |----mem0 (ram0)
> > > |----imx_iim0 (imx_iim_bank0, imx_iim_bank1, imx_iim_bank2, imx_iim_bank3, imx_iim_bank4, imx_iim_bank5, imx_iim_bank6, imx_iim_bank7)
> > > |----ramfs0
> > > |----devfs0
> > > |----mem1 (defaultenv)
> > > |----mem2 (mem)
> > > |----fec_imx0
> > > |----miidev0 (phy0)
> > > |----eth0
> > > |----imx-esdhc0
> > > |----mci0
> > > |----disk0
> > > |----imx_spi0
> > > |----mc13892-spi0 (mc13892)
> > > 
> > > to this:
> > > 
> > > devices:
> > > `---- imx_serial0
> > >      `---- cs0
> > > `---- mem0
> > >      `---- 0x00000000-0x1fffffff: /dev/ram0
> > > `---- imx_iim0
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
> > >      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
> > > `---- ramfs0
> > > `---- devfs0
> > > `---- mem1
> > >      `---- 0x00000000-0x00001e08: /dev/defaultenv
> > > `---- mem2
> > >      `---- 0x00000000-0xfffffffe: /dev/mem
> > > `---- fec_imx0
> > >      `---- miidev0
> > >           `---- 0x00000000-0x0000003f: /dev/phy0
> > >      `---- eth0
> > > `---- imx-esdhc0
> > >      `---- mci0
> > >           `---- disk0
> > > `---- imx_spi0
> > >      `---- mc13892-spi0
> > >           `---- 0x00000000-0x000000ff: /dev/mc13892
> > can we split tehem by bus?
> 
> We can add the bus information above, but I think splitting it by bus
> does not look very nice. Also, at the moment barebox does not know which
> busses exist since they are not explicitely registered.
I push some patch that I did yesterday night
to add full bus support to barebox

It will help to add pci and mii device/driverr support to have really phy
device need by at91rm9200ek as example

the output is nice

PCI: register_pci_controller() 


barebox 2011.08.0-00217-gb2fe734-dirty (Aug 16 2011 - 03:05:33)

Board: qemu malta
rtl8139_probe()
found rtl8139 (rev 20) at 90: 0200 (base=b1000000)
rtl8139_init_dev()
rtl8139_chip_reset()
eth@eth0: got MAC address from EEPROM: 52:54:00:12:34:56
registered netconsole as cs1
Malloc space: 0xa0400000 -> 0xa0800000 (size  4 MB)
Open /dev/env0 No such file or directory
running /env/bin/init...
not found
barebox:/ devinfo 
devices:
`---- platform
     `---- serial_ns165500
          `---- cs0
     `---- ramfs0
     `---- devfs0
     `---- mem0
          `---- 0x00000000-0xfffffffe: /dev/mem
     `---- cs1
`---- pci_bus0
     `---- pci0
     `---- pci1
     `---- pci2
     `---- pci3
     `---- pci4
     `---- pci5
          `---- miidev0
               `---- 0x00000000-0x0000003f: /dev/phy0
          `---- eth0

drivers:
serial_ns16550
     ramfs
     devfs
       fat
    miidev
 cfi_flash
rtl8139_eth
       mem
    cramfs
barebox:/

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
