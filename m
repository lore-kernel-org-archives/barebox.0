Delivery-date: Mon, 27 Nov 2023 08:30:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7W48-00AhQ9-1i
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 08:30:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7W48-0006dg-Jk
	for lore@pengutronix.de; Mon, 27 Nov 2023 08:30:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K6XxhxLL1zsmkFlR+0M5c6kAbRuQp1yB3viFqNpx6zA=; b=ltaly07/hmZh5IOce30lTgXOAl
	EGQhPF1asiM+/Jw06xv4PR5SNGc62vbF2XwRjhf0fsO1x0eQd0MRu/D7XhJtqUC8MlQ5xFN7UNHIx
	wbCMnTpM7xap7wc6ti/umDzVI7N7BfK2x5OOjHUVziP+vaQAy0UyP1wHXHfDusQ4iMX1o5nxP+6yI
	libZNo8ODpI7GZfENZkNPoz1yu/pwT6KO4Wry0ZECKcwYrd63DWzSZJ1PPxXnHqSAZsVkha5SxYri
	3TmKH+ui4wiuMvD3s8/KotdJjpvo0HmHQH4pWfyA+zMjDAJn/BqgtDkj42eTakam4E0VAyGBixPrL
	HFXO1mag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7W30-001jhd-2M;
	Mon, 27 Nov 2023 07:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7W2x-001jh0-1A
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7W2w-0006Wn-1S; Mon, 27 Nov 2023 08:28:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7W2v-00BtEJ-LW; Mon, 27 Nov 2023 08:28:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r7W2v-007ZE3-1x;
	Mon, 27 Nov 2023 08:28:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 Nov 2023 08:28:44 +0100
Message-Id: <20231127072844.1803529-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_232847_398992_61CC34F5 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: layerscape: ppa: Enable MMU when in EL2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We enter EL2 with MMU disabled even when it was enabled in EL3. Enable
MMU in EL2 again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 43145a7ece..996e881232 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -123,9 +123,16 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
 
 	if (el == 3) {
+		unsigned int cr;
+
+		asm volatile("mrs %0, sctlr_el3" : "=r" (cr) : : "cc");
 		remap_range((void *)ppa_start, ppa_size, MAP_CACHED);
+
 		ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
+
+		asm volatile("msr sctlr_el2, %0" : : "r" (cr) : "cc");
 		remap_range((void *)ppa_start, ppa_size, MAP_UNCACHED);
+
 		if (ret)
 			return ret;
 	}
-- 
2.39.2



