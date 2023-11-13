Delivery-date: Mon, 13 Nov 2023 08:26:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2RL0-009iFC-2J
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 08:26:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2RL0-00048t-Aj
	for lore@pengutronix.de; Mon, 13 Nov 2023 08:26:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IDlSDL3Dlo/ygbSDQN/j+IqZOs7LL8wEdb6kCj34QrM=; b=q3hnc/gwwcFQjRw++N+8YaJN8x
	CtbVhvRvT0nZV7aohV671jx5n7flYNa7fbhDm1w5XlaXT0Nn3GHNKPLYnqYYgFK35Q0pkoAzJutDd
	Pxr7ETaiYZdImiSSv+D13B+NDkq8ZJnfeCDPAhfjhoPJo98tKvE34H7z1U90SVtWLWkvtLA/AKWAm
	va/bjhQEU77Ov6CFxx2pbtK6o0pZYcWwkdbPC2e1D5ahw7/ezDiPVTU1ckr9dEVSVcxrf0LhIcsI0
	SLLBDMoZEdZw34wsXqYPlQHvCnmOPzLcLJY3f/3gUH3HwiAbadrA8zwY3EAf1TYiRaPtNYuF3UGmJ
	incc2J9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2RJu-00DR3a-27;
	Mon, 13 Nov 2023 07:25:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2RJq-00DR32-1E
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 07:25:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r2RJp-0003yF-1G; Mon, 13 Nov 2023 08:25:13 +0100
Message-ID: <01d5c7e8-10b3-eabb-3c1b-d1ed5260e71c@pengutronix.de>
Date: Mon, 13 Nov 2023 08:25:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
 <20231110125800.1901232-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231110125800.1901232-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231112_232514_577193_40762CEA 
X-CRM114-Status: GOOD (  24.71  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/25] ARM: i.MX: Add i.MX93 s4mu support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10.11.23 13:57, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

A short message along the lines of: We will require to communicate with
the ELE firmware/coprocessor/? for X, so add support here would be good
to have.

Thanks,
Ahmad

