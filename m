Delivery-date: Tue, 07 Jun 2022 09:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTaU-00688o-Vx
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTaS-0004TS-9P
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T2y6NPGH1qfpMNB7jOqpouJGrgOQMPuVDusNbQEMcRg=; b=hOlDSUm3jMB5ycrfKV4oKj7lCq
	ellqs4Vn5+lHaVHE1T8RWqTq0/5r/wK803wJeP7YNRv5OI0wEr1vjEQy5/ezrFXQ2soB1Mr6FpLB3
	s9qvFehr8tumHEJ5e0GI/9Z7jiqy9XIJhrs4JK9LclAiro8DczI8wnihscQZ6hLgf9CP175vTi0Pr
	yqh4J3/Wgv0fe/dZaIVnhKjxiMWSH4eEwFeQ9EEp2X8Llv2S4UTvmyXKm2Vmk11/qPWcY7NY9hQLz
	MLSJJ89I4meucRH/ZzJZac+fPOCS6PrBSZCryUz1O2USgkmQbRlw7ktiuPEz2dk5pMLLa4+V2MvT6
	N9S79+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTYw-005Qbf-Dd; Tue, 07 Jun 2022 07:23:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTYo-005QZG-Jd
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:23:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTYm-0004Gn-OY; Tue, 07 Jun 2022 09:23:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTYm-0000jO-F8; Tue, 07 Jun 2022 09:23:28 +0200
Date: Tue, 7 Jun 2022 09:23:28 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220607072328.GN1615@pengutronix.de>
References: <20220607051957.2497-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607051957.2497-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_002331_030540_AA948E2B 
X-CRM114-Status: GOOD (  19.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] treewide: Remove duplicate incudes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Applied, thanks

Sascha

