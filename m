Delivery-date: Thu, 20 Mar 2025 06:17:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hd-001l00-2R
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hc-0002XH-8e
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmRuS6Iq+VyzY9IEHi2o5V+Y5C+U9hVG8+xqK9/iANM=; b=s59fsylG7XL8YHVpgg/t4H338u
	+7aN9XaTUou3wjx77v0rv1/6lEujFyPMIRmHqvnid/PGN5uRoYAu+g7dLokr66+Jjvq8eIS5wznn9
	hSxoundhNh50oMDy0eCy6x2PzqRKu+u3IuSYP1TmGrki9fIknnCcuvAwGKhSl2Ch5TwOAUdJzUNDU
	yDav4q47i/N+2/cyhxiDFFxgyKVC0VQV3S8i8Mdw6XxVfQbQ/0h+XOGlt3DEj161v0s8i5Xw0c1ot
	W9FWlEQmlMPxiyJPmUXw6hkukvT4xEjAd2oKYVAtyIJxOrR+LOa6VaT02SK0o2LMxF6MRfLyTXE7R
	3Fhe0JvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8HB-0000000BBnt-06s5;
	Thu, 20 Mar 2025 05:17:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8H8-0000000BBlh-0aRs
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:17:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001ya-Sk; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huf-2N;
	Thu, 20 Mar 2025 06:16:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gp-007EvV-0D;
	Thu, 20 Mar 2025 06:16:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:16:41 +0100
Message-Id: <20250320051641.1721377-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221702_180814_869912A3 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 8/8] test: self: printf: add tests for formatting wide strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's repeat the same string tests we already have, but with wide (%ls)
strings instead of our normal ones.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 test/self/printf.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/test/self/printf.c b/test/self/printf.c
index eae40ed242c1..3f35b5514705 100644
--- a/test/self/printf.c
+++ b/test/self/printf.c
@@ -179,6 +179,20 @@ test_string(void)
 	test("      1234", "%10.4s", "123456");
 }
 
+static void __init
+test_wstring(void)
+{
+	if (!IS_ENABLED(CONFIG_PRINTF_WCHAR))
+		return;
+
+	test("", "%ls%.0ls", L"", L"123");
+	test("ABCD|abc|123", "%ls|%.3ls|%.*ls", L"ABCD", L"abcdef", 3, L"123456");
+	test("1  |  2|3  |  4|5  ", "%-3ls|%3ls|%-*ls|%*ls|%*ls",
+	     L"1", L"2", 3, L"3", 3, L"4", -3, L"5");
+	test("1234      ", "%-10.4ls", L"123456");
+	test("      1234", "%10.4ls", L"123456");
+}
+
 #if BITS_PER_LONG == 64
 
 #define PTR_WIDTH 16
@@ -331,6 +345,7 @@ static void __init test_printf(void)
 	test_basic();
 	test_number();
 	test_string();
+	test_wstring();
 	test_pointer();
 	test_hexstr();
 	test_jsonpath();
-- 
2.39.5



