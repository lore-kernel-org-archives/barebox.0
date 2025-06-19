Delivery-date: Thu, 19 Jun 2025 20:36:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSK7k-0091l9-2I
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 20:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSK7k-00049K-6S
	for lore@pengutronix.de; Thu, 19 Jun 2025 20:36:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YtdfDNeRNN/g7iVCYvOHt0p/9RX8lZLj/4wiu5GxZm0=; b=NbpMfDJYObu9yWiuKsD/JLj4eC
	UzfIcSOEWzAcamZx0dCAJOaaEmdJobuqmAyXE/APBFdiMhlGRFAvKfnAKdAF/RVujVOWGeedCC8oP
	kWFD32ITbmpXc6o5x3x/Wia2Z6RHrQ0Yjzm1bnTaIkbC5rf5UruAH+ZFr10xheCuQBNWh0I8U+5yA
	MLRM1YyE9cJaNKElCOU9Dl1SyLwDtp9XvXNhDhMbFU/o4XppdlPI5MK4wG9JVlXNANoVWnzTCWkdS
	qJdcgpwIWz8ELhCl4YygDm5e23G7dIDxcrFukw59EPMXhdKzdHU7pW/mNzkPc6Qf5BZcKDFm7/rkB
	rC0hH9ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSK7T-0000000DtSl-3XfN;
	Thu, 19 Jun 2025 18:36:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSGxy-0000000DNct-2uhX
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 15:14:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uSGxt-0000LO-Qe
	for barebox@lists.infradead.org; Thu, 19 Jun 2025 17:14:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 19 Jun 2025 17:14:06 +0200
Message-Id: <20250619151406.3746678-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_081414_727952_CC4D439A 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: caam - adapt pr_fmt to make it more clear
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a "caam" prefix to make it more clear.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/crypto/caam/rng_self_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index b6fcc3bc0947..84dd24d58f4c 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -42,7 +42,7 @@
  * - i.MX67SD silicon revision 1.3
  */
 
-#define pr_fmt(fmt) "rng_self_test: " fmt
+#define pr_fmt(fmt) "caam-rng-self-test: " fmt
 
 #include <dma.h>
 #include <common.h>
-- 
2.39.5



