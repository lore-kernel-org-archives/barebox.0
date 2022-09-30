Delivery-date: Fri, 30 Sep 2022 17:40:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI7P-001XWf-7N
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:40:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI7N-0007mU-Bv
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wulaiy+8SNX9QGDiLktp/8DBJpV9l8/sAYRiKZVfimM=; b=iRCQxXKe75k8I3b49+/GCCNrce
	+zsZ1JDAHD+RaUOivOf1ITDGh22dyafAA+s+ELUKa7ahjI9sVOc4nC71Z3KyelOm1KcpVPPhzb00c
	FTyYvdkx/Cbv27kxo6vE87TFoOrYUekLBfNwrkFhbwPKsOkITlqlwoTET6H3f81QPLSVxiEVmDu5h
	1g/FyHgCN29jrtg8Ug0xkPhkRlk9xZO5cm/4HHBR44uF5GJSieRoT6vzJXFRn7WUel9oaahISmtTg
	kGcy1RukycHZWbjcbZw7ABg0F+uCwCn+2uwxX2Ve9SyZHkLfQxlgSs68JvDaDkN/tsaB7/8n/HCZl
	mM/JarsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI63-00AH8q-F5; Fri, 30 Sep 2022 15:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI5n-00AH4Y-GJ
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:38:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI5l-0007Xb-Gn; Fri, 30 Sep 2022 17:38:21 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI5m-003pN9-Am; Fri, 30 Sep 2022 17:38:20 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI5k-0037nV-6h; Fri, 30 Sep 2022 17:38:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:38:19 +0200
Message-Id: <20220930153819.744833-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083823_569174_9D5CC32B 
X-CRM114-Status: UNSURE (   7.47  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: define SSIZE_MAX in <linux/limits.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For symmetry with SIZE_MAX, which we already define, define SIZE_MAX as
well. Definition taken from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/limits.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/limits.h b/include/linux/limits.h
index e1aa2de84519..eab3848bbf7a 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -19,6 +19,7 @@
 #define SIZE_MAX	(~(size_t)0)
 #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
 #define UINTPTR_MAX	ULONG_MAX
+#define SSIZE_MAX	((ssize_t)(SIZE_MAX >> 1))
 
 #define U8_MAX		((u8)~0U)
 #define S8_MAX		((s8)(U8_MAX >> 1))
-- 
2.30.2



