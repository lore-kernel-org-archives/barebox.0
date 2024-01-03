Delivery-date: Wed, 03 Jan 2024 19:36:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL660-002O74-0R
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65s-0007DZ-37
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V+yn3z6hMmbljxWp6RKlOwXbf+rVNRMLnvBLWkLGaa0=; b=LkkNmREVLBKUd80XefUwtyhaNs
	h7lx671ksuMAyjIpZg5lOj02WBoECRuC8lIGeTFKYLibQy+OUIJM5SyvwHYfdSHC4N+JaVpv5JdJv
	EI/1RBUuQPGQRb+n6I/Cz3JRb8k8WPrvcL269sAdMDsC1wFX0hizg1PSnAWN77tR0fT3NLtKATpdF
	a+EQ1qRyNOrf4nC30iOT8W3Y1AGquE5rvsS1rBxlGwzK5Pokz7WSJEemrsarotpxyqt7uuRu3Dad+
	yKgeVBPmOKoc5yRA4oXxKOozwPe+ZEaOwh0J0hhJm+3JaVnInBuTgAYZq7WmRobi8fQoZ17v8ABjX
	fDKdi34w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64H-00BksQ-1f;
	Wed, 03 Jan 2024 18:34:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61K-00BhNe-0y
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=V+yn3z6hMmbljxWp6RKlOwXbf+rVNRMLnvBLWkLGaa0=; b=EdQ0L/K3+GP9j9IMbicIfudzFJ
	GpROk+4qEOBdQKgHVXGtxGcSNMBA/8VzyYeuKjNrWRvUvRnRllTwFGkFTD7i0wS4zJQFnyfgRsjsH
	Y3si4L4K6fwocwTAV9AjRNZiYdZWfCmJooGoUN2AOiU3WGnXlf9wJEAymI/T3AuIeD12YxXaF7qve
	jKikE3YgOUWUa1kloKWJkUuBtPNccGrX+aijvJiqRNGVMtbg9uqCfG7rV8wTCTW6HfQXSVcnnTV9N
	eAH+bqUCZw3KET6au2HKhITgWg7TDiXpmi4t7SevjGKIdCLn+1FoaQRiVNJf++l35JxJGYyM4iD8L
	rMlvDKiQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61C-005eCU-1l
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001ZZ-6p; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Aw2-Pp; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0N;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:08 +0100
Message-Id: <20240103181312.409668-49-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183107_927977_CC3E9B38 
X-CRM114-Status: UNSURE (   9.00  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 048/112] test: self: add strjoin tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just to make sure strjoin works as intended, add some simple unit tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/string.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/test/self/string.c b/test/self/string.c
index f03a7410cd64..d33e2d7918ca 100644
--- a/test/self/string.c
+++ b/test/self/string.c
@@ -168,8 +168,36 @@ static void test_strverscmp(void)
 	strverscmp_assert_one("", "", 0);
 }
 
+static void __expect_streq(const char *func, int line,
+			   char *is, const char *expect, bool free_is)
+{
+	total_tests++;
+	if (strcmp(is, expect)) {
+		failed_tests++;
+		printf("%s:%d: got %s, but %s expected\n", func, line, is, expect);
+	}
+
+	if (free_is)
+		free(is);
+}
+
+#define expect_dynstreq(args...) \
+	__expect_streq(__func__, __LINE__, args, true)
+
+static void test_strjoin(void)
+{
+	char *strs[] = { "ayy", "bee", "cee" };
+
+	expect_dynstreq(strjoin("",    strs, ARRAY_SIZE(strs)), "ayybeecee");
+	expect_dynstreq(strjoin(" ",   strs, ARRAY_SIZE(strs)), "ayy bee cee");
+	expect_dynstreq(strjoin(", ",  strs, ARRAY_SIZE(strs)), "ayy, bee, cee");
+	expect_dynstreq(strjoin(" ",   strs, 1),                "ayy");
+	expect_dynstreq(strjoin(" ",   NULL, 0),                "");
+}
+
 static void test_string(void)
 {
 	test_strverscmp();
+	test_strjoin();
 }
 bselftest(parser, test_string);
-- 
2.39.2



