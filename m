Delivery-date: Wed, 21 May 2025 15:14:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHS-001Anb-2i
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 15:14:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHR-0003wf-LT
	for lore@pengutronix.de; Wed, 21 May 2025 15:14:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ENiTuedtOy/Ef9cqli3ADM39SPXsTN30ciYAjUiYhU=; b=oTd6gS4YuTGyxNlo2V8CYYj2F5
	n28GD0Vnk/bs99vcX98+FnwT3Gr9MdgEPSnIn/+FjLkDeOxRXjki0aSY6K6fpU1yh6/bxR7n+eae4
	bBB1HcRdSFI3wOsPChtbMO9DdSmxidE6ZSFqQdSG8i55Lv+M/F4WmpccDuzzPan18/XksE2bvDiLk
	REBFKfsTM5Wa0Im92py7GTwZDqirhBt5xutMldaQmBpl87aaRLXvc8uVOnVk7G6P0vDO3Y7uACkxO
	TvvnE9V4MiEtkLtoJp3huCWi6vft8THbXvyDlUsuLBPx5Xmw7cqwn13n3lRxjs1j0GNg9mrwOzJPB
	gRqtG69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjGt-0000000Ftsd-3oHb;
	Wed, 21 May 2025 13:14:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHiwe-0000000Fq1w-2bIL
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 12:53:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uHiwb-00073K-VI; Wed, 21 May 2025 14:53:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 21 May 2025 14:53:04 +0200
Message-Id: <20250521125309.1408613-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521125309.1408613-1-a.fatoum@barebox.org>
References: <20250521125309.1408613-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_055316_660123_A941CCA9 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] memory: export inside_barebox_area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Knowing whether some object lies with barebox memory area can be useful
beyond the memory resource code, so export the function for general use.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/memory.c  | 9 +++++++--
 include/memory.h | 6 ++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index a5b081be2c70..4e3cb1571e93 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -72,14 +72,19 @@ static int mem_register_barebox(void)
 }
 postmem_initcall(mem_register_barebox);
 
+bool inside_barebox_area(resource_size_t start, resource_size_t end)
+{
+	return barebox_res && barebox_res->start <= start &&
+		end <= barebox_res->end;
+}
+
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
 					resource_size_t size)
 {
 	resource_size_t end = start + size - 1;
 
-	if (barebox_res && barebox_res->start <= start &&
-	    end <= barebox_res->end) {
+	if (inside_barebox_area(start, end)) {
 		struct resource *iores;
 		iores = __request_region(barebox_res, start, end,
 					 name, IORESOURCE_MEM);
diff --git a/include/memory.h b/include/memory.h
index 09c10b773fac..707c0f13130d 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -64,6 +64,7 @@ static inline u64 memory_sdram_size(unsigned int cols,
 void register_barebox_area(resource_size_t start, resource_size_t size);
 
 #if IN_PROPER
+bool inside_barebox_area(resource_size_t start, resource_size_t end);
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
 					resource_size_t size);
@@ -75,6 +76,11 @@ static inline struct resource *request_barebox_region(const char *name,
 
 		return NULL;
 }
+
+static inline bool inside_barebox_area(resource_size_t start, resource_size_t end)
+{
+	return false;
+}
 #endif
 
 #endif
-- 
2.39.5



