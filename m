Delivery-date: Wed, 28 May 2025 14:19:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl5-001BYd-1I
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-0000ce-PX
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8v84kx2jNMQjG7knii6Z0HhVPsbqJ7u3A75OJrjLfrs=; b=QS7QOpHSjitwt9+fsTenIBwzcp
	AZvzl/OyiFi8l+6FQ4IChGcGuMiwxGWNM+gaDtCohegk6p47LqCPppWOqSfFC5mT8LO2GBX2cNFrf
	tTzaa0dZDLMTkV5vicDBxWKoj9SSMfgEGKu4feIscNlG9Mk4e+vubUCGoVZEOThZ0YsjSBu9VRTeA
	u2ufycIjUB/SAkLP4fKkzPVVYSY5odxuGDhxDikBihIgeZfXWVDKZ3dZdfvbLXDxFwjxKbu9vnjwM
	nxfoTx+fJqSlpdk63GcSXmbF0wxEVeDSO02L9A+ifQYp26QoerolAOM3NGwrTxkOpGH79c4FouS0Y
	R6xLiDEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkp-0000000D5Rr-0CXl;
	Wed, 28 May 2025 12:19:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY2-0000000Cvyw-1DSK
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8v84kx2jNMQjG7knii6Z0HhVPsbqJ7u3A75OJrjLfrs=; b=Dx7VXRxG30vMaAjxgwLDhK+0K+
	g7hIUXFzI054Im/ePaTCqadzjIYY/rqWiJ4T/+aB3N3PQYHG3s1t5Bl/QEJ50AxUpkKxklA1cRXXR
	trFB5dZgehNnB8juTKo/PmMlNG8dHD3ivyc0j6uOzNyDWChfQ/A47/Z5rfC6o8BmJD1Zxs0+pnfYM
	7mar7mdnFNgxNdy4D7wm4Hmf3eSgXyp0WuvqQVLdBz7ebIMiSZc5B+tN/jEIpV3A9hh/a9fgHUUKl
	IQNSJKv7VbE8ripu6lK2A73O8q9WPLhPZmkhtrGljsjl8d2CrBylvla7ITplHCOdf0cjna7U5ob5K
	SDRohF/g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXy-0000000DXFz-1YZl
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001pE-Hr; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zh2-17;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0p;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:40 +0200
Message-Id: <20250528105046.3270397-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120210_554700_A74B38F8 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] kvx: bootm: enforce existence of device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Later commits will allow users to skip providing a device tree
when an empty file is passed, e.g. /dev/null.

Maintain existing behavior for kvx by translating the NULL return
from bootm_get_devicetree() that indicates this to an error pointer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/lib/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 33d714e873bc..6eba4054e500 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -84,6 +84,8 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 	}
 
 	fdt = bootm_get_devicetree(data);
+	if (!fdt)
+		fdt = ERR_PTR(-EINVAL);
 	if (IS_ERR(fdt)) {
 		printf("Failed to load dtb\n");
 		return PTR_ERR(fdt);
-- 
2.39.5



