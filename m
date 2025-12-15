Delivery-date: Mon, 15 Dec 2025 15:25:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9WH-00Bm04-1z
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:25:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9WH-0003BJ-2x
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:25:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z61yh8EcXu+JHrt6/eeQYnBXZ3798JOzwVde3T22ZE0=; b=cle4rte+AzZ9jjCel/PKYdrVIw
	wBffsjV/9PJRctM90VacRCH+FksZTFJcZnaW/41wBfQTv89UGCvTTDhFr6nB2j6wJfcze3Vl/zYN6
	P4/W0QNM5VykBXmzGpUfmjWyUCzPQ8lqP/BRJ7DyfhahOJVMJ5DD5Fna0eqwIdeo2Kqi1IuIQJWFU
	8mZ9P9ILIOhqoIpTsH6TdPUDsJMD5MLXwOAYMHVF3+3SZ8tOVQ7qTTEct38f1iaOVCScq1xm2qdeT
	YF1GBNKlmkWKJyQtK5JyvahDD1uu4srILZ2U1cN66NSV3mDU2aahuzK4P++ZxkrL3KA/4mZhCsMu/
	xcMlp9bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Vl-00000003nKR-29BT;
	Mon, 15 Dec 2025 14:25:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Vf-00000003nJu-084B
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:25:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV9Vd-00036n-Bz; Mon, 15 Dec 2025 15:25:09 +0100
Message-ID: <789ef3a6-6bf5-4704-b83d-692d06b992ed@pengutronix.de>
Date: Mon, 15 Dec 2025 15:25:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
 <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-2-11eea1b2ef41@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-2-11eea1b2ef41@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062511_650221_1657DFB8 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] dts: include: reset: rst-mgr-s10: add SOFTPYH_RESET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 12/15/25 3:21 PM, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  dts/include/dt-bindings/reset/altr,rst-mgr-s10.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> index 04c4d0c6fd..e0f3d5395c 100644
> --- a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> +++ b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> @@ -22,7 +22,7 @@
>  #define USB0_RESET		35
>  #define USB1_RESET		36
>  #define NAND_RESET		37
> -/* 38 is empty */
> +#define SOFTPHY_RESET		38

I don't find this definition in v6.19-rc1. A commit message might have
told me where this is from, but there is none :(

Anyways, we don't patch dts/, so this patch is not appropriate.

Cheers,
Ahmad

>  #define SDMMC_RESET		39
>  #define EMAC0_OCP_RESET		40
>  #define EMAC1_OCP_RESET		41
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



