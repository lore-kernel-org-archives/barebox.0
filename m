Delivery-date: Thu, 05 Mar 2026 09:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y8-008GmC-0m
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 09:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y8-0001LL-Im
	for lore@pengutronix.de; Thu, 05 Mar 2026 09:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=54GCK6+vB+gJMeqsmJoKoK8P+8iMKoIzBCeRpg1D0dA=; b=HQnDIsQYX+lb8T5oTCo8sAbPYd
	RwKLPubo8jzfgNdnrCxjZc9JrG2kfZHTUZ0y8drZ490XYqq4F2eH3BXsNyL7gIGNk/FabJkcaT9hQ
	KvUTdXFGybKzzXv83zktItCflpgAmeB/62hi08z27EYJHABofPwDUvJf0H6DpPK/q3RANSw4aoFPb
	lpZejrhRnQEB6KHDguE/MI37nrM7rot6AzjD8Wt3Qvta+ZTONO8PluY/J9cmFb1CGeSZ5mV7x8g5g
	SpdDwRLFjRWuwu/8xHgpo+5rMqpQDaOw/7CWJvUHbXRgqN8fbHUOt8OnEtF0Rd70HADDtHItbQSA7
	FgBasQhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xj-00000001B3m-1R7J;
	Thu, 05 Mar 2026 08:21:39 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xh-00000001B33-33fU
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 08:21:38 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 25AC518007A8
	for <barebox@lists.infradead.org>; Thu,  5 Mar 2026 09:15:48 +0100 (CET)
Message-ID: <37329b32-00c2-403a-9a25-eed1cc85f875@clermont.in2p3.fr>
Date: Thu, 5 Mar 2026 09:15:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: ML_Barebox <barebox@lists.infradead.org>
References: <20260304-b4-sa2-usb-v1-0-8193d0fa9cd7@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <20260304-b4-sa2-usb-v1-0-8193d0fa9cd7@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_002137_900408_D1C336B3 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Fwd: [PATCH 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)




-------- Message transféré --------
Sujet : 	[PATCH 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
Date : 	Wed, 04 Mar 2026 14:51:22 +0100
De : 	David Picard <david.picard@clermont.in2p3.fr>
Pour : 	David Picard <david.picard@clermont.in2p3.fr>



Enable high-speed USB on Enclustra Mercury+ SA2 module:
- Enable options in the defconfig.
- Enable the high-speed USB 2.0 controller in the devicetree.
- Change 1st stage image compression method to keep it small enough.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
David Picard (3):
ARM: socfpga: Enclustra SA2: add defconfig options
ARM: socfpga: Enclustra SA2: enable USB1 HS
ARM: socfpga: xload: compress image with xz

arch/arm/configs/socfpga-xload_defconfig | 1 +
arch/arm/configs/socfpga_defconfig | 15 +++++++++++++++
arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 7 +++++++
3 files changed, 23 insertions(+)
---
base-commit: f6fe200a9862010fb5bc5cc5d55abe2350b5aa82
change-id: 20260304-b4-sa2-usb-8d413bd5c768

Best regards,

-- 
David Picard<david.picard@clermont.in2p3.fr>



