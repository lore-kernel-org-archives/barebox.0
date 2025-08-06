Delivery-date: Wed, 06 Aug 2025 15:25:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje92-007eVj-1W
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:25:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje91-0007lQ-Ui
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbd1MuFXF14Osw9+FkSDh7phbn/NZNmc7k/aj9qAEqQ=; b=zHezriTUHvPEvcybd3nCfo2KYh
	WXYPUCEgUHMZcgW5zxs8mJ6LuyjmG8kJ9gigKhvfcGPGQynTYz3/vINxeT0A3BgNBwjWZFNootwML
	3oMU7qJkBk90BkVE9yCpMLqJkEBREPTB3M6yckfmwlzX99QA+g+X65YVDIk+d/41hc3WQOp9ggdyv
	otBaNZZxVfVnRPB1jdNg0W0gCICDDrpqyMTNkS6z2fFJjbwzi3YXmKlpfVxU8JOSQke7S7aOJjlD4
	7cwAjE1w+fDLNG5SVZ4Q9qjaUqSxbfcZxQ1905wUznOLOnVEVpjlIdVbbgYCXMS6qYoLQcb3vRLvW
	Nap9vB4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8b-0000000FIHX-1Z0y;
	Wed, 06 Aug 2025 13:25:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8X-0000000FIEo-46Ze
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:24:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uje8W-0007ZX-Nz; Wed, 06 Aug 2025 15:24:56 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:24:55 +0200
Message-Id: <20250806132455.2827813-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806132455.2827813-1-a.fatoum@barebox.org>
References: <20250806132455.2827813-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_062458_018487_7C5F235C 
X-CRM114-Status: UNSURE (   7.90  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] openrisc: implement sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement sync_caches_for_execution to allow future use in generic code.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/openrisc/cpu/cache.c         | 6 ++++++
 arch/openrisc/include/asm/cache.h | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c
index a124d6612c69..0246cd36a423 100644
--- a/arch/openrisc/cpu/cache.c
+++ b/arch/openrisc/cpu/cache.c
@@ -149,3 +149,9 @@ static int cache_init(void)
 }
 
 core_initcall(cache_init);
+
+void sync_caches_for_execution(void)
+{
+	flush_dcache_range(0, checkdcache());
+	invalidate_icache_range(0, checkicache());
+}
diff --git a/arch/openrisc/include/asm/cache.h b/arch/openrisc/include/asm/cache.h
index 4bba6923b1e8..27b21dce30cb 100644
--- a/arch/openrisc/include/asm/cache.h
+++ b/arch/openrisc/include/asm/cache.h
@@ -30,4 +30,7 @@ void dcache_disable(void);
 void icache_enable(void);
 void icache_disable(void);
 
+#define sync_caches_for_execution sync_caches_for_execution
+void sync_caches_for_execution(void);
+
 #endif /* __ASM_OPENRISC_CACHE_H_ */
-- 
2.39.5



