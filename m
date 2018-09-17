Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1vUi-0004Ce-HJ
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 15:31:26 +0000
From: perachet7@gmail.com
Date: Mon, 17 Sep 2018 17:30:56 +0200
Message-Id: <2037065.bgjZ3rdPRg@think-future.de>
In-Reply-To: <20180917072942.12445-1-s.hauer@think-future.de>
References: <20180917072942.12445-1-s.hauer@think-future.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: perachet7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Multi PBL: Fix image calculation for certain
 toolchains
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Thank you for this patch. Happy to test it here on rk3188 (radxa rock pro).

Using bb v2018.09.0. Applied your patches below. CONFIG_PBL_RELOCATABLE is 
fixed in menuconfig. Common config:

grep RELOCAT .config
CONFIG_PBL_RELOCATABLE=y
CONFIG_RELOCATABLE=y

Built using this script:

export ARCH=arm
#export CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf-
export CROSS_COMPILE=/opt/OSELAS.Toolchain-2018.02.0/arm-v7m-eabi/gcc-7.3.1-
newlib-2.5.0-binutils-2.30/bin/arm-v7m-eabi-

rm .config
make clean
make ARCH=arm rk3188_defconfig && make -j 10

/rk-makebootable FlashData barebox-flash-image rrboot.bin
sudo dd if=rrboot.bin of=/dev/sdc bs=$((0x200)) seek=$((0x40))


Using Debian/Ubuntu cross compiler:
###########################

CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf-

DDR Version 1.04 20140217
In
DDR3
300MHz
Bus Width=32 Col=10 Bank=8 Row=15 CS=2 Die Bus-Width=16 Size=2048MB
Memory OK
OUT


barebox 2018.09.0-dirty #43 Mon Sep 17 15:19:59 CEST 2018


Board: Radxa Rock
clk_register clk xin24m is already registered, skipping!
arc-emac 10204000.ethernet: ARC EMAC detected with id: 0x7fd02
mdio_bus: miibus0: probed
dw_mmc 10214000.dwmmc: registered as 10214000.dwmmc
mshc1: detected SD card version 1.0
mshc1: registered mshc1
netconsole: registered as netconsole-1
i2c-gpio i2c-gpio0: using pins 58 (SDA) and 59 (SCL)
malloc space: 0x9fefd660 -> 0xdfdfacbf (size 1023 MiB)
gpio-leds.6: probe permanently deferred
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...

Hit any key to stop autoboot:    0
booting 'mshc1'
mount: No such file or directory
ext4 ext40: EXT2 rev 1, inode_size 128, descriptor size 32
mounted /dev/mshc1.0 on /mnt/mshc1.0
setting root node failed: Device or resource busy
oftree: Device or resource busy

Loading ARM Linux zImage '/mnt/mshc1.0/zImage'
commandline:  console=ttyS2,115200  root=/dev/mmcblk0p2 rootwait
arch_number: 3066


=> bb boot success.
=> kernel boot failure.


Using OSELAS:
##########

export CROSS_COMPILE=/opt/OSELAS.Toolchain-2018.02.0/arm-v7m-eabi/gcc-7.3.1-
newlib-2.5.0-binutils-2.30/bin/arm-v7m-eabi-

DDR Version 1.04 20140217
In
DDR3
300MHz
Bus Width=32 Col=10 Bank=8 Row=15 CS=2 Die Bus-Width=16 Size=2048MB
Memory OK
OUT


barebox 2018.09.0-dirty #44 Mon Sep 17 15:22:34 CEST 2018


Board: Radxa Rock
clk_register clk xin24m is already registered, skipping!
arc-emac 10204000.ethernet: ARC EMAC detected with id: 0x7fd02
mdio_bus: miibus0: probed
dw_mmc 10214000.dwmmc: registered as 10214000.dwmmc
mshc1: detected SD card version 1.0
mshc1: registered mshc1
netconsole: registered as netconsole-1
i2c-gpio i2c-gpio0: using pins 58 (SDA) and 59 (SCL)
malloc space: 0x9fefd660 -> 0xdfdfacbf (size 1023 MiB)
gpio-leds.6: probe permanently deferred
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...

Hit any key to stop autoboot:    1
booting 'mshc1'
mount: No such file or directory
ext4 ext40: EXT2 rev 1, inode_size 128, descriptor size 32
mounted /dev/mshc1.0 on /mnt/mshc1.0
setting root node failed: Device or resource busy
oftree: Device or resource busy

Loading ARM Linux zImage '/mnt/mshc1.0/zImage'
commandline:  console=ttyS2,115200  root=/dev/mmcblk0p2 rootwait
arch_number: 3066


=> bb boot success.
=> kernel boot failure.



There still are a couple of (possibly unrelated) issues, independent of the 
compiler used:

1) envfs: no envfs (magic mismatch) - envfs never written?

2) mount: No such file or directory

3) setting root node failed: Device or resource busy

4) oftree: Device or resource busy

5) arch_number: 3066 [note: boot failure]



cheers

On Montag, 17. September 2018 09:29:42 CEST you wrote:
> The current way to calculate the compressed image position works
> with the OSELAS toolchains, but not with the Debian/Ubuntu toolchains.
> For these toolchains &image_end_marker already returns the correct
> address, adding global_variable_offset() to it is wrong.
>
> The solution seems to be to put the image_end_marker into a different
> object file so that the compiler cannot play any tricks to resolve
> the address internally in the object file.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> arch/arm/cpu/sections.c         | 2 ++
> arch/arm/cpu/uncompress.c       | 5 +----
> arch/arm/include/asm/sections.h | 2 ++
> arch/arm/lib/pbl.lds.S          | 2 +-
> 4 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
> index 5874da2b82..ab08ebf42e 100644
> --- a/arch/arm/cpu/sections.c
> +++ b/arch/arm/cpu/sections.c
> @@ -1,4 +1,5 @@
> #include <asm/sections.h>
> +#include <linux/types.h>
>
> char __rel_dyn_start[0] __attribute__((section(".__rel_dyn_start")));
> char __rel_dyn_end[0] __attribute__((section(".__rel_dyn_end")));
> @@ -9,3 +10,4 @@ char __bss_start[0]
> __attribute__((section(".__bss_start"))); char __bss_stop[0]
> __attribute__((section(".__bss_stop")));
> char __image_start[0] __attribute__((section(".__image_start")));
> char __image_end[0] __attribute__((section(".__image_end")));
> +uint32_t __image_end_marker[1]
> __attribute__((section(".__image_end_marker"))) = { 0xdeadbeef }; diff
> --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c index
> b07087e4cf..43b49b4212 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -36,9 +36,6 @@
> unsigned long free_mem_ptr;
> unsigned long free_mem_end_ptr;
>
> -static int __attribute__((__section__(".image_end")))
> -       image_end_marker = 0xdeadbeef;
> -
> void __noreturn barebox_multi_pbl_start(unsigned long membase,
> unsigned long memsize, void *boarddata)
> {
> @@ -50,7 +47,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long
> membase, void *pg_start;
> unsigned long pc = get_pc();
>
> -       image_end = (void *)&image_end_marker + global_variable_offset();
> +       image_end = (void *)__image_end_marker + global_variable_offset();
>
> if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
> /*





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