On Tue, Jun 07, 2022 at 08:19:57AM +0300, Alexander Shiyan wrote:
> Fix warning fwterated by checkincludes.pl:
> ./net/nfs.c: libgen.h is included more than once.
> ./net/ifup.c: globalvar.h is included more than once.
> ./crypto/rsa.c: asm/types.h is included more than once.
> ./lib/decompress_unlz4.c: linux/decompress/mm.h is included more than once.
> ./scripts/stb_image.h: stdio.h is included more than once.
> ./scripts/kwbimage.c: unistd.h is included more than once.
> ./scripts/common.c: sys/types.h is included more than once.
> ./scripts/bareboximd.c: sys/types.h is included more than once.
> ./scripts/bareboximd.c: sys/mman.h is included more than once.
> ./fs/pstore/ram_core.c: linux/rslib.h is included more than once.
> ./fs/pstore/fs.c: fs.h is included more than once.
> ./fs/pstore/fs.c: linux/pstore.h is included more than once.
> ./fs/nfs.c: fs.h is included more than once.
> ./fs/uimagefs.c: fs.h is included more than once.
> ./fs/fs.c: command.h is included more than once.
> ./arch/sandbox/board/hostfile.c: linux/err.h is included more than once.
> ./arch/sandbox/board/devices.c: mach/linux.h is included more than once.
> ./arch/sandbox/os/common.c: signal.h is included more than once.
> ./arch/arm/boards/zii-imx51-rdu1/board.c: envfs.h is included more than once.
> ./arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c: generated/mach-types.h is
> ./arch/arm/mach-stm32mp/ddrctrl.c: mach/stm32.h is included more than once.
> ./arch/arm/mach-imx/cpu_init.c: common.h is included more than once.
> ./arch/arm/mach-imx/imx8m.c: mach/imx8m-ccm-regs.h is included more than once.
> ./common/efi/payload/init.c: efi.h is included more than once.
> ./common/state/backend_format_raw.c: common.h is included more than once.
> ./common/state/backend_format_raw.c: crc.h is included more than once.
> ./common/hush.c: libbb.h is included more than once.
> ./drivers/spi/atmel-quadspi.c: linux/clk.h is included more than once.
> ./drivers/spi/atmel-quadspi.c: linux/err.h is included more than once.
> ./drivers/net/virtio.c: net.h is included more than once.
> ./drivers/net/phy/phy.c: linux/phy.h is included more than once.
> ./drivers/net/cpsw.c: net.h is included more than once.
> ./drivers/virtio/virtio_pci_common.h: linux/list.h is included more than once.
> ./drivers/usb/host/ohci-hcd.c: dma.h is included more than once.
> ./drivers/usb/gadget/fsl_udc.c: dma.h is included more than once.
> ./drivers/nvmem/eeprom_93xx46.c: spi/spi.h is included more than once.
> ./drivers/nvmem/eeprom_93xx46.c: of.h is included more than once.
> ./drivers/video/imx-ipu-v3/imx-ldb.c: linux/clk.h is included more than once.
> ./drivers/video/imx-ipu-v3/imx-hdmi.c: linux/clk.h is included more than once.
> ./drivers/video/omap.c: common.h is included more than once.
> ./drivers/mtd/nand/nand_s3c24xx.c: asm/sections.h is included more than once.
> ./drivers/clk/imx/clk-imx6sx.c: linux/clk.h is included more than once.
> ./drivers/clk/imx/clk-imx6sl.c: linux/clk.h is included more than once.
> ./commands/bootm.c: of.h is included more than once.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 1 -
>  arch/arm/boards/zii-imx51-rdu1/board.c             | 2 --
>  arch/arm/mach-imx/cpu_init.c                       | 1 -
>  arch/arm/mach-imx/imx8m.c                          | 1 -
>  arch/arm/mach-stm32mp/ddrctrl.c                    | 1 -
>  arch/sandbox/board/devices.c                       | 1 -
>  arch/sandbox/board/hostfile.c                      | 2 --
>  arch/sandbox/os/common.c                           | 1 -
>  commands/bootm.c                                   | 1 -
>  common/efi/payload/init.c                          | 1 -
>  common/hush.c                                      | 1 -
>  common/state/backend_format_raw.c                  | 2 --
>  crypto/rsa.c                                       | 1 -
>  drivers/clk/imx/clk-imx6sl.c                       | 1 -
>  drivers/clk/imx/clk-imx6sx.c                       | 1 -
>  drivers/mtd/nand/nand_s3c24xx.c                    | 2 --
>  drivers/net/cpsw.c                                 | 1 -
>  drivers/net/phy/phy.c                              | 1 -
>  drivers/net/virtio.c                               | 1 -
>  drivers/nvmem/eeprom_93xx46.c                      | 2 --
>  drivers/spi/atmel-quadspi.c                        | 2 --
>  drivers/usb/gadget/fsl_udc.c                       | 1 -
>  drivers/usb/host/ohci-hcd.c                        | 1 -
>  drivers/video/imx-ipu-v3/imx-hdmi.c                | 1 -
>  drivers/video/imx-ipu-v3/imx-ldb.c                 | 1 -
>  drivers/video/omap.c                               | 1 -
>  drivers/virtio/virtio_pci_common.h                 | 1 -
>  fs/fs.c                                            | 1 -
>  fs/nfs.c                                           | 1 -
>  fs/pstore/fs.c                                     | 2 --
>  fs/pstore/ram_core.c                               | 1 -
>  fs/uimagefs.c                                      | 1 -
>  lib/decompress_unlz4.c                             | 1 -
>  net/ifup.c                                         | 1 -
>  net/nfs.c                                          | 1 -
>  scripts/bareboximd.c                               | 2 --
>  scripts/common.c                                   | 1 -
>  scripts/kwbimage.c                                 | 1 -
>  scripts/stb_image.h                                | 4 ----
>  39 files changed, 50 deletions(-)
> 
> diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> index 14100747e0..350576fa52 100644
> --- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> +++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> @@ -25,7 +25,6 @@
>  #include <mach/clock.h>
>  #include <mach/mci.h>
>  #include <mach/iomux.h>
> -#include <generated/mach-types.h>
>  
>  static struct mxs_mci_platform_data mci_pdata = {
>  	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
> diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> index 42c99ecc1e..0b5271b8de 100644
> --- a/arch/arm/boards/zii-imx51-rdu1/board.c
> +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> @@ -27,8 +27,6 @@
>  #include <linux/sizes.h>
>  #include <linux/nvmem-consumer.h>
>  
> -#include <envfs.h>
> -
>  static int zii_rdu1_init(void)
>  {
>  	const char *hostname;
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index 559692c765..ea36215419 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -10,7 +10,6 @@
>  #include <mach/imx7-regs.h>
>  #include <mach/imx8mq-regs.h>
>  #include <mach/imx8m-ccm-regs.h>
> -#include <common.h>
>  #include <io.h>
>  #include <asm/syscounter.h>
>  #include <asm/system.h>
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 6b7cdac541..8b275bd6f6 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -13,7 +13,6 @@
>  #include <mach/ocotp.h>
>  #include <mach/imx8mp-regs.h>
>  #include <mach/imx8mq-regs.h>
> -#include <mach/imx8m-ccm-regs.h>
>  #include <soc/imx8m/clk-early.h>
>  
>  #include <linux/iopoll.h>
> diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
> index ed211cf58e..31bddba764 100644
> --- a/arch/arm/mach-stm32mp/ddrctrl.c
> +++ b/arch/arm/mach-stm32mp/ddrctrl.c
> @@ -5,7 +5,6 @@
>  
>  #include <common.h>
>  #include <init.h>
> -#include <mach/stm32.h>
>  #include <mach/ddr_regs.h>
>  #include <mach/entry.h>
>  #include <mach/stm32.h>
> diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
> index 26152a8b90..f7305a8ead 100644
> --- a/arch/sandbox/board/devices.c
> +++ b/arch/sandbox/board/devices.c
> @@ -6,7 +6,6 @@
>  
>  #include <common.h>
>  #include <driver.h>
> -#include <mach/linux.h>
>  #include <init.h>
>  #include <mach/linux.h>
>  #include <asm/io.h>
> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
> index 7df69f8cfc..52165adec8 100644
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -26,8 +26,6 @@
>  #include <mach/hostfile.h>
>  #include <xfuncs.h>
>  
> -#include <linux/err.h>
> -
>  struct hf_priv {
>  	union {
>  		struct block_device blk;
> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
> index e36e3972bc..2878eda29e 100644
> --- a/arch/sandbox/os/common.c
> +++ b/arch/sandbox/os/common.c
> @@ -40,7 +40,6 @@
>  #include <sys/ioctl.h>
>  #include <linux/fs.h>
>  #include <sys/time.h>
> -#include <signal.h>
>  /*
>   * ...except the ones needed to connect with barebox
>   */
> diff --git a/commands/bootm.c b/commands/bootm.c
> index f54a4827eb..95d267135c 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -17,7 +17,6 @@
>  #include <fs.h>
>  #include <errno.h>
>  #include <bootm.h>
> -#include <of.h>
>  #include <rtc.h>
>  #include <init.h>
>  #include <of.h>
> diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
> index 1541683186..e2bddabc9a 100644
> --- a/common/efi/payload/init.c
> +++ b/common/efi/payload/init.c
> @@ -31,7 +31,6 @@
>  #include <binfmt.h>
>  #include <wchar.h>
>  #include <envfs.h>
> -#include <efi.h>
>  #include <efi/efi-payload.h>
>  #include <efi/efi-device.h>
>  #include <libfile.h>
> diff --git a/common/hush.c b/common/hush.c
> index d80df7a181..6a089fabf1 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -112,7 +112,6 @@
>  #include <slice.h>
>  #include <getopt.h>
>  #include <libfile.h>
> -#include <libbb.h>
>  #include <magicvar.h>
>  #include <linux/list.h>
>  #include <binfmt.h>
> diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
> index 1fecdeb9cf..7835f977c9 100644
> --- a/common/state/backend_format_raw.c
> +++ b/common/state/backend_format_raw.c
> @@ -15,7 +15,6 @@
>   *
>   */
>  
> -#include <common.h>
>  #include <common.h>
>  #include <crypto/keystore.h>
>  #include <digest.h>
> @@ -23,7 +22,6 @@
>  #include <malloc.h>
>  #include <crc.h>
>  #include <of.h>
> -#include <crc.h>
>  
>  #include "state.h"
>  
> diff --git a/crypto/rsa.c b/crypto/rsa.c
> index e97e5192ab..fc21efdb6d 100644
> --- a/crypto/rsa.c
> +++ b/crypto/rsa.c
> @@ -15,7 +15,6 @@
>  #include <asm/byteorder.h>
>  #include <errno.h>
>  #include <rsa.h>
> -#include <asm/types.h>
>  #include <asm/unaligned.h>
>  
>  #define UINT64_MULT32(v, multby)  (((uint64_t)(v)) * ((uint32_t)(multby)))
> diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
> index 8d0766c055..466893f82f 100644
> --- a/drivers/clk/imx/clk-imx6sl.c
> +++ b/drivers/clk/imx/clk-imx6sl.c
> @@ -7,7 +7,6 @@
>  #include <common.h>
>  #include <init.h>
>  #include <driver.h>
> -#include <linux/clk.h>
>  #include <io.h>
>  #include <of.h>
>  #include <linux/clkdev.h>
> diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
> index bacde8b893..c11829259e 100644
> --- a/drivers/clk/imx/clk-imx6sx.c
> +++ b/drivers/clk/imx/clk-imx6sx.c
> @@ -7,7 +7,6 @@
>  #include <common.h>
>  #include <init.h>
>  #include <driver.h>
> -#include <linux/clk.h>
>  #include <io.h>
>  #include <of.h>
>  #include <linux/clkdev.h>
> diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
> index dfe570086f..b0f16f1d62 100644
> --- a/drivers/mtd/nand/nand_s3c24xx.c
> +++ b/drivers/mtd/nand/nand_s3c24xx.c
> @@ -592,8 +592,6 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
>  	disable_nand_controller(host);
>  }
>  
> -#include <asm/sections.h>
> -
>  void __nand_boot_init nand_boot(void)
>  {
>  	void *dest = _text;
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 748aa861f1..73671ae2d4 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -9,7 +9,6 @@
>  
>  #include <command.h>
>  #include <dma.h>
> -#include <net.h>
>  #include <malloc.h>
>  #include <net.h>
>  #include <linux/phy.h>
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index adff9dadd1..60b5839b40 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -18,7 +18,6 @@
>  #include <net.h>
>  #include <malloc.h>
>  #include <linux/phy.h>
> -#include <linux/phy.h>
>  #include <linux/err.h>
>  
>  #define PHY_AN_TIMEOUT	10
> diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
> index b40c948689..8605f67ae2 100644
> --- a/drivers/net/virtio.c
> +++ b/drivers/net/virtio.c
> @@ -9,7 +9,6 @@
>  #include <malloc.h>
>  #include <net.h>
>  #include <init.h>
> -#include <net.h>
>  #include <linux/virtio.h>
>  #include <linux/virtio_ring.h>
>  #include <uapi/linux/virtio_net.h>
> diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
> index 2f598fbc97..0d19bc2877 100644
> --- a/drivers/nvmem/eeprom_93xx46.c
> +++ b/drivers/nvmem/eeprom_93xx46.c
> @@ -10,8 +10,6 @@
>  #include <driver.h>
>  #include <of.h>
>  #include <spi/spi.h>
> -#include <of.h>
> -#include <spi/spi.h>
>  #include <malloc.h>
>  #include <gpio.h>
>  #include <of_gpio.h>
> diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
> index bf6d17cc5c..55ebccc877 100644
> --- a/drivers/spi/atmel-quadspi.c
> +++ b/drivers/spi/atmel-quadspi.c
> @@ -27,8 +27,6 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> -#include <linux/clk.h>
> -#include <linux/err.h>
>  #include <linux/kernel.h>
>  #include <linux/spi/spi-mem.h>
>  #include <of_device.h>
> diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
> index ec004f1939..e8bdab5765 100644
> --- a/drivers/usb/gadget/fsl_udc.c
> +++ b/drivers/usb/gadget/fsl_udc.c
> @@ -1,6 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <common.h>
> -#include <dma.h>
>  #include <errno.h>
>  #include <dma.h>
>  #include <init.h>
> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
> index f277f65b97..ce5d39166b 100644
> --- a/drivers/usb/host/ohci-hcd.c
> +++ b/drivers/usb/host/ohci-hcd.c
> @@ -27,7 +27,6 @@
>   *     to activate workaround for bug #41 or this driver will NOT work!
>   */
>  #include <common.h>
> -#include <dma.h>
>  #include <clock.h>
>  #include <dma.h>
>  #include <malloc.h>
> diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
> index f454303fd8..d63f2c2111 100644
> --- a/drivers/video/imx-ipu-v3/imx-hdmi.c
> +++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
> @@ -15,7 +15,6 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/math64.h>
> -#include <linux/clk.h>
>  #include <i2c/i2c.h>
>  #include <video/media-bus-format.h>
>  #include <video/vpl.h>
> diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
> index ba34349d62..4c934bc72e 100644
> --- a/drivers/video/imx-ipu-v3/imx-ldb.c
> +++ b/drivers/video/imx-ipu-v3/imx-ldb.c
> @@ -19,7 +19,6 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/math64.h>
> -#include <linux/clk.h>
>  #include <mach/imx6-regs.h>
>  #include <mach/imx53-regs.h>
>  
> diff --git a/drivers/video/omap.c b/drivers/video/omap.c
> index ca41ab36fc..189b95d241 100644
> --- a/drivers/video/omap.c
> +++ b/drivers/video/omap.c
> @@ -16,7 +16,6 @@
>  #include <io.h>
>  #include <common.h>
>  #include <malloc.h>
> -#include <common.h>
>  #include <clock.h>
>  #include <linux/err.h>
>  
> diff --git a/drivers/virtio/virtio_pci_common.h b/drivers/virtio/virtio_pci_common.h
> index 8f97d12188..b4720fa1fc 100644
> --- a/drivers/virtio/virtio_pci_common.h
> +++ b/drivers/virtio/virtio_pci_common.h
> @@ -16,7 +16,6 @@
>   *  Michael S. Tsirkin <mst@redhat.com>
>   */
>  
> -#include <linux/list.h>
>  #include <linux/list.h>
>  #include <linux/pci.h>
>  #include <linux/slab.h>
> diff --git a/fs/fs.c b/fs/fs.c
> index 5fb9f1402e..460fc2f7f1 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -3215,7 +3215,6 @@ static int automount_mount(struct dentry *dentry)
>  /*
>   * Some debug commands, helpful to debug the dcache implementation
>   */
> -#include <command.h>
>  
>  static int do_lookup_dentry(int argc, char *argv[])
>  {
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 057641edc8..fae7b722f5 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -26,7 +26,6 @@
>  #include <errno.h>
>  #include <libgen.h>
>  #include <fcntl.h>
> -#include <fs.h>
>  #include <init.h>
>  #include <linux/stat.h>
>  #include <linux/err.h>
> diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
> index e9c7ae7adb..b41c87665c 100644
> --- a/fs/pstore/fs.c
> +++ b/fs/pstore/fs.c
> @@ -21,7 +21,6 @@
>  #include <fs.h>
>  #include <errno.h>
>  #include <fcntl.h>
> -#include <fs.h>
>  #include <malloc.h>
>  #include <init.h>
>  #include <linux/stat.h>
> @@ -30,7 +29,6 @@
>  #include <libbb.h>
>  #include <rtc.h>
>  #include <libfile.h>
> -#include <linux/pstore.h>
>  #include "internal.h"
>  
>  struct list_head allpstore = LIST_HEAD_INIT(allpstore);
> diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
> index 06be47ce53..76b8a109be 100644
> --- a/fs/pstore/ram_core.c
> +++ b/fs/pstore/ram_core.c
> @@ -20,7 +20,6 @@
>  #include <linux/rslib.h>
>  #include <linux/pstore_ram.h>
>  #include <linux/string.h>
> -#include <linux/rslib.h>
>  #include <stdio.h>
>  #include <malloc.h>
>  #include <memory.h>
> diff --git a/fs/uimagefs.c b/fs/uimagefs.c
> index 72641c58b5..daaa3ad24b 100644
> --- a/fs/uimagefs.c
> +++ b/fs/uimagefs.c
> @@ -9,7 +9,6 @@
>  #include <fs.h>
>  #include <errno.h>
>  #include <fcntl.h>
> -#include <fs.h>
>  #include <malloc.h>
>  #include <init.h>
>  #include <linux/stat.h>
> diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
> index 46a010ad4c..2c04eac71c 100644
> --- a/lib/decompress_unlz4.c
> +++ b/lib/decompress_unlz4.c
> @@ -10,7 +10,6 @@
>  
>  #ifdef STATIC
>  #define PREBOOT
> -#include <linux/decompress/mm.h>
>  #include "lz4/lz4_decompress.c"
>  #else
>  #include <linux/decompress/unlz4.h>
> diff --git a/net/ifup.c b/net/ifup.c
> index 1870f74017..e4d5374db3 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -17,7 +17,6 @@
>  #include <string.h>
>  #include <driver.h>
>  #include <init.h>
> -#include <globalvar.h>
>  #include <magicvar.h>
>  #include <linux/stat.h>
>  
> diff --git a/net/nfs.c b/net/nfs.c
> index 9bd0b8f05f..df0840e4e7 100644
> --- a/net/nfs.c
> +++ b/net/nfs.c
> @@ -31,7 +31,6 @@
>  #include <malloc.h>
>  #include <libgen.h>
>  #include <fs.h>
> -#include <libgen.h>
>  #include <fcntl.h>
>  #include <errno.h>
>  #include <progress.h>
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index d01bd27007..ab47ad27e4 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -4,7 +4,6 @@
>  #include <stdio.h>
>  #include <sys/types.h>
>  #include <stdint.h>
> -#include <sys/types.h>
>  #include <sys/stat.h>
>  #include <fcntl.h>
>  #include <stdlib.h>
> @@ -15,7 +14,6 @@
>  #include <stdarg.h>
>  #include <linux/err.h>
>  #include <linux/kernel.h>
> -#include <sys/mman.h>
>  
>  #include "common.h"
>  #include "common.c"
> diff --git a/scripts/common.c b/scripts/common.c
> index 0eb263d041..e2c53c5aef 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -1,6 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  #include <stdio.h>
> -#include <sys/types.h>
>  #include <stdint.h>
>  #include <sys/types.h>
>  #include <sys/stat.h>
> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index 28c9a68e18..f9d052752d 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -38,7 +38,6 @@
>  #include <fcntl.h>
>  #include <unistd.h>
>  #include <sys/mman.h>
> -#include <unistd.h>
>  #include <stdlib.h>
>  #include <string.h>
>  #include <libgen.h>
> diff --git a/scripts/stb_image.h b/scripts/stb_image.h
> index 742fac74f7..cad4fe2901 100644
> --- a/scripts/stb_image.h
> +++ b/scripts/stb_image.h
> @@ -561,10 +561,6 @@ STBIDEF int   stbi_zlib_decode_noheader_buffer(char *obuffer, int olen, const ch
>  #include <math.h>  // ldexp, pow
>  #endif
>  
> -#ifndef STBI_NO_STDIO
> -#include <stdio.h>
> -#endif
> -
>  #ifndef STBI_ASSERT
>  #include <assert.h>
>  #define STBI_ASSERT(x) assert(x)
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

