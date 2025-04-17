Delivery-date: Thu, 17 Apr 2025 21:42:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5V7x-0020UO-2E
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 21:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5V7x-0001cM-4j
	for lore@pengutronix.de; Thu, 17 Apr 2025 21:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g97L3rHAudHn1OZylBgRZYT4nIH5sQYNKPHtsLvETNs=; b=2qVwzqbjogRIamYjgUrM3VNlKU
	ZqUcAq7ptijX9Aq5xdKNUGf1/YIFmhoeYyhJp1crXfDW/gzht3OI8dtsrxto2F/hYrUs3Aq5f7Msh
	hpAE19ujB039VflaE/dIm4cV+NoCPG4O82H3/Mdh1+/xyB+zCGQZLIdbKOlOq6P11NzjhIZX7d6pf
	UoFlhnoYrNGuPcUbNhC+4mzq2OisQIj78/f2MPTKEELDDGDu2vWPNFAxZHqDCoym1lBsYWT4c8ge7
	f+F5sUGDBIfGXDliFmu8VJFBKfqtc3kBN/zYY/plkdSZYaYolxIEvaQ+5eV8scZ4gQnIdvSkC1dYQ
	QAIaSukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5V7B-0000000ECfb-07Zm;
	Thu, 17 Apr 2025 19:41:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5V78-0000000ECfF-022j
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 19:41:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5V75-0001Hz-Gr; Thu, 17 Apr 2025 21:41:31 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5V75-000np4-14;
	Thu, 17 Apr 2025 21:41:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5V75-001y7h-0l;
	Thu, 17 Apr 2025 21:41:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 21:41:27 +0200
Message-Id: <20250417194127.469297-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_124134_044881_A262FCC2 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: cpu: start: fix ramoops and OP-TEE co-existence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arm_mem_ramoops is supposed to take the end of memory as argument to
drive the ramoops region's start offset from it.

Instead, arm_stack_top was passed, which is separated from end of memory
by the scratch area and the OP-TEE region if it exists.

The scratch area is just 32K, which tends to be  much smaller than the
ramoops region, so being 32K off didn't matter much. When we enable
OP-TEE though, the offset from the correct location is so big that it
can lead to probe errors:

  ERROR: ramoops: failed to request dump mem region (0x20000@0x4bdd0000): -12
  ERROR: ramoops 10000000.ramoops@10000000.of: probe failed: Out of memory

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index aa716a10c7b0..d6ab5a16b5bb 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -100,7 +100,7 @@ void *barebox_arm_boot_dtb(void)
 
 unsigned long arm_mem_ramoops_get(void)
 {
-	return arm_mem_ramoops(arm_stack_top);
+	return arm_mem_ramoops(arm_endmem);
 }
 EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
 
-- 
2.39.5



