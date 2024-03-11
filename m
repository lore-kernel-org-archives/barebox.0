Delivery-date: Mon, 11 Mar 2024 09:43:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbFw-000nvB-0w
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:43:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbFv-0008OJ-2B
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:43:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1R5QFp1y6F8CzyT3Vb0dBtfcj3iPIFWjHDSDli/zwk=; b=kCXNxXEm+4SKUYM4H75YI8TujP
	Ma5UkUfmAj861c4tEJlLba3py86S/GFbc9Q/lrjIGOrfRGCe2BcrqO00KrJKSg1K98KUIlG7uKFdW
	DnNrXpyQiW1o0fGA52jTKAXXjB96G7JaRCXZ2hNUwQ/DVaeajOo6riuV7njQ80agS0KRklCjpQJO2
	rFwl8gklI93UFIk8txAcN01LMOedkVIZdaFn0Gi3Lc+vWf3rODCSj3L2istnk1Pp5cc1xiifexTNa
	gtFFw4B1dm/n10sNgysssnqQfivIwwxXR0j+FTOC39ULJ9E6iBhPpKTisoMkyI7k0iUdM2GCvVg41
	DNAjcXZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbFS-00000000f9U-3KVz;
	Mon, 11 Mar 2024 08:43:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbFP-00000000f88-0uu8
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:43:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjbFO-0007YF-2Y; Mon, 11 Mar 2024 09:43:02 +0100
Message-ID: <a65c6f88-4abc-4be1-a542-1239c2534da5@pengutronix.de>
Date: Mon, 11 Mar 2024 09:43:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-2-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-2-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_014303_359098_ED94CC32 
X-CRM114-Status: GOOD (  25.29  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/12] zynqmp: firmware: add functions to set tap delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:17, Steffen Trumtrar wrote:
> Add a function to set the tap delay for the clk phase of the sd host
> controller.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-zynqmp/firmware-zynqmp.c | 42 ++++++++++++++++++++++++++++++++++
>  include/mach/zynqmp/firmware-zynqmp.h  | 23 +++++++++++++++++++
>  2 files changed, 65 insertions(+)
> 
> diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
> index b383ed6f00..039a46e767 100644
> --- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
> +++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
> @@ -48,6 +48,7 @@ enum pm_ret_status {
>  
>  enum pm_api_id {
>  	PM_GET_API_VERSION = 1,
> +	PM_MMIO_WRITE = 19,
>  	PM_FPGA_LOAD = 22,
>  	PM_FPGA_GET_STATUS,
>  	PM_IOCTL = 34,
> @@ -511,6 +512,47 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
>  				   arg1, arg2, out);
>  }
>  
> +/**
> + * zynqmp_pm_set_sd_tapdelay() -  Set tap delay for the SD device
> + *
> + * @node_id:	Node ID of the device
> + * @type:	Type of tap delay to set (input/output)
> + * @value:	Value to set fot the tap delay
> + *
> + * This function sets input/output tap delay for the SD device.
> + *
> + * Return:	Returns status, either success or error+reason
> + */
> +int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value)
> +{
> +	u32 reg = (type == PM_TAPDELAY_INPUT) ? SD_ITAPDLY : SD_OTAPDLYSEL;
> +	u32 mask = (node_id == NODE_SD_0) ? GENMASK(15, 0) : GENMASK(31, 16);
> +
> +	if (value) {
> +		return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
> +					   IOCTL_SET_SD_TAPDELAY,
> +					   type, value, NULL);
> +	}
> +
> +	/*
> +	 * Work around completely misdesigned firmware API on Xilinx ZynqMP.
> +	 * The IOCTL_SET_SD_TAPDELAY firmware call allows the caller to only
> +	 * ever set IOU_SLCR SD_ITAPDLY Register SD0_ITAPDLYENA/SD1_ITAPDLYENA
> +	 * bits, but there is no matching call to clear those bits. If those
> +	 * bits are not cleared, SDMMC tuning may fail.
> +	 *
> +	 * Luckily, there are PM_MMIO_READ/PM_MMIO_WRITE calls which seem to
> +	 * allow complete unrestricted access to all address space, including
> +	 * IOU_SLCR SD_ITAPDLY Register and all the other registers, access
> +	 * to which was supposed to be protected by the current firmware API.
> +	 *
> +	 * Use PM_MMIO_READ/PM_MMIO_WRITE to re-implement the missing counter
> +	 * part of IOCTL_SET_SD_TAPDELAY which clears SDx_ITAPDLYENA bits.
> +	 */
> +	return zynqmp_pm_invoke_fn(PM_MMIO_WRITE, reg, mask, 0, 0, NULL);
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_set_sd_tapdelay);
> +
>  /**
>   * zynqmp_pm_sd_dll_reset() - Reset DLL logic
>   *
> diff --git a/include/mach/zynqmp/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
> index 630677285f..00c63058f4 100644
> --- a/include/mach/zynqmp/firmware-zynqmp.h
> +++ b/include/mach/zynqmp/firmware-zynqmp.h
> @@ -27,6 +27,10 @@
>  
>  #define ZYNQMP_PCAP_STATUS_FPGA_DONE	BIT(3)
>  
> +/* ZynqMP SD tap delay tuning */
> +#define SD_ITAPDLY	0xFF180314
> +#define SD_OTAPDLYSEL	0xFF180318
> +
>  enum pm_ioctl_id {
>  	IOCTL_GET_RPU_OPER_MODE = 0,
>  	IOCTL_SET_RPU_OPER_MODE = 1,
> @@ -80,6 +84,22 @@ struct zynqmp_pm_query_data {
>  	u32 arg3;
>  };
>  
> +enum pm_node_id {
> +	NODE_SD_0 = 39,
> +	NODE_SD_1 = 40,
> +};
> +
> +enum tap_delay_type {
> +	PM_TAPDELAY_INPUT = 0,
> +	PM_TAPDELAY_OUTPUT = 1,
> +};
> +
> +enum dll_reset_type {
> +	PM_DLL_RESET_ASSERT = 0,
> +	PM_DLL_RESET_RELEASE = 1,
> +	PM_DLL_RESET_PULSE = 2,
> +};
> +
>  struct zynqmp_eemi_ops {
>  	int (*get_api_version)(u32 *version);
>  	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
> @@ -99,6 +119,9 @@ struct zynqmp_eemi_ops {
>  
>  const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
>  
> +int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
> +int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
> +
>  int zynqmp_pm_write_ggs(u32 index, u32 value);
>  int zynqmp_pm_read_ggs(u32 index, u32 *value);
>  int zynqmp_pm_write_pggs(u32 index, u32 value);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



