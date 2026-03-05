Delivery-date: Thu, 05 Mar 2026 09:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y8-008GmW-23
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 09:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y8-0001LX-WA
	for lore@pengutronix.de; Thu, 05 Mar 2026 09:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lQaAJ6Ibn4u/vdcx/87CEZOYqc+BcowgADcQoyj0aQo=; b=oLn70YGluF4prNPWKI9KIRTIdH
	8bElHNvOiHJknsbCF3C4dM8gKy7K5kqafmDjvMhQlRDtc9Dwq/fzEWiG5U3DnBiODIsugj49b7Dd7
	kPzUJ8a9Fg+eIwg7B2izKTD8BXdWe4JZLSwgOB9uCqF/83H1mu6IKsMq0wgtal8pDdUwAHpIq9uNC
	QacTpE5zHdsoMuEUQQEYWZFQu7qhvIlY0jVX6gegL1nB25IroCZyEE0Va9yb1lIVN669+2ccoXbr2
	zRqHRAWChS6QwaqY0EPQ0qj0xVM3jASEgxaNYTloQbGqx4B/HyzFaR78GT0zGJpkgu6KqF8lwxBWT
	kiJaaUGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xo-00000001B5B-2cJK;
	Thu, 05 Mar 2026 08:21:44 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xm-00000001B4I-1gOh
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 08:21:43 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 1E3C2180089A
	for <barebox@lists.infradead.org>; Thu,  5 Mar 2026 09:16:28 +0100 (CET)
Message-ID: <35aeb929-ce18-457e-aff4-1b5f83717788@clermont.in2p3.fr>
Date: Thu, 5 Mar 2026 09:16:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: ML_Barebox <barebox@lists.infradead.org>
References: <20260304-b4-sa2-usb-v1-3-8193d0fa9cd7@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <20260304-b4-sa2-usb-v1-3-8193d0fa9cd7@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_002142_575304_E62B88D2 
X-CRM114-Status: UNSURE (   7.83  )
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
Subject: Fwd: [PATCH 3/3] ARM: socfpga: xload: compress image with xz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)




-------- Message transféré --------
Sujet : 	[PATCH 3/3] ARM: socfpga: xload: compress image with xz
Date : 	Wed, 04 Mar 2026 14:51:25 +0100
De : 	David Picard <david.picard@clermont.in2p3.fr>
Pour : 	David Picard <david.picard@clermont.in2p3.fr>



Compress the image of the first stage of Barebox with xz because it
features a good compression ratio.
Rationale: on some devices, the image has to fit in a ROM as small
as 64KiB.
---
arch/arm/configs/socfpga-xload_defconfig | 1 +
1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-xload_defconfig 
b/arch/arm/configs/socfpga-xload_defconfig
index 22bab8d607..ec966c91a8 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -12,6 +12,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
# CONFIG_ARM_EXCEPTIONS is not set
CONFIG_NAME="socfpga-xload_defconfig"
# CONFIG_MEMINFO is not set
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
CONFIG_MMU=y
CONFIG_MALLOC_SIZE=0x0
CONFIG_MALLOC_DUMMY=y

-- 
2.43.0



