Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3MHN-0003qg-Fa
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 11:05:58 +0000
Received: by wmec201 with SMTP id c201so132821400wme.1
 for <barebox@lists.infradead.org>; Mon, 30 Nov 2015 03:05:35 -0800 (PST)
Date: Mon, 30 Nov 2015 12:05:28 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151130110522.GA7006@omega>
References: <1448878678.1471428558@matrix.start.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448878678.1471428558@matrix.start.ca>
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
Subject: Re: rpi2 support
To: Dave Thompson <dthompson@nexusisp.com>
Cc: barebox@lists.infradead.org, carlo.caione@gmail.com

Hi,

On Mon, Nov 30, 2015 at 05:17:58AM -0500, Dave Thompson wrote:
> Thanks for the quick replies
> rpi have only sold 7M, so not that big in the grand scheme of things
> But the rpi2 has only been out for 8 months, 
> I am sure it will be popular
> 
> And now,, out only a few days,, the pizero, a $5 board
> Essentially an "A" without networking but 40 GPIO pin header
> I bet they will sell a lot of them  (BCM2835)
> 
> For me, I think I will do some version of kexec,
> there are 3
> A bootloader is kind of overkill, sledgehammer to kill flies
> thanks
> dave thompson
> 

I tried a dirty hack, because bcm2835 and bcm2836 are very similar:

diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
index 134ad9b..aa610da 100644
--- a/arch/arm/mach-bcm2835/Kconfig
+++ b/arch/arm/mach-bcm2835/Kconfig
@@ -9,6 +9,7 @@ choice
 
 config MACH_RPI
        bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
+       select CPU_V7
 
 endchoice
 
diff --git a/arch/arm/mach-bcm2835/include/mach/platform.h b/arch/arm/mach-bcm2835/include/mach/platform.h
index e55085a..ee77f1e 100644
--- a/arch/arm/mach-bcm2835/include/mach/platform.h
+++ b/arch/arm/mach-bcm2835/include/mach/platform.h
@@ -28,7 +28,7 @@
  * This file is manually generated.
  */
 
-#define BCM2835_PERI_BASE      0x20000000
+#define BCM2835_PERI_BASE      0x3f000000
 #define BCM2835_ST_BASE                (BCM2835_PERI_BASE + 0x3000)    /* System Timer */
 #define BCM2835_DMA_BASE       (BCM2835_PERI_BASE + 0x7000)    /* DMA controller */
 #define BCM2835_ARM_BASE       (BCM2835_PERI_BASE + 0xB000)    /* BCM2708 ARM control block */

---

After that I get some printout:

# mbox: Timeout waiting for response
bcm2835: Could not query board revision
mbox: Timeout waiting for response
regulator-bcm2835 regulator-bcm2835: bcm2835: Could not set module 1 power state
uart-pl011 uart0-pl0110: probe failed: Connection timed out
mbox: Timeout waiting for response
mbox: Timeout waiting for response
could not query ARM memory size
initcall rpi_mem_init+0x0/0x7c failed: Connection timed out
bcm2835-gpio bcm2835-gpio0: probed gpiochip0 with base 0
malloc space: 0x03c00000 -> 0x03ffffff (size 4 MiB)
bcm2835_mci bcm2835_mci0: clock not found: -2
bcm2835_mci bcm2835_mci0: probe failed: No such file or directory
no /dev/disk0.0. using default env
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:  0
blspec: blspec_scan_directory: net loader/entries
ifup: No such file or directory
running automount command 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp' failed
global: set parameter dhcp.vendor_id: Invalid argument
ifup: No such file or directory
running automount command 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp' failed
could not open /mnt/tftp/none-linux-rpi: No such file or directory
Booting net failed: No such file or directory
booting net failed: No such file or directory
boot: No such file or directory

type exit to get to the menu
                            barebox@<NULL>:/
# 

---

Maybe a good point to start. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
