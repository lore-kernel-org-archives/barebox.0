Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4bhZ-0008TH-Jm
 for barebox@lists.infradead.org; Thu, 23 Aug 2012 18:00:18 +0000
Received: by bkcji2 with SMTP id ji2so352907bkc.36
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2012 11:00:13 -0700 (PDT)
Message-ID: <50366F9B.2080007@crane-soft.de>
Date: Thu, 23 Aug 2012 19:59:55 +0200
From: Peter <sailingsmoky@googlemail.com>
MIME-Version: 1.0
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de> <4FEBFF6C.6010304@crane-soft.de>
 <20120628104341.GW1623@pengutronix.de>
In-Reply-To: <20120628104341.GW1623@pengutronix.de>
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 28.06.2012 12:43, schrieb Sascha Hauer:
> On Thu, Jun 28, 2012 at 08:53:32AM +0200, Peter Kuennemann@Crane-Soft wrote:
>>>
>>> Has this been solved in the mean time? The above looks correct, I have
>>> no idea what's wrong.

...

>> However, I still cannot access the mmc from barebox. It would be enough to be able to
>> read the mmc. I want to be able to store kernel or rootfs image updates on the mmc
>> and flash them to either NAND or NOR after reboot to enable remote update services.
>>
>> Question: "How can I access the MMC from barebox (read only may be sufficient)
> 
> The pcm043 currently does not have mmc support. You have to add this to
> the board file:
> 
> imx35_add_mmc0(NULL);
> 
> or
> 
> imx35_add_mmc1(NULL);
> 
> depending on which port is routed to the slot. Also you have to setup
> the iomuxer (you can probably copy the pin settings from the kernel). Of
> course you also have to enable MMC support in the config.
> 
> Sascha
> 
Sascha I'ld like to pick up this thread again abd I hope that someone can
give me the hint to help me out here.

I managed to access the mmc applying your hints above. The card seem to
appear correctly with all it's partitions:

---
imx-esdhc@mci0: registered as mci0
mci@mci0: registered disk0
ehci@ehci0: USB EHCI 1.00
---
barebox:/ ls /dev
defaultenv             disk0                  disk0.0
disk0.1                env0                   full
---
I am able to boot the kernel from NOR flash and use the mmc as rootfs. However
I did not yet find a way to boot the kernel from the MMC. I set up the MMC
with 255 heads, 63 sectors/track, 245 cylinders and formated partition 1 as
VFAT and made it bootable. I then copied uImage to it. Partition 2 contains
the rootfs which can be used when booting the kernel from flash.

Barebox /env/config contains: (besides others)
...
 kernel_loc=disk
 rootfs_loc=disk
 rootfs_type=ext2
 rootfs_part_linux_dev=mmcblk0p2
 kernel_part=disk0.0
...

Trying to boot results in:
booting kernel from /dev/disk0.0

and then followed by the barebox prompt.

barebox:/

Kernel parameters are: console=ttymxc0,115200 video=mx3fb:CTP-CLAA070LC0ACW ip=dhcp root=/dev/mmcblk0p2 rootfstype=ext2 noinitrd rootwait
mtdparts=physmap-flash.0:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root);:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)

A little help would be very much appreciated.

Regards and many thanks for your support.

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
