Delivery-date: Tue, 08 Mar 2022 17:37:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcqU-004qXf-Fu
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:37:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcqS-00029S-6i
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:37:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bax9snJ1LhYVX3YcWGOnTTIGKs/8AUsWkPs9EXctkZs=; b=kUwlaOq89VfxuZ
	pcIpUl3htn89iokCjQBZYWNGUu10/PoO5rWKVXW7TFTmHfikNzkAJMNPO/WE4s/sc6/z4rB7q9RXq
	14pFDJp6RJvzFmlS7ZYYejNCo4Npw7f0FR0Zl45adtubjgPi9IyhU5FXFn9WIC37+7RRp4kxPiPSc
	lz67ZWOlJOskEejhimDiGVUz2svO/a7MjwvV5A0oYd9cGE5ZY9neJd/XAyfwGVJUVoOMGxmVgeBq7
	+VxxxlDcu0HsggF/Yx58X6Bs1Kvuos1vjCL1WPJ8fX7RcJtL87ZzTXp3yqIxXS5gUtJ3z1kPJ3sAj
	1JZB57xxkFKcPrd+4cag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcp1-005FMa-Pb; Tue, 08 Mar 2022 16:36:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcXD-005AJ8-Hw
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:18:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nRcXB-0007pa-NG; Tue, 08 Mar 2022 17:18:01 +0100
Message-ID: <6bb66bba-816f-cbc9-8887-9b616fbabcf6@pengutronix.de>
Date: Tue, 8 Mar 2022 17:18:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Joacim Zetterling <joacim.zetterling@westermo.com>,
 barebox@lists.infradead.org
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
 <20220308160801.782206-2-joacim.zetterling@westermo.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220308160801.782206-2-joacim.zetterling@westermo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_081803_820630_2089BFC7 
X-CRM114-Status: GOOD (  43.82  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] arch: arm: imx: spi: Add QSPI boot support to the
 IMX8 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Joacim,

On 08.03.22 17:07, Joacim Zetterling wrote:
> The IMX8 platforms does only support boot from a SD or an EMMC
> device. With this functionality also a boot from a QSPI device
> is possible. For the moment only the IMX8MN platform is supported.

Did you consider using the return to boot ROM feature of the i.MX8MN
to implement this? Added benefit is that you can use this for
USB boot (SDPS) as well. I have been successfully using Uwe's patches
for the i.MX8MP[1] locally on the i.MX8MN for USB boot.

Although seeing that the QSPI is memory-mapped, it's probably much
less effort to just use it directly.

[1]: https://lore.barebox.org/barebox/20210813152245.15841-2-u.kleine-koenig@pengutronix.de/

Cheers,
Ahmad

> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> ---
>  arch/arm/mach-imx/Makefile             |   1 +
>  arch/arm/mach-imx/include/mach/xload.h |   1 +
>  arch/arm/mach-imx/xload-qspi.c         | 145 +++++++++++++++++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 arch/arm/mach-imx/xload-qspi.c
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 2cafcd77e00d..d844196422df 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -29,3 +29,4 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
>  obj-$(CONFIG_RESET_IMX_SRC) += src.o
>  lwl-y += cpu_init.o
>  pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
> +pbl-y += xload-qspi.o
> diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
> index 03ec23ebbdb0..1876f3a4bd18 100644
> --- a/arch/arm/mach-imx/include/mach/xload.h
> +++ b/arch/arm/mach-imx/include/mach/xload.h
> @@ -11,6 +11,7 @@ int imx6_nand_start_image(void);
>  int imx7_esdhc_start_image(int instance);
>  int imx8m_esdhc_load_image(int instance, bool start);
>  int imx8mn_esdhc_load_image(int instance, bool start);
> +int imx8mn_qspi_start_image(int instance, bool start);
>  int imx8mp_esdhc_load_image(int instance, bool start);
>  
>  int imx_image_size(void);
> diff --git a/arch/arm/mach-imx/xload-qspi.c b/arch/arm/mach-imx/xload-qspi.c
> new file mode 100644
> index 000000000000..c8305f15ee0a
> --- /dev/null
> +++ b/arch/arm/mach-imx/xload-qspi.c
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <common.h>
> +#include <asm-generic/sections.h>
> +#include <asm/cache.h>
> +#include <mach/xload.h>
> +#include <mach/imx8mn-regs.h>
> +#include <mach/imx-header.h>
> +
> +#include <io.h>
> +#include <regmap.h>
> +#include <linux/sizes.h>
> +
> +#include <mach/atf.h>
> +
> +#define HDR_SIZE		512
> +
> +#define IMX8M_QSPI_MMAP		0x8000000
> +
> +
> +static int check_ivt_header_v2(struct imx_flash_header_v2 **header_pointer,
> +			    void *buf, u32 offset, u32 ivt_offset)
> +{
> +	int i, header_count = 1;
> +	struct imx_flash_header_v2 *hdr;
> +
> +	for (i = 0; i < header_count; i++) {
> +		hdr = buf + offset + ivt_offset;
> +
> +		if (!is_imx_flash_header_v2(hdr)) {
> +			pr_debug("IVT header not found in QSPI. "
> +				 "Found tag: 0x%02x length: 0x%04x "
> +				 "version: %02x\n",
> +				 hdr->header.tag, hdr->header.length,
> +				 hdr->header.version);
> +			return -EINVAL;
> +		}
> +
> +		if (IS_ENABLED(CONFIG_ARCH_IMX8MQ) &&
> +		    hdr->boot_data.plugin & PLUGIN_HDMI_IMAGE) {
> +			/*
> +			 * In images that include signed HDMI
> +			 * firmware, first v2 header would be
> +			 * dedicated to that and would not contain any
> +			 * useful for us information. In order for us
> +			 * to pull the rest of the bootloader image
> +			 * in, we need to re-read header from SD/MMC,
> +			 * this time skipping anything HDMI firmware
> +			 * related.
> +			 */
> +			offset += hdr->boot_data.size + hdr->header.length;
> +			header_count++;
> +		}
> +	}
> +
> +	*header_pointer = hdr;
> +	return 0;
> +}
> +
> +static int
> +imx8m_qspi_load_image(void __iomem *ahb_addr, ptrdiff_t address,
> +		 ptrdiff_t entry, u32 offset, u32 ivt_offset, bool start)
> +{
> +	void *buf = (void *)address;
> +	struct imx_flash_header_v2 *hdr = NULL;
> +	int ret, len;
> +	void __noreturn (*bb)(void);
> +	unsigned int ofs;
> +
> +	len = imx_image_size();
> +
> +	/* Read out the data directly from the AHB buffer. */
> +	memcpy(buf, __io_virt((void *)ahb_addr), 0x2000);
> +
> +	ret = check_ivt_header_v2(&hdr, buf, offset, ivt_offset);
> +	if (ret)
> +		return ret;
> +
> +	pr_debug("Check ok, loading image\n");
> +
> +	ofs = offset + hdr->entry - hdr->boot_data.start;
> +
> +	if (entry != address) {
> +		/*
> +		 * Passing entry different from address is interpreted
> +		 * as a request to place the image such that its entry
> +		 * point would be exactly at 'entry', that is:
> +		 *
> +		 *     buf + ofs = entry
> +		 *
> +		 * solving the above for 'buf' gives us the
> +		 * adjustment that needs to be made:
> +		 *
> +		 *     buf = entry - ofs
> +		 *
> +		 */
> +		if (WARN_ON(entry - ofs < address)) {
> +			/*
> +			 * We want to make sure we won't try to place
> +			 * the start of the image before the beginning
> +			 * of the memory buffer we were given in
> +			 * address.
> +			 */
> +			return -EINVAL;
> +		}
> +
> +		buf = (void *)(entry - ofs);
> +	}
> +
> +	/* Read out the data directly from the AHB buffer. */
> +	memcpy(buf, __io_virt((void *)ahb_addr), len + SZ_4K);

Why the SZ_4K?

> +
> +	pr_debug("Image loaded successfully\n");
> +
> +	if (!start)
> +		return 0;
> +
> +	bb = buf + ofs;
> +
> +	sync_caches_for_execution();
> +
> +	bb();
> +}
> +
> +/**
> + * imx8mn_qspi_start_image - Load and optionally start an image from the
> + * FlexSPI controller.
> + * @instance: The FlexSPI controller instance (0)
> + * @start: Whether to directly start the loaded image
> + *
> + * This uses imx8m_qspi_load_image() to load an image from QSPI. It is assumed
> + * that the image is the currently running barebox image (This information
> + * is used to calculate the length of the image).
> + * The image is started afterwards.
> + *
> + * Return: If successful, this function does not return (if directly started)
> + * or 0. A negative error code is returned when this function fails.
> + */
> +int imx8mn_qspi_start_image(int instance, bool start)
> +{
> +	void __iomem *ahb_addr = IOMEM(IMX8M_QSPI_MMAP);
> +
> +	return imx8m_qspi_load_image(ahb_addr, MX8M_DDR_CSD1_BASE_ADDR,
> +				MX8M_ATF_BL33_BASE_ADDR, SZ_4K, 0, start);
> +}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

