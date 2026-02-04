Delivery-date: Wed, 04 Feb 2026 18:34:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnglf-008pZ2-2u
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 18:34:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vngle-00061M-Uv
	for lore@pengutronix.de; Wed, 04 Feb 2026 18:34:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rMGSzHYtXLwlou82j3fMCV8HJsjrQmHDmv4IWuTeZAQ=; b=CyeZc0LORW/2GDoRt9uEf0Fn9O
	4SzT3kBBGBHIn+LZ+9ktCxoicq6CD44igyTIJkYFgsDqeorWNLP8Se838ZJABhm1MUfU+bUHpOQKG
	OLScQzdchj6HXm619qzXQzvNSYZZbuYGwOtSy+9t42AiWhZXqW18H3L65F03ZKdTneuiG25XBbPEG
	ZJ4frGqSLVQl4MysfTTFtJugfDFPSRLuJWarZmr60M5TJ7cvvAqbC/ERZvsaZSi6dZfcQRHHzE/nl
	mE1K3/ja5Juj3wqxu14+D5tgWFsLaGdjTJCB8AKs4ZFLT0OuqmeormTInf8yQh9MHEIfVCThTGwS6
	DN4p6jrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vngl5-00000008rFM-2x7E;
	Wed, 04 Feb 2026 17:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vngl3-00000008rEz-39HA
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 17:33:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vngl2-0005v4-7b
	for barebox@lists.infradead.org; Wed, 04 Feb 2026 18:33:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  4 Feb 2026 18:33:31 +0100
Message-ID: <20260204173338.1567736-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_093341_807841_7CEBCCC4 
X-CRM114-Status: UNSURE (   5.99  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] handoff-data: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl/handoff-data.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 399d769f386f..81cb0880ad4a 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -1,6 +1,7 @@
 #ifndef __PBL_HANDOFF_DATA_H
 #define __PBL_HANDOFF_DATA_H
 
+#include <linux/bug.h>
 #include <linux/list.h>
 
 struct handoff_data {
-- 
2.47.3



