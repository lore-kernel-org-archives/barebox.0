Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dJEJI-0003j7-7C
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 07:26:23 +0000
References: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
 <20170609061505.3tnirp55o5rfpbra@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <8b1cafb3-8e87-8ce8-e4e1-42d28f82d1b0@eurekelettronica.it>
Date: Fri, 9 Jun 2017 09:25:56 +0200
MIME-Version: 1.0
In-Reply-To: <20170609061505.3tnirp55o5rfpbra@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New Board i.MX6 Dual Lite based
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/09/2017 08:15 AM, Sascha Hauer wrote:
> Hi Gianluca,
>
> On Thu, Jun 08, 2017 at 05:06:46PM +0200, gianluca wrote:
>> Hello,
>> I would like to know if somebody has never faced a strange issue using
>> Barebox (in detail the version I am actually using is 2017.02).
>>
>> After running the the flash-header for memory using the xlsx file from
>> FreeScale to setup the memory controller for iMX6 Dual Lite, the boot from
>> the serial console is saying:
>>
>>
>>> barebox 2017.02.0 #1 Thu Jun 8 15:51:17 CEST 2017
>>>
>>>
>>> Board: Eurek EK360 i.MX6DL
>>> detected i.MX6 DualLite revision 1.3
>>> mdio_bus: miibus0: probed
>>> imx-usb 2184000.usb: Cannot get phy: Function not implemented
>>> imx-usb 2184000.usb: probe failed: Function not implemented
>>> imx-usb 2184200.usb: Cannot get phy: Function not implemented
>>> imx-usb 2184200.usb: probe failed: Function not implemented
>>
>> this is pretty strange... Any hint? The device-tree for usb is like that:
>
> You probably have CONFIG_GENERIC_PHY disabled. In this case
> of_phy_get_by_phandle() is a static inline returning -ENOSYS.
>
>>

Yes. It was disabled in the config.

> barebox@Eurek EK360 i.MX6DL:/ usb -t
> usb: USB: scanning bus for devices...
> usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> usb: 1 USB Device(s) found
>   1 ID 0000:0000
>   |  u-boot EHCI Host Controller
>   |
>   +-804763968 ID 6c61:3000

Now it works.


>>> 		
>>> imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
>>> imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
>>> imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
>>> imx-ipuv3 2400000.ipu: IPUv3H probed
>>> netconsole: registered as netconsole-1
>>> malloc space: 0x2ff7b920 -> 0x4fef723f (size 511.5 MiB)
>>> environment load /dev/env0: No such file or directory
>>> Maybe you have to create the partition.
>>> running /env/bin/init...
>>> Running boot from uSD/MMC or USB...
>>> mmc2: detected SD card version 2.0
>>> mmc2: registered mmc2
>>> ext4 ext40: EXT2 rev 1, inode_size 128
>
> mmc2 is detected and registered because you are booting from it, but
> mmc3 is not. Try 'detect mmc3' or 'detect -a' on the command line.
>

It was missing a mmc3.probe=1 in the init scripts. Now both are 
recognized correctly.

> barebox@Eurek EK360 i.MX6DL:/ detect mmc3
> mmc3: detected MMC card version 4.41
> mmc3: registered mmc3.boot0
> mmc3: registered mmc3.boot1
> mmc3: registered mmc3
>
>      `-- eth0
>          `-- 2194000.usdhc
>             `-- mmc1
>          `-- 2198000.usdhc
>             `-- mmc2
>                `-- 0x00000000-0xefffffff (   3.8 GiB): /dev/mmc2
>                `-- 0x00400000-0x00bfffff (     8 MiB): /dev/mmc2.0
>                `-- 0x00c00000-0x02bfffff (    32 MiB): /dev/mmc2.1
>                `-- 0x02c00000-0xefffffff (   3.7 GiB): /dev/mmc2.2
>                `-- ext40
>          `-- 219c000.usdhc
>             `-- mmc3
>                `-- 0x00000000-0x001fffff (     2 MiB): /dev/mmc3.boot0
>                `-- 0x00000000-0x001fffff (     2 MiB): /dev/mmc3.boot1
>                `-- 0x00000000-0xe4ffffff (   3.6 GiB): /dev/mmc3
>


>>> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
>>> ek360_read_eeprom :Error on reading eeprom @ 0
>>> ek360_read_eeprom :Error on reading bytes.
>>> ek360_detect_hw :** ERROR on READ EEPROM BOARD ret: -1
>>> Hit CTRL-C key to stop autoboot:  1
>>
>> Another issue is the i2c bus.
>
> You should measure the I2C data line with an oscilloscope. It could be
> that the line is constantly low. This can happen if the pullup resistor
> is missing (Pinmux?). Also in rare cases this can happen when a board is
> resetted in the middle of a I2C transfer.
>

Now I am trying to extend the I2C Lines outside the board for a 
oscilloscope and/or a Saleae Logic Bus Analyzer. As soon as I find the 
solution or not I will keep you informed.

Anyway in the config there is both GPIO BASED I2C DRIVER and Platform 
iMX Driver. I tried to disable the GPIO Based but it does not work.

Now I am thinking about some pulled-low/high line by some chips in the 
board. I will see.

Thanks!
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
