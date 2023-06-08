Delivery-date: Thu, 08 Jun 2023 09:25:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1M-00FRra-RR
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 09:25:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1K-000213-4k
	for lore@pengutronix.de; Thu, 08 Jun 2023 09:25:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UYpsKgZG+DRPCxfKST5nBAGloPnWP5CdJv7Yq3hR2MM=; b=sfeGqHAYSrdMe/G6iJNtoLIZuL
	Xs52Mo2NdZKRc+6mCCGjUcATAzdXmJ9O2qXiz+derlK6oNqIgtjQgt6YRSa4d8YR4x72KnSSpG7ng
	GqTC/gcekRRCdL0oaOtjdKb7+jaVSCpJa8++Hi6DrYI/EhfwCSV3W6117yaEQwrnNMvn4EeYE5O6C
	toSAFItHy8fbCZRNXGmWloBMgBVcIbrvZqNPbsX6q2x4IW0vMh8prJM3ibeTN234EnIGJLBay09qH
	RQFt+wCbZE/LOiBfOHIiFBCeQ8eemxAwm2ohvRv8+8TsYZtOVc/i489yei9tC/x1TjCopDWeEansE
	xYoZn9Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A08-008O6O-02;
	Thu, 08 Jun 2023 07:24:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A05-008O5h-08
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 07:24:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A03-0001jQ-11; Thu, 08 Jun 2023 09:24:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A02-005v84-CH; Thu, 08 Jun 2023 09:24:02 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A01-00Dk6k-MC; Thu, 08 Jun 2023 09:24:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 09:24:00 +0200
Message-Id: <20230608072400.3275489-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_002405_080362_D9B813C6 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] include: move PATH_MAX from fs.h to linux/limits.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux defines PATH_MAX in <linux/limits.h> and code that just wants
PATH_MAX to format a path may not be interested in all the other stuff
defined in fs.h. Thus move PATH_MAX to <linux/limits.h> instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fs.h           | 3 +--
 include/linux/limits.h | 2 ++
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/fs.h b/include/fs.h
index c64e78b38cf9..a61982e59ade 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -12,8 +12,7 @@
 #include <filetype.h>
 #include <linux/fs.h>
 #include <linux/string.h>
-
-#define PATH_MAX       1024        /* include/linux/limits.h */
+#include <linux/limits.h>
 
 struct partition;
 struct node_d;
diff --git a/include/linux/limits.h b/include/linux/limits.h
index 17375ef5225e..8baf8494943e 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -35,4 +35,6 @@
 #define S64_MAX		((s64)(U64_MAX >> 1))
 #define S64_MIN		((s64)(-S64_MAX - 1))
 
+#define PATH_MAX       1024
+
 #endif /* _LINUX_LIMITS_H */
-- 
2.39.2



