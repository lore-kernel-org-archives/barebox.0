Delivery-date: Wed, 11 Jun 2025 18:24:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPOFX-006DAX-0Q
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 18:24:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPOFW-0003OK-CT
	for lore@pengutronix.de; Wed, 11 Jun 2025 18:24:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LMSZyIv/5cCNo9sGbWCOF7R3FN4e+bzBh9DIzhsRw5w=; b=FKj5wcZcsKQ4YYZ4X9I08nadAo
	rr0/HuKLBjDaITHMctFvNsa4EWSqBHmOJbHNtsBTcKORmRooWSYb379KRYaI4whJpyhc0v6bwWEdy
	mUAUowpID9SW8gSCoDBNTqLGM5li9qNcU5RXf7tfT/13tCXwMs03YqALZdFm/s55Log/kEcVC7amR
	GB7PoVXNGCO0MKzIjDv50nBd821knchFicCye6HfuwAFXH9GSc0X8Bam1k7n9uaM/MYcCeDK1rf+A
	8OsS/L1/wW7uJLv0JjRZUjqV/tq0TA4IyOurEfkPxMis7HF34MsqIvp2rZKu0ITnxdYBYqZeIiTya
	zCOFVwAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPOFH-0000000AbQH-3fej;
	Wed, 11 Jun 2025 16:24:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPKD5-00000009o2C-1GlL
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 12:05:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uPKD2-0000D0-FD; Wed, 11 Jun 2025 14:05:36 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uPKD2-002wTM-0K;
	Wed, 11 Jun 2025 14:05:36 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uPKD1-006qTG-3A;
	Wed, 11 Jun 2025 14:05:35 +0200
Date: Wed, 11 Jun 2025 14:05:35 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Message-ID: <aElxD6ELuh5xyAki@pengutronix.de>
References: <20250607134711.48122-1-johannes@gnu-linux.rocks>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250607134711.48122-1-johannes@gnu-linux.rocks>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_050539_348120_E37B99E7 
X-CRM114-Status: GOOD (  25.77  )
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
Cc: barebox@lists.infradead.org, michael.graichen@hotmail.com, a.fatoum@barebox.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Added support for Zynq 7000 FPGA firmware loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, 07 Jun 2025 15:47:11 +0200, Johannes Roith wrote:
> This patch adds support for loading the FPGA firmware to the PL of the
> Zynq 7000 over barebox. It adds a new driver xilinx-fpga.c which uses
> the code of the former zynqmp-firmware.c driver but supports loading the
> PL on the Zynq 7000 and the ZynqMP SoC.
> 
> Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>

Tested-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  arch/arm/configs/zynq_defconfig       |   1 +
>  drivers/firmware/Kconfig              |  16 ++
>  drivers/firmware/Makefile             |   2 +
>  drivers/firmware/xilinx-fpga.c        | 373 ++++++++++++++++++++++++
>  drivers/firmware/zynq-fpga.c          | 158 ++++++++++
>  drivers/firmware/zynqmp-fpga.c        | 400 ++------------------------
>  include/mach/zynq/firmware-zynq.h     |  68 +++++
>  include/mach/zynqmp/firmware-zynqmp.h |  39 +++
>  include/xilinx-firmware.h             |  54 ++++
>  9 files changed, 738 insertions(+), 373 deletions(-)
>  create mode 100644 drivers/firmware/xilinx-fpga.c
>  create mode 100644 drivers/firmware/zynq-fpga.c
>  create mode 100644 include/mach/zynq/firmware-zynq.h
>  create mode 100644 include/xilinx-firmware.h
> 
[...]
> diff --git a/include/mach/zynqmp/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
> index 9f833189d3..236bd94e86 100644
> --- a/include/mach/zynqmp/firmware-zynqmp.h
> +++ b/include/mach/zynqmp/firmware-zynqmp.h

It's confusing because of the term "firmware", but firmware-zynqmp.h is
meant as an interface to the PMU (platform management unit) firmware and
not for the barebox firmware manager for bitstream loading. (Even though
bitstream loading is implemented by the PMU firmware on ZynqMP.)

I'd prefer if we could avoid adding bitstream description to this
header. May be add a new "zynqmp-fpga.h" or "zynqmp-pcap.h" header for
the definitions.

