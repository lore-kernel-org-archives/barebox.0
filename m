Delivery-date: Thu, 15 Jan 2026 15:31:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOO0-001cgc-1b
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:31:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgONz-0001YO-GX
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6c7f9iSzva4FM3l0cYqpHFWpT4m9KdtYz8sccrNDpZo=; b=ZZNNthxe9pZn5UnaAbWmkNu/sS
	Dony/IfRsUqPtzq1C5swciSqikE0Mrh2VCUhVgzxVmo2cxjVyMe5AJh33AujRmqaZdnXGQBAUme57
	CxrmMuwct45Y7MRItZ3/RLnFc6+V9Bi25BLTvbgvEC4apq7uv+nnBd+Ka+qonFw5cudHPqawAHTn+
	Zsb8vio+/jkHS+LaNWRhbXeC5SoCdFl7dtMkQl58zMJ8d5ygjo+ED7ppvsq7TtH/TuDrwEHAD65IM
	pSueJ10cevZB6vOza8aT958akiclS1kjqTt07yawQdvuhz+NL0INdJMCmd5Ym6Ud1TtMg1BcVs1iH
	+9/uQk6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgONW-0000000CULf-2Wdz;
	Thu, 15 Jan 2026 14:31:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgONU-0000000CULD-2DSX
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:31:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgONS-0001S1-Qg; Thu, 15 Jan 2026 15:31:10 +0100
Message-ID: <2eefe097-35f8-4016-9a67-7f4efbc1fec4@pengutronix.de>
Date: Thu, 15 Jan 2026 15:31:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-17-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-17-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_063112_565051_F27A718D 
X-CRM114-Status: GOOD (  15.59  )
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
Subject: Re: [PATCH 17/23] handoff-data: Add BL32_DT_OVL entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:34 PM, Marco Felsch wrote:
> Add support to pass a BL32 provided FDT_OVL from pbl to barebox.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/pbl/handoff-data.h | 1 +
>  pbl/handoff-data.c         | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
> index 7552ed5fc35f351f71822d309095980eaa764f63..88b1e9c80331a279564c338e758bd4928861ed56 100644
> --- a/include/pbl/handoff-data.h
> +++ b/include/pbl/handoff-data.h
> @@ -13,6 +13,7 @@ struct handoff_data {
>  #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
>  #define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
>  #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
> +#define HANDOFF_DATA_BL32_DT_OVL	HANDOFF_DATA_BAREBOX(5)
>  
>  #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
>  
> diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
> index 42e53f986bf14408f25cdf4434a5c284f8361401..2e1287cd69232d09b13384db3f1813737d67656e 100644
> --- a/pbl/handoff-data.c
> +++ b/pbl/handoff-data.c
> @@ -189,6 +189,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
>  		return "handoff FDT (external)";
>  	case HANDOFF_DATA_ARM_MACHINE:
>  		return "ARM machine number";
> +	case HANDOFF_DATA_BL32_DT_OVL:
> +		return "handoff BL32 FDT overlay";
>  	default:
>  		sprintf(name, "handoff %08x", hde->cookie);
>  		return name;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



