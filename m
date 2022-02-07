Delivery-date: Mon, 07 Feb 2022 08:57:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuM-0083XS-Vy
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:57:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuL-0002dh-17
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:57:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4reKt2UwXYbDh0ELNU+R3lteqUuJzGn6K7P5YSm5SU=; b=464NtlEhxRxxLD
	JlPf6yjyO+yh8cvR7umUXEnC+YJxHGiRSlGGHJSoJKWZk1As86H4HAGxuQ4gicly7jE+matOmQXbX
	n0CKXn5gvMLnT/QLFpxJp6d9o4ToaF1Pci1I6z7ZmqPswssK1cnLSuGyUu1tM2DOAbAxBKfl/yALV
	voj3GUbKYtLQhGST8+xEAPVdG3PHgi/njQ9lVOMNFdtuu3XuaDJ8Jrxspwz4gk9O3IvTN6K2SV9RO
	+IjVWdJ7yE3DyyUwDHt894+yZBYYFkYJxHnw0c2I7gqrxB+Bg39mdhpZm8g2vf2s/DLIN9Q0BrjpE
	W5cNJ0cAGYDEMzccKZbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGyt7-009Gk1-1z; Mon, 07 Feb 2022 07:56:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysy-009Gfk-2g
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-0002B0-SJ; Mon, 07 Feb 2022 08:56:22 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-004Ftv-Bn; Mon, 07 Feb 2022 08:56:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:17 +0100
Message-Id: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235632_153920_AD2E71A0 
X-CRM114-Status: GOOD (  10.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] test: self: printf: log skipped tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Number of skipped tests is reported, but let's report the reason as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/printf.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/test/self/printf.c b/test/self/printf.c
index 52fe6ac0faf9..ec74df32ee4b 100644
--- a/test/self/printf.c
+++ b/test/self/printf.c
@@ -247,8 +247,11 @@ uuid(void)
 	const char uuid[16] = {0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7,
 			       0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf};
 
-	if (!IS_ENABLED(CONFIG_PRINTF_UUID))
+	if (!IS_ENABLED(CONFIG_PRINTF_UUID)) {
+		pr_info("skipping UUID tests: disabled in config\n");
+		skipped_tests += 4;
 		return;
+	}
 
 	test("00010203-0405-0607-0809-0a0b0c0d0e0f", "%pUb", uuid);
 	test("00010203-0405-0607-0809-0A0B0C0D0E0F", "%pUB", uuid);
@@ -265,8 +268,11 @@ errptr(void)
 	/* Check that %pe with a non-ERR_PTR gets treated as ordinary %p. */
 	BUILD_BUG_ON(IS_ERR(PTR));
 
-	if (!IS_ENABLED(CONFIG_ERRNO_MESSAGES))
+	if (!IS_ENABLED(CONFIG_ERRNO_MESSAGES)) {
+		pr_info("skipping errno messages tests: disabled in config\n");
+		skipped_tests += 2;
 		return;
+	}
 	test("(Operation not permitted)", "(%pe)", ERR_PTR(-EPERM));
 	test("Requested probe deferral", "%pe", ERR_PTR(-EPROBE_DEFER));
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

