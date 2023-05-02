Delivery-date: Tue, 02 May 2023 12:03:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmrT-002Bj4-Ix
	for lore@lore.pengutronix.de; Tue, 02 May 2023 12:03:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmrR-0000ym-EU
	for lore@pengutronix.de; Tue, 02 May 2023 12:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p/9k73buniD7p/LZL5OH03ikDAxj6RV6KnBJ6BR20SE=; b=cYEhlnDOQgWehcX2kiMCb7wZz2
	howeSB8ZledJ9wYBLvEZZJk5wMamq7EAlBDpNM1nocigEUNb96xA9DUVPoos1cmFvpqJIGQa45fhU
	T/KUZ83TK82dK1HBCkfsMg4V95WhgiNBdApdCyz/L+t3Q8pFKT2sKP7Ueb4OCOWl/klgfZzEjTTuz
	y5ikaYLkC10wSB1JRTNCl4lPjiz+vjtlKWxwniqrgbSniIG3KPC3J2gT21jPeAhDKl0RvKnz8r5cb
	eKtnMN3WuAyABH0zmBw8QtQtHCF4reAc7LFDu3UUUR/SNOUnxU/jy678besW1HL69/xupPns1Hypa
	O1A51xBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmqH-000rWQ-0S;
	Tue, 02 May 2023 10:02:41 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmqD-000rTd-2y
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 10:02:39 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 2E11E40005;
	Tue,  2 May 2023 10:02:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  2 May 2023 12:02:16 +0200
Message-Id: <20230502100216.334096-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424115908.115474-2-ahmad@a3f.at>
References: <20230424115908.115474-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_030238_109005_7CFABAD8 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! test: self: add basic regulator selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

  - fix order, so test doesn't fail.
  - print debug message before registration, so early failure
    is easier to follow
  - don't define DEBUG by default

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 test/self/regulator.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/test/self/regulator.c b/test/self/regulator.c
index adb4d93c2114..1ccaae0ed332 100644
--- a/test/self/regulator.c
+++ b/test/self/regulator.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-#define DEBUG 1
+
 #include <common.h>
 #include <bselftest.h>
 #include <driver.h>
@@ -60,12 +60,8 @@ static const struct regulator_ops test_regulator_ops_range = {
 };
 
 enum {
-	/*
-	 * This is intentionally ordered that way to test registering
-	 * an always-on regulator before its sibling that it depends on
-	 */
-	TEST_LDO1,
 	TEST_BUCK,
+	TEST_LDO1,
 	TEST_LDO2,
 	TEST_REGULATORS_NUM
 };
@@ -106,13 +102,12 @@ static int test_regulator_register(struct test_regulator *priv, int id,
 	cfg->rdev.desc = &cfg->desc;
 	cfg->rdev.dev = dev;
 
+	dev_dbg(dev, "registering %s\n", match->name);
+
 	ret = of_regulator_register(&cfg->rdev, match->of_node);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
 				     match->name);
-
-	dev_dbg(dev, "registered %s\n", match->name);
-
 	return 0;
 }
 
-- 
2.38.4



