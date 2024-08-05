Delivery-date: Mon, 05 Aug 2024 18:39:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0k0-006YAK-0Q
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 18:39:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0jz-00007T-IX
	for lore@pengutronix.de; Mon, 05 Aug 2024 18:39:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BJEoKkcteaWIpZ/sGV++P3hojqLI1CiEPfpCpBC+q0o=; b=k5R7xU8/jcGNoIL4XEwICsd2hN
	MnnIwOQhgkezk9F3Wde7ePxU1swKMFQMsPoMW5u71WpWO5APbEKsMEFIW78Ll7t5BFIcFygRKN1Gy
	NEtd0o/ZgJ0WghM9XLisO1bnaKxV6vQ/kPxhbtK8NiXuDAd0fVDFMqH7sVHukImYarby6DiG6kScR
	8yAYncXP89W+RMUhPvLWvXgjsfj5yIs+BsvMd15OphmQ+AqfM62sJug3tC40dqIpH4jUoQ8YJNNlT
	3VcyTMrjTjBwX7h4IjY2pdeVXCFf+GZieeGcmpb32U90ckP+jEoDKXPdBZTYOhxRPFezorcRkyLoe
	d+z3/ZLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0jT-0000000GYBX-2LWG;
	Mon, 05 Aug 2024 16:38:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0jJ-0000000GYAl-0FSS
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 16:38:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0jH-0008UQ-9n; Mon, 05 Aug 2024 18:38:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0jG-004kuN-TE; Mon, 05 Aug 2024 18:38:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb0jG-003Zfr-2d;
	Mon, 05 Aug 2024 18:38:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 18:38:37 +0200
Message-Id: <20240805163837.852102-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_093841_119850_712C120D 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] optee: include linux/limits.h to define U64_MAX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

U64_MAX is defined by <linux/limits.h>, which so far was included only
indirectly. To avoid breaking the build when this indirect include
disappears, include it directly in the file where it is used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/optee.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/optee.c b/common/optee.c
index 7fe93e441974..31442b1a498d 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -5,6 +5,7 @@
 #include <tee/optee.h>
 #include <linux/printk.h>
 #include <linux/errno.h>
+#include <linux/limits.h>
 
 static u64 optee_membase = U64_MAX;
 
-- 
2.39.2



