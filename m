Delivery-date: Tue, 16 Jan 2024 18:42:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPnSi-002IAv-1X
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:42:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPnSj-000171-76
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:42:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hJkHRSVH1WOS2sYnDek52FoKHM165VnDY3HLvA9nFBs=; b=x1jJzC2dX9WCHVnre0QPd20B4h
	/PmI9M6x8caybA5OnjsXloZy7NbnzyXPtBdHSMnY8fBjkbziTFlDtlqXNr9yt1BEa7lC6w660C/Lb
	An9S9txzkq3p8QJ6O09wKT06CBGvl/lABmZbPjHAc72PQnLjWpivQoa+OphHuX3bYRkiqA9wgkEMF
	0/59xnK3vXTUN1yC+FnHywhNPpfw3zrFc9ozdCb3U8t+cDF3obIHJEh5QEjILlz0tUgY43f2PN8Cj
	lLFKgd2/cF7h5CzOriZg+TW7RHrRnDOk9gkG8Kqo8UZTgLy72P1IH38Zn6GxI4gpNKalKHCwvKIfW
	pETm6l5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPnRL-00CpMV-04;
	Tue, 16 Jan 2024 17:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPnRH-00CpLV-1X
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:41:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPnRE-0000zB-0x
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:41:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:41:22 +0100
Message-Id: <20240116174122.383161-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_094127_532600_28E2681B 
X-CRM114-Status: UNSURE (   8.32  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! pbl: add COMPILE_TEST prompt for PBL_VERIFY_PIGGY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
- remove the trailing whitespace

 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index f94791ff8a49..223bf0640e1b 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -48,7 +48,7 @@ config PBL_RELOCATABLE
 
 config PBL_VERIFY_PIGGY
 	depends on ARM
-	bool "Verify barebox proper hash before decompression" if COMPILE_TEST 
+	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
 
 config BOARD_GENERIC_DT
 	bool
-- 
2.39.2



