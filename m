Delivery-date: Thu, 07 Nov 2024 08:34:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8x2e-005pxy-1O
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 08:34:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8x2f-0000cB-2o
	for lore@pengutronix.de; Thu, 07 Nov 2024 08:34:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sYJvat4h8DDhq2HXNqYUINglBYlpN+3V+x7czQPGKkE=; b=RU843h5qe2y1QxIIHq7E6HSy9A
	3UjwdLQo/XQVy4Fpm3QD91u56GYQlLKMwLm/D9pIBWWlmwQJng/oPrv9IB/bUdRGbU9I+lXSyo5VK
	qE33TBYGm2xnRPXxkAx47iOLKz0S5LWBmQW0PqHmSmmOyrwF2TFKmMTx1PFiinYGd8Ah+b/fKnEaZ
	+V1NB1eiYUnA3fBROZRXdxiwY6B1kp1lRyFU97NLIB+GAZ4/gxhqoTiiv7NtCzg6ch6PZSi/G1O1F
	uldvA9lFLjI+AZfhOAod/gZOzVziSY+TT2/wabtd0IOxmYa6g8oGCINMLj62iZ74OVCHa4cj9SOBp
	mNp6viHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8x26-000000060S1-0cqe;
	Thu, 07 Nov 2024 07:34:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wzA-0000000604m-1AkQ
	for barebox@bombadil.infradead.org;
	Thu, 07 Nov 2024 07:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=sYJvat4h8DDhq2HXNqYUINglBYlpN+3V+x7czQPGKkE=; b=EGsA9E8iYcny4BflpcFWNHdjIk
	3mWg9eXVtMK0nwAf3WVNI/74WzbVc6tuAvr+9hV6FDyu7aTfueDegpReoD2dV0O6rfDiv6HpgZhIC
	MvCfYYXfxhfOZ1VNtfwWW+QX32l2QgmmP0ZW9gZrWz1/p61WgPiOp58x4Y2iZpa2Q1S61csrtrvTK
	qg67/C2voruCsSEt5PcbNgLBJy1icgPiVPVJkJtb5jS8RjOGzPdxuMZpE9Pdnu7IFLgfHFkVu0KG4
	5pEWlrutlne2AgiqyIaosFSu4TjlOMmNBWUlXuEfabgsT5TyZCaqV/Q5v04R/aJtcJFb81a1x2lhK
	hRisPnoA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wz6-0000000C4sI-1BNq
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wz5-0000I3-TE; Thu, 07 Nov 2024 08:31:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wz5-002QQL-2I;
	Thu, 07 Nov 2024 08:31:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wz5-007pWI-1y;
	Thu, 07 Nov 2024 08:31:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  7 Nov 2024 08:31:14 +0100
Message-Id: <20241107073114.1866198-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_073116_534816_AFFC6A4D 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mailbox: make mailbox.h self contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mailbox.h needs linux/list.h, so include it to make the file self
contained. Also declare of_phandle_args.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mailbox.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/mailbox.h b/include/mailbox.h
index 3be58ec103..9583611da2 100644
--- a/include/mailbox.h
+++ b/include/mailbox.h
@@ -1,6 +1,10 @@
 #ifndef __MAILBOX_H
 #define __MAILBOX_H
 
+#include <linux/list.h>
+
+struct of_phandle_args;
+
 struct mbox_chan {
 	struct mbox_controller *mbox;
 	struct device *dev;
-- 
2.39.5



