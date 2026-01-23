Delivery-date: Fri, 23 Jan 2026 16:14:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjIri-004WUD-1I
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 16:14:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjIrh-0007lV-FC
	for lore@pengutronix.de; Fri, 23 Jan 2026 16:14:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RKi0Yv8yCAkEuswpb3ICX2vpJhQpZA/4egofHa2hDB4=; b=jvT0NJukjsIEHlPqlVI5gz31RA
	ZNs9i5Otf/eZVaUZn0E3trSMljfE26G4WeK+QLe9bCSMxX51LkTsLRboir9nP15nkdIfAVAbRsyN3
	ArkHfh4/yfSHQhRBXuQyyQo8Ojz7+Ellh/b3RObxkswAaAu/l0M2/YeHKiJUF0UJoYWTCQ4vNJsZL
	xeBGiQssLrk5HT89Bc/fuCZ4XRyVNRS/V7tyPXWCZBbf3TmBMeaBze4oo1mQ8w75BcxoTXvxXFPgS
	BZIY8iKMQB57nik0XqLd/YSI4V7IDTnaZGy85pIWdHFz9nXBIGut6Ky97VPkJcJWZ5EK9uQWJ0QZE
	9AgLXYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjIrA-0000000959t-47mi;
	Fri, 23 Jan 2026 15:13:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjIr8-0000000959N-2xV1
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 15:13:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjIr6-0007dl-VF; Fri, 23 Jan 2026 16:13:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjIr7-0027Iq-1R;
	Fri, 23 Jan 2026 16:13:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjIr6-00000007KS8-2ovz;
	Fri, 23 Jan 2026 16:13:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 23 Jan 2026 16:13:46 +0100
Message-ID: <20260123151346.1746117-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_071350_744742_A69900D3 
X-CRM114-Status: UNSURE (   9.46  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] pbl/mmu: remove uninformative pr_debug()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The "ELF loaded at" message has no useful information as the values
are only initialized to default values in the PBL. Remove the message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/mmu.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/pbl/mmu.c b/pbl/mmu.c
index 744a76afa6..e7c9b8b1e8 100644
--- a/pbl/mmu.c
+++ b/pbl/mmu.c
@@ -46,7 +46,6 @@ int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
 	int i = -1;
 
 	pr_debug("Setting up MMU from ELF segments\n");
-	pr_debug("ELF loaded at: 0x%p - 0x%p\n", elf->low_addr, elf->high_addr);
 
 	/*
 	 * Iterate through all PT_LOAD segments and set up MMU permissions
-- 
2.47.3