> ---
>  arch/arm/mach-imx/Makefile     |   1 +
>  arch/arm/mach-imx/imx93-s4mu.c |  97 ++++++++++++++++++++++++++
>  include/soc/imx9/mu_hal.h      |  12 ++++
>  include/soc/imx9/s400_api.h    | 124 +++++++++++++++++++++++++++++++++
>  4 files changed, 234 insertions(+)
>  create mode 100644 arch/arm/mach-imx/imx93-s4mu.c
>  create mode 100644 include/soc/imx9/mu_hal.h
>  create mode 100644 include/soc/imx9/s400_api.h
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 7b093ba7fd..4efac08ee8 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -33,3 +33,4 @@ obj-$(CONFIG_RESET_IMX_SRC) += src.o
>  lwl-y += cpu_init.o
>  pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
>  pbl-y += xload-qspi.o
> +pbl-$(CONFIG_ARCH_IMX93) += imx93-s4mu.o
> diff --git a/arch/arm/mach-imx/imx93-s4mu.c b/arch/arm/mach-imx/imx93-s4mu.c
> new file mode 100644
> index 0000000000..11a787d44d
> --- /dev/null
> +++ b/arch/arm/mach-imx/imx93-s4mu.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2020-2022 NXP
> + */
> +#define pr_fmt(fmt) "s4mu: " fmt
> +
> +#include <common.h>
> +#include <io.h>
> +#include <soc/imx9/s400_api.h>
> +#include <soc/imx9/mu_hal.h>
> +#include <linux/iopoll.h>
> +
> +#define MU_SR_TE0_MASK		BIT(0)
> +#define MU_SR_RF0_MASK		BIT(0)
> +#define MU_TR_COUNT		8
> +#define MU_RR_COUNT		4
> +
> +struct mu_type {
> +	u32 ver;
> +	u32 par;
> +	u32 cr;
> +	u32 sr;
> +	u32 reserved0[60];
> +	u32 fcr;
> +	u32 fsr;
> +	u32 reserved1[2];
> +	u32 gier;
> +	u32 gcr;
> +	u32 gsr;
> +	u32 reserved2;
> +	u32 tcr;
> +	u32 tsr;
> +	u32 rcr;
> +	u32 rsr;
> +	u32 reserved3[52];
> +	u32 tr[16];
> +	u32 reserved4[16];
> +	u32 rr[16];
> +	u32 reserved5[14];
> +	u32 mu_attr;
> +};
> +
> +void mu_hal_init(ulong base)
> +{
> +	struct mu_type *mu_base = (struct mu_type *)base;
> +
> +	writel(0, &mu_base->tcr);
> +	writel(0, &mu_base->rcr);
> +}
> +
> +int mu_hal_sendmsg(ulong base, u32 reg_index, u32 msg)
> +{
> +	struct mu_type *mu_base = (struct mu_type *)base;
> +	u32 mask = MU_SR_TE0_MASK << reg_index;
> +	u32 val;
> +	int ret;
> +
> +	BUG_ON(reg_index >= MU_TR_COUNT);
> +
> +	pr_vdebug("sendmsg tsr 0x%x\n", readl(&mu_base->tsr));
> +
> +	/* Wait TX register to be empty. */
> +	ret = readl_poll_timeout(&mu_base->tsr, val, val & mask, 10000);
> +	if (ret < 0) {
> +		pr_debug("%s timeout\n", __func__);
> +		return -ETIMEDOUT;
> +	}
> +
> +	pr_vdebug("tr[%d] 0x%x\n", reg_index, msg);
> +
> +	writel(msg, &mu_base->tr[reg_index]);
> +
> +	return 0;
> +}
> +
> +int mu_hal_receivemsg(ulong base, u32 reg_index, u32 *msg)
> +{
> +	struct mu_type *mu_base = (struct mu_type *)base;
> +	u32 mask = MU_SR_RF0_MASK << reg_index;
> +	u32 val;
> +	int ret;
> +
> +	BUG_ON(reg_index >= MU_RR_COUNT);
> +
> +	pr_vdebug("receivemsg rsr 0x%x\n", readl(&mu_base->rsr));
> +
> +	/* Wait RX register to be full. */
> +	ret = readl_poll_timeout(&mu_base->rsr, val, val & mask, 10000000);
> +	if (ret < 0)
> +		return -ETIMEDOUT;
> +
> +	*msg = readl(&mu_base->rr[reg_index]);
> +
> +	pr_vdebug("rr[%d] 0x%x\n", reg_index, *msg);
> +
> +	return 0;
> +}
> diff --git a/include/soc/imx9/mu_hal.h b/include/soc/imx9/mu_hal.h
> new file mode 100644
> index 0000000000..5db559c1ac
> --- /dev/null
> +++ b/include/soc/imx9/mu_hal.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#ifndef __SNT_MU_HAL_H__
> +#define __SNT_MU_HAL_H__
> +
> +void mu_hal_init(ulong base);
> +int mu_hal_sendmsg(ulong base, u32 reg_index, u32 msg);
> +int mu_hal_receivemsg(ulong base, u32 reg_index, u32 *msg);
> +#endif
> diff --git a/include/soc/imx9/s400_api.h b/include/soc/imx9/s400_api.h
> new file mode 100644
> index 0000000000..6d2dd71d67
> --- /dev/null
> +++ b/include/soc/imx9/s400_api.h
> @@ -0,0 +1,124 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#ifndef __S400_API_H__
> +#define __S400_API_H__
> +
> +#define AHAB_VERSION    0x6
> +#define AHAB_CMD_TAG    0x17
> +#define AHAB_RESP_TAG   0xe1
> +
> +/* ELE commands */
> +#define ELE_PING_REQ (0x01)
> +#define ELE_FW_AUTH_REQ (0x02)
> +#define ELE_RESTART_RST_TIMER_REQ (0x04)
> +#define ELE_DUMP_DEBUG_BUFFER_REQ (0x21)
> +#define ELE_OEM_CNTN_AUTH_REQ (0x87)
> +#define ELE_VERIFY_IMAGE_REQ (0x88)
> +#define ELE_RELEASE_CONTAINER_REQ (0x89)
> +#define ELE_WRITE_SECURE_FUSE_REQ (0x91)
> +#define ELE_FWD_LIFECYCLE_UP_REQ (0x95)
> +#define ELE_READ_FUSE_REQ (0x97)
> +#define ELE_GET_FW_VERSION_REQ (0x9D)
> +#define ELE_RET_LIFECYCLE_UP_REQ (0xA0)
> +#define ELE_GET_EVENTS_REQ (0xA2)
> +#define ELE_START_RNG (0xA3)
> +#define ELE_GENERATE_DEK_BLOB (0xAF)
> +#define ELE_ENABLE_PATCH_REQ (0xC3)
> +#define ELE_RELEASE_RDC_REQ (0xC4)
> +#define ELE_GET_FW_STATUS_REQ (0xC5)
> +#define ELE_ENABLE_OTFAD_REQ (0xC6)
> +#define ELE_RESET_REQ (0xC7)
> +#define ELE_UPDATE_OTP_CLKDIV_REQ (0xD0)
> +#define ELE_POWER_DOWN_REQ (0xD1)
> +#define ELE_ENABLE_APC_REQ (0xD2)
> +#define ELE_ENABLE_RTC_REQ (0xD3)
> +#define ELE_DEEP_POWER_DOWN_REQ (0xD4)
> +#define ELE_STOP_RST_TIMER_REQ (0xD5)
> +#define ELE_WRITE_FUSE_REQ (0xD6)
> +#define ELE_RELEASE_CAAM_REQ (0xD7)
> +#define ELE_RESET_A35_CTX_REQ (0xD8)
> +#define ELE_MOVE_TO_UNSECURED_REQ (0xD9)
> +#define ELE_GET_INFO_REQ (0xDA)
> +#define ELE_ATTEST_REQ (0xDB)
> +#define ELE_RELEASE_PATCH_REQ (0xDC)
> +#define ELE_OTP_SEQ_SWITH_REQ (0xDD)
> +
> +/* ELE failure indications */
> +#define ELE_ROM_PING_FAILURE_IND (0x0A)
> +#define ELE_FW_PING_FAILURE_IND (0x1A)
> +#define ELE_BAD_SIGNATURE_FAILURE_IND (0xF0)
> +#define ELE_BAD_HASH_FAILURE_IND (0xF1)
> +#define ELE_INVALID_LIFECYCLE_IND (0xF2)
> +#define ELE_PERMISSION_DENIED_FAILURE_IND (0xF3)
> +#define ELE_INVALID_MESSAGE_FAILURE_IND (0xF4)
> +#define ELE_BAD_VALUE_FAILURE_IND (0xF5)
> +#define ELE_BAD_FUSE_ID_FAILURE_IND (0xF6)
> +#define ELE_BAD_CONTAINER_FAILURE_IND (0xF7)
> +#define ELE_BAD_VERSION_FAILURE_IND (0xF8)
> +#define ELE_INVALID_KEY_FAILURE_IND (0xF9)
> +#define ELE_BAD_KEY_HASH_FAILURE_IND (0xFA)
> +#define ELE_NO_VALID_CONTAINER_FAILURE_IND (0xFB)
> +#define ELE_BAD_CERTIFICATE_FAILURE_IND (0xFC)
> +#define ELE_BAD_UID_FAILURE_IND (0xFD)
> +#define ELE_BAD_MONOTONIC_COUNTER_FAILURE_IND (0xFE)
> +#define ELE_MUST_SIGNED_FAILURE_IND (0xE0)
> +#define ELE_NO_AUTHENTICATION_FAILURE_IND (0xEE)
> +#define ELE_BAD_SRK_SET_FAILURE_IND (0xEF)
> +#define ELE_UNALIGNED_PAYLOAD_FAILURE_IND (0xA6)
> +#define ELE_WRONG_SIZE_FAILURE_IND (0xA7)
> +#define ELE_ENCRYPTION_FAILURE_IND (0xA8)
> +#define ELE_DECRYPTION_FAILURE_IND (0xA9)
> +#define ELE_OTP_PROGFAIL_FAILURE_IND (0xAA)
> +#define ELE_OTP_LOCKED_FAILURE_IND (0xAB)
> +#define ELE_OTP_INVALID_IDX_FAILURE_IND (0xAD)
> +#define ELE_TIME_OUT_FAILURE_IND (0xB0)
> +#define ELE_BAD_PAYLOAD_FAILURE_IND (0xB1)
> +#define ELE_WRONG_ADDRESS_FAILURE_IND (0xB4)
> +#define ELE_DMA_FAILURE_IND (0xB5)
> +#define ELE_DISABLED_FEATURE_FAILURE_IND (0xB6)
> +#define ELE_MUST_ATTEST_FAILURE_IND (0xB7)
> +#define ELE_RNG_NOT_STARTED_FAILURE_IND (0xB8)
> +#define ELE_CRC_ERROR_IND (0xB9)
> +#define ELE_AUTH_SKIPPED_OR_FAILED_FAILURE_IND (0xBB)
> +#define ELE_INCONSISTENT_PAR_FAILURE_IND (0xBC)
> +#define ELE_RNG_INST_FAILURE_FAILURE_IND (0xBD)
> +#define ELE_LOCKED_REG_FAILURE_IND (0xBE)
> +#define ELE_BAD_ID_FAILURE_IND (0xBF)
> +#define ELE_INVALID_OPERATION_FAILURE_IND (0xC0)
> +#define ELE_NON_SECURE_STATE_FAILURE_IND (0xC1)
> +#define ELE_MSG_TRUNCATED_IND (0xC2)
> +#define ELE_BAD_IMAGE_NUM_FAILURE_IND (0xC3)
> +#define ELE_BAD_IMAGE_ADDR_FAILURE_IND (0xC4)
> +#define ELE_BAD_IMAGE_PARAM_FAILURE_IND (0xC5)
> +#define ELE_BAD_IMAGE_TYPE_FAILURE_IND (0xC6)
> +#define ELE_CORRUPTED_SRK_FAILURE_IND (0xD0)
> +#define ELE_OUT_OF_MEMORY_IND (0xD1)
> +#define ELE_CSTM_FAILURE_IND (0xCF)
> +#define ELE_OLD_VERSION_FAILURE_IND (0xCE)
> +#define ELE_WRONG_BOOT_MODE_FAILURE_IND (0xCD)
> +#define ELE_APC_ALREADY_ENABLED_FAILURE_IND (0xCB)
> +#define ELE_RTC_ALREADY_ENABLED_FAILURE_IND (0xCC)
> +#define ELE_ABORT_IND (0xFF)
> +
> +/* ELE IPC identifier */
> +#define ELE_IPC_MU_RTD (0x1)
> +#define ELE_IPC_MU_APD (0x2)
> +
> +/* ELE Status*/
> +#define ELE_SUCCESS_IND (0xD6)
> +#define ELE_FAILURE_IND (0x29)
> +
> +#define S400_MAX_MSG          255U
> +
> +struct sentinel_msg {
> +	u8 version;
> +	u8 size;
> +	u8 command;
> +	u8 tag;
> +	u32 data[(S400_MAX_MSG - 1U)];
> +};
> +
> +#endif

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