> @@ -15,6 +15,8 @@
>  #ifndef FIRMWARE_ZYNQMP_H_
>  #define FIRMWARE_ZYNQMP_H_
>  
> +#include <xilinx-firmware.h>
> +
>  #define PAYLOAD_ARG_CNT			4
>  
>  #define ZYNQMP_PM_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
> @@ -27,6 +29,18 @@
>  
>  #define ZYNQMP_PCAP_STATUS_FPGA_DONE	BIT(3)
>  
> +#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
> +#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
> +
> +#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
> +#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
> +					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)

These definitions can be left in zynqmp-fpga.c, because these are PMU
version dependent features of the zynqmp-fpga specific bitstream loading
implementation.

> +
> +#define ZYNQMP_BUS_WIDTH_AUTO_DETECT1_OFFSET	16
> +#define ZYNQMP_BUS_WIDTH_AUTO_DETECT2_OFFSET	17
> +#define ZYNQMP_SYNC_WORD_OFFSET			20
> +#define ZYNQMP_BIN_HEADER_LENGTH		21
> +

These definitions can be moved to xilinx-fpga.c, because they describe
properties of the bitstream (and different bitstream formats).

>  /* ZynqMP SD tap delay tuning */
>  #define SD_ITAPDLY	0xFF180314
>  #define SD_OTAPDLYSEL	0xFF180318
> @@ -138,4 +152,29 @@ int zynqmp_pm_read_ggs(u32 index, u32 *value);
>  int zynqmp_pm_write_pggs(u32 index, u32 value);
>  int zynqmp_pm_read_pggs(u32 index, u32 *value);
>  
> +
> +struct zynqmp_private {
> +	const struct zynqmp_eemi_ops *eemi_ops;
> +};

I'd add this in zynqmp-fpga.c.

> +
> +
> +#if defined(CONFIG_FIRMWARE_ZYNQMP_FPGA)
> +int zynqmp_init(struct fpgamgr *mgr, struct device *dev);
> +int zynqmp_programmed_get(struct fpgamgr *mgr);
> +int zynqmp_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags);
> +#else
> +static inline int zynqmp_init(struct fpgamgr *mgr, struct device *dev)
> +{
> +	return -ENOSYS;
> +}
> +static inline int zynqmp_programmed_get(struct fpgamgr *mgr)
> +{
> +	return -ENOSYS;
> +}
> +static inline int zynqmp_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags)
> +{
> +	return -ENOSYS;
> +}
> +#endif

These definitions belong into a "zynqmp-fpga.h" or "zynqmp-pcap.h"
header which describes the interface between the generic and the zynqmp
specific parts of the bitstream loading.

> +
>  #endif /* FIRMWARE_ZYNQMP_H_ */
> diff --git a/include/xilinx-firmware.h b/include/xilinx-firmware.h
> new file mode 100644
> index 0000000000..4aacba622c
> --- /dev/null
> +++ b/include/xilinx-firmware.h
> @@ -0,0 +1,54 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef XILINX_FIRMWARE_H
> +#define XILINX_FIRMWARE_H
> +
> +#include <firmware.h>
> +
> +#define DUMMY_WORD			0xFFFFFFFF
> +#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
> +#define BUS_WIDTH_AUTO_DETECT2		0x11220044
> +#define SYNC_WORD			0xAA995566
> +
> +enum xilinx_byte_order {
> +	XILINX_BYTE_ORDER_BIT,
> +	XILINX_BYTE_ORDER_BIN,
> +};
> +
> +struct fpgamgr;
> +
> +struct xilinx_fpga_devdata {
> +	u8 bus_width_auto_detect1_offset;
> +	u8 bus_width_auto_detect2_offset;
> +	u8 sync_word_offset;
> +	u8 bin_header_length;
> +	int (*dev_init)(struct fpgamgr *, struct device *);
> +	int (*dev_progammed_get)(struct fpgamgr *);

Typo: dev_progammed_get -> dev_programmed_get

> +	int (*dev_fpga_load)(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags);
> +};
> +
> +struct fpgamgr {
> +	struct firmware_handler fh;
> +	struct device dev;
> +	void *private;
> +	int programmed;
> +	char *buf;
> +	size_t size;
> +	u32 features;
> +	const struct xilinx_fpga_devdata *devdata;
> +};
> +
> +struct bs_header {
> +	__be16 length;
> +	u8 padding[9];
> +	__be16 size;
> +	char entries[0];
> +} __attribute__ ((packed));
> +
> +struct bs_header_entry {
> +	char type;
> +	__be16 length;
> +	char data[0];
> +} __attribute__ ((packed));
> +
> +#endif /* XILINX_FIRMWARE_H */
> -- 
> 2.34.1


