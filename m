Delivery-date: Wed, 22 Nov 2023 16:56:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5paQ-004XaH-0F
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 16:56:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5paQ-0001Xd-4u
	for lore@pengutronix.de; Wed, 22 Nov 2023 16:56:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hQVDrFJ2p53BOCHBrrN8aH4qPG2jAGZZVhrAfgbQhJE=; b=Bl6aMiAUUHuczjaloNP/RjBT2G
	dST9CFQRxsQ5vBtTJZJEI9u6bxGe+GS2G3QkoQuimKGCrOKK+X+FPFG3Sg28qlh/Y/MLT8FNgHx8A
	c1ENS0dV1k1o/8sWTClgMHVzRiRTvbG2mML5V/lUK85QQEV8cPtCY5QMTwJI87yYhT6EVwKN4cvQy
	ICHs4SJTKI6jNPZDbHsvx2wO0l6hEGHgRXyA8woCU3G7dwq/0ZXcX0TDpMf4iMim6v//ynBuOVtKX
	RGDz2kIr4dLh5posKN3tWad4SooTvbgolwH3l93l/9dyYjT0cCd3LcpS/r5ccAKzPORbn0FU1ad8X
	Fk0M5BPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pZ0-002MCE-0X;
	Wed, 22 Nov 2023 15:54:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pYv-002MBB-33
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 15:54:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5pYr-0001BR-IJ; Wed, 22 Nov 2023 16:54:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5pYr-00AqPq-64; Wed, 22 Nov 2023 16:54:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5pYr-006Cmi-0G;
	Wed, 22 Nov 2023 16:54:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 16:54:43 +0100
Message-Id: <20231122155443.1446732-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_075449_981452_CFDF5862 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! test: self: add JSON Web Token tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test: self: jwt: use barebox_set_loglevel

For CONFIG_CONSOLE_SIMPLE or CONFIG_CONSOLE_FULL, this is equivalent,
but for CONFIG_CONSOLE_NONE, this fixes a linker error as
barebox_loglevel isn't defined in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - send as fixup instead of a patch as fixed commit is still in next
---
 test/self/jwt.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/test/self/jwt.c b/test/self/jwt.c
index f37b44be22b8..015a0e436736 100644
--- a/test/self/jwt.c
+++ b/test/self/jwt.c
@@ -97,8 +97,7 @@ static void test_jwt(void)
 	 * noisy, so we decrease logging a bit during their run
 	 */
 
-	old_loglevel = barebox_loglevel;
-	barebox_loglevel = MSG_CRIT;
+	old_loglevel = barebox_set_loglevel(MSG_CRIT);
 
 	jwt_rs256_mangled = strdup(jwt_rs256);
 	ch = &jwt_rs256_mangled[strlen(jwt_rs256_mangled) - 1];
@@ -152,6 +151,6 @@ static void test_jwt(void)
 		jwt_free(jwt);
 	}
 
-	barebox_loglevel = old_loglevel;
+	barebox_set_loglevel(old_loglevel);
 }
 bselftest(parser, test_jwt);
-- 
2.39.2



