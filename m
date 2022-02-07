Delivery-date: Mon, 07 Feb 2022 09:29:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOo-00851G-Sd
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:29:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOn-0007lq-F2
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1v68T2G82GXQ27B8KDC2NwZgyEwZkGJ/G2tZfW4mYnU=; b=OsBgRnvSJKekE9
	xlPB+NIkbCgGRYPXt8AD/C5kEVxYKrKSEhAPqD7GCjAFcPpdvgpRHNpu3hxOQeFMsdBaparVzWWo4
	ihP5jvCqFJC1F0W4jwfDzA4rxjYvgf2JqPerlbSjSUhlN8KFym8XsiQF6NALwXXq1ZblDgGy3WstE
	A4pglVvH3W6NBzZfIlxY9/xucXo8mB+0Ll6lHqojelVGVqKwZCc4gZdBEgx1QQ20txQBzs/qqR6dl
	/KBFsGI8pYO3yqzu2pHI0NN54w6CdZtZd82A51j/7awKQYaCXMl9MUEWcax4ihOlXD/dV49xbrsTj
	hvxcGkofT5FSpVtmoz8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzNe-009LEG-Nf; Mon, 07 Feb 2022 08:28:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzNV-009LC1-4Z
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:28:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-0007Y2-MD; Mon, 07 Feb 2022 09:28:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-004Pvx-63; Mon, 07 Feb 2022 09:28:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 09:27:58 +0100
Message-Id: <20220207082801.1052894-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
References: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002805_240341_0FC0D05A 
X-CRM114-Status: UNSURE (   9.62  )
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
Subject: [PATCH v2 2/5] test: self: printf: add tests for %*ph prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This modifier was recently added. Turn the description from its commit
message into a test.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/printf.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/test/self/printf.c b/test/self/printf.c
index ec74df32ee4b..7a74660868c2 100644
--- a/test/self/printf.c
+++ b/test/self/printf.c
@@ -277,6 +277,23 @@ errptr(void)
 	test("Requested probe deferral", "%pe", ERR_PTR(-EPROBE_DEFER));
 }
 
+static void __init
+test_hexstr(void)
+{
+	u8 buf[4] = { 0, 1, 2, 3 };
+
+	if (!IS_ENABLED(CONFIG_PRINTF_HEXSTR)) {
+		pr_info("skipping hexstr tests: disabled in config\n");
+		skipped_tests += 4;
+		return;
+	}
+
+	test("[00 01 02 03]", "[%*ph]",  (int)sizeof(buf), buf);
+	test("[00:01:02:03]", "[%*phC]", (int)sizeof(buf), buf);
+	test("[00-01-02-03]", "[%*phD]", (int)sizeof(buf), buf);
+	test("[00010203]",    "[%*phN]", (int)sizeof(buf), buf);
+}
+
 static void __init
 test_pointer(void)
 {
@@ -299,6 +316,7 @@ static void __init test_printf(void)
 	test_number();
 	test_string();
 	test_pointer();
+	test_hexstr();
 
 	free(alloced_buffer);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

