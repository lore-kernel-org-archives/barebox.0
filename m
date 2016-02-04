Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRDz6-0004gK-Bb
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 07:05:45 +0000
Date: Thu, 4 Feb 2016 08:05:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160204070521.GN4118@pengutronix.de>
References: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
 <1454516830-26387-3-git-send-email-s.hauer@pengutronix.de>
 <1454526086.18531.63.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454526086.18531.63.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] nvmem: Test it with fec/ocotp
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 03, 2016 at 07:01:03PM +0000, Trent Piepho wrote:
> On Wed, 2016-02-03 at 17:27 +0100, Sascha Hauer wrote:
> > While this generally works it reveals a shortcoming of the nvmem
> > framework: There's no way to specify the layout of the cell. For example
> > the MAC address stored in the OCOTP has another byte order than
> > the one stored in the IIM module on older i.MX SoCs. The FEC driver
> > shouldn't know about these differences, so it shouldn't be implemented
> > there. The OCOTP and IIM drivers are generic drivers used on different
> > SoCs aswell, so the differences shouldn't be encoded there either.
> > This leaves the device tree to put the differences in, but this simple
> > example already shows how complex such a binding probably becomes when
> > all kinds of different possibilities of byte orders shall be encoded.
> > What's missing is some kind of mapping driver that could be plugged
> > between a nvmem provider and its consumer where all these differences
> > can be handled.
> 
> >  
> >  &fec {
> >  	phy-handle = <&ethphy>;
> > +	nvmem-cells = <&fec_mac_address>;
> > +	nvmem-cell-names = "mac-address";
> >  
> >  	mdio {
> >  		#address-cells = <1>;
> > @@ -171,7 +173,14 @@
> >  };
> >  
> >  &ocotp {
> > +	#address-cells = <1>;
> > +	#size-cells = <1>;
> > +
> >  	barebox,provide-mac-address = <&fec 0x620>;
> > +
> > +	fec_mac_address: mac_address@88 {
> > +		reg = <0x88 0x8>;
> > +	};
> >  };
> 
> Why is there both a nvmem-cells = <&fec_mac_address> property in the fec
> and also a barebox,provide-mac-address = <&fec 0x620> property in the
> ocotp?  It seems like only one should need to point to the other.

Yes, finally only one is needed. The patch is for testing purposes only
at the moment.

> 
> 
> Here's an idea for an nvmem property for coping byteorder, etc.
> 
> 
> fec_mac_address: mac_address@88 {
>         reg = <0x88 0x8>;
>         map = [1 2 3 4 5 6 0 0];  // Leftmost octet first order
>         map = [6 5 4 3 2 1 0 0];  // Rightmost octet first order
> 
>         // Leftmost first, but with opposite byte order within each word
>         map = [4 3 2 1 0 0 6 5];
> 
>         // Only extension is stored
>         reg = <0x88 4>; // Just four bytes are used
>         map = [4 5 6 0];
> };
> 
> The idea is the map property lists the destination location of each byte
> in the reg range.  The first item in map is the location of the first
> byte in the range, a value of one (not zero) indicates it should be the
> first byte in the output, 2 the second byte, and so on.  0 means the
> byte isn't used.  It's pretty common to use use six bytes inside a 8
> byte field for a mac.

I guess that would work for this case. The binding as it is documented
currently allows a 'bits' property:

bits:	Is pair of bit location and number of bits, which specifies offset
	in bit and number of bits within the address range specified by
	reg property. Offset takes values from 0-7.

Both 'map' and 'bits' combined already make a quite confusing binding.

Still it's easy to think of situations where this is still not enough.
Think of checksums or things like "The MAC is valid when this bit is
set" or the case you mention above when only the lower bytes of the MAC
address are stored in the nvmem. I think in all these situations a
purely descriptive binding is not enough.

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
