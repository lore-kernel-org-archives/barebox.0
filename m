Delivery-date: Mon, 01 Jul 2024 09:29:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBTa-000QPB-0N
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:29:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBTZ-0006d3-JC
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:29:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JnnFDcj3pj7EgHS9Heke1U156LdDM+51f5YRuEUpmUc=; b=fncbkyJi8Lr60AF3T3uS2Jf7pE
	dr7u/E2J71Cbrw9obVD+SXTU2dSAzOqjhLZYpELoUqrmHUyPNRaQmyZaUzQ0RsCBoC/+Z9y7asFI/
	c3pE7o00tT7eJ3pysPMtCVNvVzqAo0Ol+xIT44jABHq9rtUdOwh6TOjCpr+heJ0MRA9Azzz2gyCX1
	XDA3gT9HxpHvnEdo/FJmc5/utoFqPDIvnFdixSO0wOVrhjDkviw/9fAuSlA77/C2IfRzVfJTNQAag
	z1kiDwa642BXUT8KuelbKeJeEhfaJjzaYbyFvxLONebRM5Xx4xSLqKoYHgycto3qnyX1OFgWQWU9m
	Tn2UL72g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBT5-000000021sw-1Rq5;
	Mon, 01 Jul 2024 07:28:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBT3-000000021sO-1fjG
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:28:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBT2-0006Zc-3k; Mon, 01 Jul 2024 09:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBT1-006JiT-Nd; Mon, 01 Jul 2024 09:28:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBT1-000grp-23;
	Mon, 01 Jul 2024 09:28:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:28:50 +0200
Message-Id: <20240701072850.164769-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_002853_453765_4D230ED7 
X-CRM114-Status: UNSURE (   9.80  )
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
Subject: [PATCH] fixup! base: add class device support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

driver: wrap class macro arguments in parenthesis

Without the parenthesis, using & in the macro argument will lead to
issues.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/device.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/device.h b/include/device.h
index d8d1f7c329c1..8550544ca807 100644
--- a/include/device.h
+++ b/include/device.h
@@ -121,8 +121,8 @@ int class_add_device(struct class *class, struct device *dev);
 void class_remove_device(struct class *class, struct device *dev);
 
 extern struct list_head class_list;
-#define class_for_each_device(class, dev) list_for_each_entry(dev, &class->devices, class_list)
-#define class_for_each(class) list_for_each_entry(class, &class_list, list)
+#define class_for_each_device(class, dev) list_for_each_entry((dev), &(class)->devices, class_list)
+#define class_for_each(class) list_for_each_entry((class), &class_list, list)
 
 struct device_alias {
 	struct device *dev;
-- 
2.39.2



