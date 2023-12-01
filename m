Delivery-date: Fri, 01 Dec 2023 16:12:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Bt-00GAjA-05
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 16:12:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Bt-0005ZC-3U
	for lore@pengutronix.de; Fri, 01 Dec 2023 16:12:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oFe6fi/1QS+HbhE4ABplraRrJM3R8j2Ri4iUwhakUeg=; b=On2iP+Qz/SEX8j
	JoTZu6PVhrxZtp9ZJYAk5vOgDYNPBWN3D9A2l9msknj96G8Ii9thDSV+gQD1AXpH9iaJvTRV4WZO9
	JPIJFyIYlby8/NH0XIfVwxdZ2a0CgHYnOOm+H4IgvkWnYkAVBN+a0SihOA9Y3N7BGrCwdvuvFyA1q
	e1FXBZueKWDxPFw9GvSQIpBnsqz/U+NUsKF8VEtmkNY+En2w8ItTK+ZRhYVlK2aGUt9RyHVpin92S
	3Sw/YV2FYsHc8ed1DNTMg9HpgVgJ5kRC+SycdIoAhYrzTsTejnii8YX6g0KYdihR+Vpld+JGzYEFF
	wyZfg7SQygFzNYoYD6Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r95AX-00E0Vx-11;
	Fri, 01 Dec 2023 15:11:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95AS-00E0Sx-21
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 15:11:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-0005BS-LM; Fri, 01 Dec 2023 16:10:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-00Csnu-8f; Fri, 01 Dec 2023 16:10:48 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-006upG-0f;
	Fri, 01 Dec 2023 16:10:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  1 Dec 2023 16:10:42 +0100
Message-Id: <20231201151044.1648393-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_071100_669971_777FF5F6 
X-CRM114-Status: GOOD (  10.03  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM64: mmu: Fix alloc_pte() address calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

get_ttb() returns an uint64_t * which means that with

get_ttb() + idx * GRANULE_SIZE

the distance between two PTEs is wrongly calculated as 0x8000 bytes
instead of 0x1000 bytes. With this we leave the space allocated for PTEs
quite fast and the available space check also doesn't work.

Fix this by explicitly casting to void *.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 716e717c72..d62527809e 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -45,7 +45,7 @@ static uint64_t *alloc_pte(void)
 	if (idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
 		return NULL;
 
-	return get_ttb() + idx * GRANULE_SIZE;
+	return (void *)get_ttb() + idx * GRANULE_SIZE;
 }
 #else
 static uint64_t *alloc_pte(void)
-- 
2.39.2



