Delivery-date: Mon, 17 Nov 2025 11:00:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKw2O-001w8e-0j
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 11:00:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKw2N-0004K2-NB
	for lore@pengutronix.de; Mon, 17 Nov 2025 11:00:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PnDnt8zHPtuHdGr0FmvcX8xRiMgZ9I+gKmkcT11/PgU=; b=d/mLT8qr4UiR5F+ZPtQG+lvs6t
	A1mVUsx4/C+qB9LDTK49adp6b7koQH7phxxo2BGfiQHxpAKaYVvoWtmASllvkY7kiF7lGJrrkIDQJ
	rqTPvE5V043vTF0H6q8jr1v2B5OEEhAR+TzdCGvj3zZtPG5/PnLOSyDWeQ1B2kUDjctXdTYtZKH7b
	wxADwDvpMJOpadOSMSkEJ3SxokZyWc4ssjzHuZ0OGsvon3Sf7JsJ/XIDvFPEFBw4gRAKKYWdO9uGm
	cid4w4nZoQgFK6SBrk66ndcJlc/ZjuC9e+0QEIOKjgje+jdRvJ+Owq1/oVCbQqQ9iiC1k1heziuEQ
	SfKUj7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKw1i-0000000FpmN-2D2g;
	Mon, 17 Nov 2025 10:00:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKw1g-0000000Fplh-0r8j
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 10:00:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vKw1d-0004Du-3J; Mon, 17 Nov 2025 10:59:57 +0100
Message-ID: <76eca53c-c233-4e5c-831e-52b76ff0a875@pengutronix.de>
Date: Mon, 17 Nov 2025 10:59:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
 <20251117-soc-uid-v2-2-a2415bf9133d@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251117-soc-uid-v2-2-a2415bf9133d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_020000_270895_D595C402 
X-CRM114-Status: GOOD (  10.61  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-11-17 09:35, Sascha Hauer wrote:
> On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
> SoCs. Read the remaining 64 bits which so far haven't been included in
> the SoC ID.
> 
> On already rolled out devices a change of the SoC ID is undesired, so
> this commit introduces CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID. With
> this option enabled the old SoC ID will be used.

I think we should avoid using the terms SoC ID and SoC UID
interchangeably. Apparently some (TI) refer to SoC part numbers as SoC
IDs, which I find confusing enough by itself.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


