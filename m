Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQK00-0003mR-4Q
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 19:18:56 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 1 Feb 2016 19:18:32 +0000
Message-ID: <1454354334.18531.16.camel@rtred1test09.kymeta.local>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
 <20160201101007.GA4118@pengutronix.de>
In-Reply-To: <20160201101007.GA4118@pengutronix.de>
Content-Language: en-US
Content-ID: <0ECE472694DF1941B3B89D27C77C7047@kymetacorp.com>
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
Subject: Re: [RFC 1/2] misc: Add MAC address mapper "driver"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2016-02-01 at 11:10 +0100, Sascha Hauer wrote:
> On Sun, Jan 31, 2016 at 09:57:13PM -0800, Andrey Smirnov wrote:
> > Add Barebox specific device tree provisions to allow specifying MAC
> > addresses for network interfaces via device tree.
> > 
> > +
> > +Child node's required properties:
> > +* ``network-interface``: phandle corresponding to network interface
> > +* ``mac-location``: a pair of phandle to 'cdev' containing MAC address
> > +  and offset withing that 'cdev'
> > +
> > +Example::
> > +
> > +  mac-address-map {
> > +	compatible = "barebox,mac-address-map";
> > +	nic@0 {
> > +		network-interface = <&fec>;
> > +		mac-location = <&ocotp 0x88>;
> > +	};
> > +  };
> 
> I wonder if the correct way to do this wouldn't be nvmem, see
> Documentation/devicetree/bindings/nvmem/nvmem.txt in the Kernel.
> This would mandate a binding like:
> 
> 	ocotp {
> 		mac1: mac@88 {
> 			reg = <0x88 0x6>;
> 		};
> 	};
> 
> 	&fec {
> 		nvmem-cells = <&mac1>;
> 		nvmem-cell-names = "mac-address";
> 	};

The way imx28 works in the kernel is to just store the extension in the
OCOTP.  The OUI is determined from the board's compatible property and a
hard coded table in the kernel.  See arch/arm/mach-mxs/mach-mxs.c

While, IMHO, the hard coded table is ugly, and should have died long
ago, there are board that don't have the entire mac burned into OCOTP.
It seems like neither of these bindings could support a board like this.

If you look at Documentation/devicetree/bindings/c6x/dscr.txt, there is
already a binding for a different system of loading a MAC from OCOTP:
- ti,dscr-mac-fuse-regs
    MAC addresses are contained in two registers. Each element of a MAC address
    is contained in a single byte. This property has two tuples. Each tuple has
    a register offset and four cells representing bytes in the register from
    most significant to least. The value of these four cells is the MAC byte
    index (1-6) of the byte within the register. A value of 0 means the byte
    is unused in the MAC address.

For a board I did some time ago I reused this property but extended it
slightly to allow N tuples instead of just 2.  Example for above:

        &fec {
                mac-fuse-regs = <0x88 0x01020304
                                 0x8c 0x05060000>;
        };

Example for mxs style partial mac in OCOTP:
        &fec {
                /* OUI is not in OCOTP, just extension */
                mac-address = <0x11 0x22 0x33 0 0 0>; 

                mac-fuse-regs = <0x00 0x00040506>;
        };

Example for two controllers that share an OUI:
        &fec1 {
                mac-fuse-regs = <0x00 0x00010203   /* OUI */
                                 0x80 0x00040506>; /* Extension */
        };
        &fec2 {
                mac-fuse-regs = <0x00 0x00010203   /* OUI */
                                 0x84 0x00040506>; /* Extension */
        };

This doesn't allow the MAC to come from an EEPROM.  I think it would be
nice if the same system could support chips with OCOTP and also EEPROMS
or other storage systems.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
