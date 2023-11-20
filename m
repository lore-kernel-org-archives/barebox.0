Delivery-date: Mon, 20 Nov 2023 08:23:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycg-0016ZE-1R
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 08:23:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycg-0004h2-HM
	for lore@pengutronix.de; Mon, 20 Nov 2023 08:23:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QyM5kR3bnP3fN1r1HlR8P6KLzS+26ppPvF1EjiKlE/Q=; b=glJkQ0972Z/mgYSbM5xFGHrPUj
	ie/PITrr+g5w1Btq3KGBPpINsBIwBG1SmfDCYVdkT80JdYmQuKR30gha6LJSSE/JdcuU4kIt1n01L
	ndophrFlZ1DMynZuCE2GMffd7xKTccILvz1pEppdEQpF81Wv96fyBMI5JNYHTULVxekEds3qfx5HP
	gVD5ec0OgGRux1HCXMzjOczvQYCIKmVHVeCqj5H/lW/1xmYH3bf1i+EQKtg6zY1eP68cmn+8AILQX
	p5VyGUyLnmsgoZmmAafKqUFGeFjUmZKXr1HdYBk3N1ZWhfzZX9p94vpk5mT4h49rxPI6NzzgCP/iN
	EK1iRMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb5-00BMzL-2D;
	Mon, 20 Nov 2023 07:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb1-00BMw5-1E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 07:21:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-0004H3-Ou; Mon, 20 Nov 2023 08:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-00AIZE-Cd; Mon, 20 Nov 2023 08:21:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-008Q4J-0y;
	Mon, 20 Nov 2023 08:21:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 08:21:22 +0100
Message-Id: <20231120072122.2006805-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
References: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_232127_504800_761DE76E 
X-CRM114-Status: GOOD (  10.12  )
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
Subject: [PATCH master 4/4] test: self: jwt: use barebox_set_loglevel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For CONFIG_CONSOLE_SIMPLE or CONFIG_CONSOLE_FULL, this is equivalent,
but for CONFIG_CONSOLE_NONE, this fixes a linker error as
barebox_loglevel isn't defined in that case.

Fixes: ba9af2bd18db ("test: self: add JSON Web Token tests")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



