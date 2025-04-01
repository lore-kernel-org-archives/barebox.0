Delivery-date: Tue, 01 Apr 2025 10:54:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXOR-006vPm-2j
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 10:54:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXOR-0000yN-A5
	for lore@pengutronix.de; Tue, 01 Apr 2025 10:54:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9TEkFQffWuIysOiOp7A62qerSs0gC/NQbw4C7CrWkb0=; b=G3KOchsXflysFXuSig6L2fkL6N
	mJR6UzraN5aSWF9r/1GX+Yj57et2jm9HbdxmbzuM/4WiLMJlNIs669dMJVpF9S0PbYQ4v5R/UnYLj
	oBToC+mG99kTu8oz8Q1e5s5M5MOhCFSitNNv+xvx4DUEfoZHzvufzHb7Xg1afe32jmgJWYCn9Bqm3
	RkDvm64RXNNoI79m40MMZCNX1CmGvy/Or/AUQ1kt2Mqegs1hwrfPwxuYr+DMrf73YC/W2U79cczvG
	bZD+xtyR7GNj9Ixhyr858ZaXF4BK3ejvnbIIkFBLvBe5huqVjRkG57d+teS/hYi77u5/mWuLzLi6t
	4GlgB3XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXNs-00000002NZL-148J;
	Tue, 01 Apr 2025 08:54:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXNR-00000002NXs-2wLC
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 08:53:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzXNQ-0000ih-Gh; Tue, 01 Apr 2025 10:53:44 +0200
Message-ID: <6f67de1f-b159-4190-bd31-ed2ef990f290@pengutronix.de>
Date: Tue, 1 Apr 2025 10:53:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20250331122918.564304-1-o.rempel@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250331122918.564304-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_015345_763975_2ECA9687 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Oleksij,

On 3/31/25 14:29, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Introduce support for the STM32F7 QSPI controller, compatible with
> "st,stm32f469-qspi".
> 
> Validated on STM32MP133-based MECT1S r1 board, which includes an
> F7-compatible QSPI peripheral
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---

[snip]

> +static int stm32_qspi_get_mode(u8 buswidth)

Is this ever called with a buswidth > 1? I think the spi_mem core in
barebox never uses higher buswidths. Given that you are adding QSPI
support, you will surely want to see quad buswidth actually working,
right? :D

> +{
> +	if (buswidth >= 4)
> +		return CCR_BUSWIDTH_4;
> +
> +	return buswidth;
> +}

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



