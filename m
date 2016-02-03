Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR2gB-0006or-33
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 19:01:28 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 3 Feb 2016 19:01:03 +0000
Message-ID: <1454526086.18531.63.camel@rtred1test09.kymeta.local>
References: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
 <1454516830-26387-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516830-26387-3-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <A51927767BD6174EB2BF1F55F5BDEA4D@kymetacorp.com>
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
Subject: Re: [PATCH 2/2] nvmem: Test it with fec/ocotp
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, 2016-02-03 at 17:27 +0100, Sascha Hauer wrote:
> While this generally works it reveals a shortcoming of the nvmem
> framework: There's no way to specify the layout of the cell. For example
> the MAC address stored in the OCOTP has another byte order than
> the one stored in the IIM module on older i.MX SoCs. The FEC driver
> shouldn't know about these differences, so it shouldn't be implemented
> there. The OCOTP and IIM drivers are generic drivers used on different
> SoCs aswell, so the differences shouldn't be encoded there either.
> This leaves the device tree to put the differences in, but this simple
> example already shows how complex such a binding probably becomes when
> all kinds of different possibilities of byte orders shall be encoded.
> What's missing is some kind of mapping driver that could be plugged
> between a nvmem provider and its consumer where all these differences
> can be handled.

>  
>  &fec {
>  	phy-handle = <&ethphy>;
> +	nvmem-cells = <&fec_mac_address>;
> +	nvmem-cell-names = "mac-address";
>  
>  	mdio {
>  		#address-cells = <1>;
> @@ -171,7 +173,14 @@
>  };
>  
>  &ocotp {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
>  	barebox,provide-mac-address = <&fec 0x620>;
> +
> +	fec_mac_address: mac_address@88 {
> +		reg = <0x88 0x8>;
> +	};
>  };

Why is there both a nvmem-cells = <&fec_mac_address> property in the fec
and also a barebox,provide-mac-address = <&fec 0x620> property in the
ocotp?  It seems like only one should need to point to the other.


Here's an idea for an nvmem property for coping byteorder, etc.


fec_mac_address: mac_address@88 {
        reg = <0x88 0x8>;
        map = [1 2 3 4 5 6 0 0];  // Leftmost octet first order
        map = [6 5 4 3 2 1 0 0];  // Rightmost octet first order

        // Leftmost first, but with opposite byte order within each word
        map = [4 3 2 1 0 0 6 5];

        // Only extension is stored
        reg = <0x88 4>; // Just four bytes are used
        map = [4 5 6 0];
};

The idea is the map property lists the destination location of each byte
in the reg range.  The first item in map is the location of the first
byte in the range, a value of one (not zero) indicates it should be the
first byte in the output, 2 the second byte, and so on.  0 means the
byte isn't used.  It's pretty common to use use six bytes inside a 8
byte field for a mac.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
