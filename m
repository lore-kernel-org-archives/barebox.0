Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vlele-00029v-55
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 13:02:59 +0000
Date: Wed, 27 Nov 2013 14:02:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131127130236.GX24559@pengutronix.de>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
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
Subject: Re: FW: Barebox on Karo TX25
To: John Parker <John.Parker@lucyautomation.co.uk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi John,

On Wed, Nov 27, 2013 at 11:28:42AM +0000, John Parker wrote:
> Hi all
> 
> I've spent a day trying to get barebox onto a Karo TX25. I've trawled the lists and documentation but seem to be missing something fundamental.
> 
> I need to replace Redboot with barebox and I know that barebox will need 512k (256k + 2 more blocks for env) rather than the 256k partition that Redboot has.
> 
> Redboot is version "Ka-Ro 2009-06-10" as supplied with the TX25.
> 
> The problem is that when I try to delete and recreate the Redboot partition, Redboot says no becays it is reserved, even though I'm running in ROMRAM mode.
> 
> I know the tx25 is a supported configuration because there is a defconfig for it.
> 
> Is it documented anywhere exactly how to replace redboot with barebox?
> 
> What magic am I missing?

redboot is still a mystery to me and I try to avoid it. Let's try with
USB boot instead which has the advantage that you can erase your NAND
without risking to brick your board.

Please apply the two patches I just sent as answer to your mail. You can
then:

- make tx25stk5_defconfig
- make menuconfig, enable CONFIG_ARCH_IMX_USBLOADER
- make
- generate a imx-image:
  scripts/imx/imx-image -c \
	arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg -f \
	barebox-flash-image -o barebox.imx
- bring your board into USB boot mode (the baseboard should have a
  jumper to do this)
- connect to a host with a mini USB cable. 'lsusb' should show:
  Bus 001 Device 014: ID 15a2:003a Freescale Semiconductor, Inc.
- do: ./scripts/imx/imx-usb-loader barebox.imx

barebox should show up on the serial port.

Next step would be to write barebox to nand, but we can talk about this
once you've got barebox running.

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
