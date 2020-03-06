Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACbh-0007Ut-Qn
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 13:01:39 +0000
Date: Fri, 6 Mar 2020 14:01:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200306130136.GZ3335@pengutronix.de>
References: <2105504494.1423.1583396775377@mail.vodafone.de>
 <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
 <1062353935.2358.1583401816499@mail.vodafone.de>
 <20200305132415.GT3335@pengutronix.de>
 <609291452.5069.1583416465036@mail.vodafone.de>
 <fe1904011adc47b378e81b271c8e9881f1f097e9.camel@pengutronix.de>
 <6bea1e40-5d34-719d-e533-e5327a172488@arcor.de>
 <1981489026.11927.1583484102341@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1981489026.11927.1583484102341@mail.vodafone.de>
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
Subject: Re: barebox image for an spi flash (like m25p0) on an imx7 soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

On Fri, Mar 06, 2020 at 09:41:42AM +0100, Giorgio Dal Molin wrote:
> Hi all,
> 
> I've just double checked the reg=val entries I have in my DTD for the imx7d
> but could not find anything wrong with it, it is very similar to the
> 'arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg'.
> 
> What I don't understand is the absolute address of the DTD present at offset 0x40c:
> in my barebox image it is 0x8000042c: when the rom code in the imx7 reads the image
> from the qspi flash it must transfer it to the OCRAM (0x00910000) because it is
> the only memory that works at this early stage of the boot process; but then, when it
> searches for the DCD it finds its absolute address, at offset 040c, to be 0x8000042c;
> but this address is on the DDR space that is still not configured and so cannot be accessed.
> 
> Here is a hex dump of the barebox image I'm using:
> 
> ...
> 0400: 0xd1 0x00 0x20 0x40 0x00 0x10 0x00 0x80 0x00 0x00 0x00 0x00 0x2c 0x04 0x00 0x80 
> 0410: 0x20 0x04 0x00 0x80 0x00 0x04 0x00 0x80 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> 0420: 0x00 0x00 0x00 0x80 0x00 0x00 0x07 0x00 0x00 0x00 0x00 0x00 0xd2 0x01 0xbc 0x40 
> 0430: 0xcc 0x01 0x6c 0x04 0x30 0x34 0x00 0x04 0x4f 0x40 0x00 0x05 0x30 0x39 0x10 0x00 
> 0440: 0x00 0x00 0x00 0x02 0x30 0x7a 0x00 0x00 0x01 0x04 0x00 0x01 0x30 0x7a 0x01 0xa0 

This is quite unreadable. Could you post the output of 'md -s /dev/m25p0 1k+1k' ?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
