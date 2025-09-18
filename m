Delivery-date: Thu, 18 Sep 2025 15:24:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzEcV-004U1U-0s
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 15:24:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzEcU-0007nS-Lf
	for lore@pengutronix.de; Thu, 18 Sep 2025 15:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZp4RL8OFs3S+ZyzJ1tA4dnEbhw0tIXXEdfeKwPc0FQ=; b=jvCSyW6ZyeZX5lURY7+bC3Ot5O
	hTpIY17b6B9A+Z1zRTK2jGeRQS6tnauu8EbTRME1aJ+1a8ge0I9tniTEGCSdkn5i5tGqssf/QS/Jl
	wdHLiKT8bk6JSXtTTM1nLbXf01vOYxrUsKyW4AqcTfDgT/7cukqDrZXnDxdio4W+UluOoSCt5Brib
	bNRNHvgPpobPXFMYs33V5jQxprAN+2UR3IneeDHDIqQ1Btxreew2qKCGMiCrYYU+O8NjwWup5Nr02
	GKBsvB64JFsJkmaUGichFal1g7pKWbhbrqqD9rQtDGMXcr3cFeSm7apabRyDBifunJ877PEkSeTzw
	ba9gEkdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEc3-0000000HWrh-0cN0;
	Thu, 18 Sep 2025 13:23:51 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEbz-0000000HWrK-1Dxf
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 13:23:49 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58IDNijj030175
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 18 Sep 2025 15:23:44 +0200
Message-ID: <e4422f3b-a915-43e0-af12-feaab2e529f3@clermont.in2p3.fr>
Date: Thu, 18 Sep 2025 15:23:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-10-2de8f69107a1@clermont.in2p3.fr>
 <aMuwGwllOI0GEy7k@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr, en-US
In-Reply-To: <aMuwGwllOI0GEy7k@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_062347_602232_A3F79CD8 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/11] boards: enclustra-sa2: configure SI5338
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Le 18/09/2025 à 09:09, Sascha Hauer a écrit :
> Why is this optional? Is this not available on all board variants?
>
> Sascha

The patch series is for a SoM : 
https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/

The SA2 SoM may be mounted on a baseboard that features the SI5338 : 
https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/

I ported the code from the U-Boot code in Enclustra's BSP.



