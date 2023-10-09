Delivery-date: Mon, 09 Oct 2023 13:54:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqK-001qdD-H0
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqH-0002a4-QB
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ThGzS169lnxnolL2LQTXthAhKP6QqvUARbbtOldqWfM=; b=cZTa3M8ICheKMNtZ9IP/bn6dr7
	LUv0wHYV8dIBSV3iW3BvyUZFkk5/sFJIFDhfQXRZkrxXUubJCbHbkO/HiNXoPjFkn+j/vgmcfMhXM
	qrWkCgDQbubhYfOX5u3xM5/7OkFA+/FN0+/br3GS4LM7s/rkJtitUoSfJC/hXuA/6U2BCVGe+bMep
	MMbjjuf8EGoRhM6bL86MMGCocgIpf/zAUgS9zQzA4ue+LZ24Rku7juMvQgbb71RJT4c7sAHadQhi2
	InMmqOA3DuTbnaBQMdnE0k0zlUtIQvfvXmCfGY6/lQ4gdsbiBdqOyIgtgD52OcS7COHFcFsIeYK6e
	dhJ1iGpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop5-00AWUr-21;
	Mon, 09 Oct 2023 11:53:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop2-00AWRx-2F
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-0001nJ-HO; Mon, 09 Oct 2023 13:52:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-000P3r-1R; Mon, 09 Oct 2023 13:52:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-009ysr-02;
	Mon, 09 Oct 2023 13:52:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:55 +0200
Message-Id: <20231009115257.2371076-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
References: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045316_730391_03ADA764 
X-CRM114-Status: UNSURE (   9.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] test: self: mmu: reduce MMU test region size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This reduces runtime of the tests and additionally may help to catch
future alignment issues by decreasing the alignment to the minimum
required.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index 850c9f336f89..ca58d718ffb3 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -10,8 +10,8 @@
 #include <zero_page.h>
 #include <linux/sizes.h>
 
-#define TEST_BUFFER_SIZE		SZ_8M
-#define TEST_BUFFER_ALIGN		SZ_2M
+#define TEST_BUFFER_SIZE		SZ_1M
+#define TEST_BUFFER_ALIGN		SZ_4K
 
 BSELFTEST_GLOBALS();
 
-- 
2.39.2



