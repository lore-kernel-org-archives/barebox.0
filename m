Delivery-date: Fri, 17 May 2024 08:22:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qzW-000uLT-0Y
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:22:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qzV-0003gO-Kt
	for lore@pengutronix.de; Fri, 17 May 2024 08:22:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YOM/nt1nlANpge9+45nkgoAh5hses9sC1uDSE7VujZo=; b=kgLoUuB0yolWHGVmCMbizg4Paa
	1p0xWRtg4CKVPqOSQZNiF9/LhmQAcVhwuKqVJVa1lW+WyPa5EQsUD7sfAQdpzFTUw97koeqbPMtN/
	UkAV5g5z6GIWlT4UxM1AJA20FqRLhVhHSjKhzYfzLNGhxHOnhq+yS9hNjQBJl33szMIEc1ePf6ZgQ
	jogNYXjCV0E79MlE3y+L5d1cYDCfaXG6DPg3IeMjd4hHk8fo5H5Gt2vFvhcORnxzJL18i1KeG2FBx
	fWo/Eo+5zDUYMVolZxqNb3Zuo/CzXlOIegn6D4lhdgRNVrrATDd9F8HVv8PhhDKIqXv1o1J9hkbKg
	1JZotY8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qz8-00000006wMG-4C5f;
	Fri, 17 May 2024 06:22:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qz6-00000006wKc-0WB4
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:22:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qz4-0003U3-RA; Fri, 17 May 2024 08:22:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qz4-001pZo-ER; Fri, 17 May 2024 08:22:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qz4-00Dr1y-1A;
	Fri, 17 May 2024 08:22:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:22:24 +0200
Message-Id: <20240517062225.3302101-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_232228_204629_1CAA3347 
X-CRM114-Status: GOOD (  10.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] ARM: cpu: start: align uncompressed DTB size to 4 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KASAN reports that decompression exceeds the bounds of the allocation
and my DT size isn't 4-bytes aligned. Align the allocation size to fix
this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 6d0a7cfc6b04..2adc60fa8831 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -79,7 +79,7 @@ void *barebox_arm_boot_dtb(void)
 
 	pr_debug("%s: using compressed_dtb\n", __func__);
 
-	dtb = malloc(compressed_dtb->datalen_uncompressed);
+	dtb = malloc(ALIGN(compressed_dtb->datalen_uncompressed, 4));
 	if (!dtb)
 		return NULL;
 
-- 
2.39.2



