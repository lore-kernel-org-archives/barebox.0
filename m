Delivery-date: Mon, 14 Oct 2024 15:33:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCa-004H8N-34
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:33:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCa-0004A6-Ca
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:33:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YMYByysmE6AQxwaqTSDayiqIkvE/noEBSShCaVRn/1Y=; b=WJQhmnS0YcMEoY+Pa9DoYZ07k4
	iwR6VtGlq0WW8xiS1SimP75l6RXKXLDD48NLNs44eo/1b9WQSdMwK/XyUI5KSfJkRT5LtXtwRMPn6
	uA6mLTbdZukW98COpOnfvxEZ5Wt++JKu6duQrqYaf/kh2T00UA1jYiJL5OGQfBL260LzqH1mcW0kO
	QY6+4E9rc3oStd/zpzKwLbrwWZefYTrptt0h16IqLIowYrUwlyJiOqtB5cmgyXvJ1K5zJlE6Tc2Fn
	7Q6h529PJ8XnRJYvNrKLY/TJV8DfLKa7QCmaQ8g/cR5GhLoDKdqtIiQI526DaVHmOB4pte+brxXwg
	Jq1SnhQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LC8-00000005Imt-16Te;
	Mon, 14 Oct 2024 13:33:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JsR-000000051rJ-378L
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:08:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-0002ka-Ir; Mon, 14 Oct 2024 14:08:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-001msm-6A; Mon, 14 Oct 2024 14:08:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-1P;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:39 +0200
Message-Id: <20241014115040.2843121-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_050843_901093_3964DD78 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/12] include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of using an ambiguous parameter name 'size' and having a comment
to clarify what's meant by it, just rename it nelems to make clear that
it's the number of elements that should be specified as argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/align.h | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/include/linux/align.h b/include/linux/align.h
index 3b0c60d6e9ae..ff3134db9ea1 100644
--- a/include/linux/align.h
+++ b/include/linux/align.h
@@ -15,12 +15,9 @@
 /*
  * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
  * meets a minimum alignment requirement.
- *
- * Note that the size parameter is the number of array elements to allocate,
- * not the number of bytes.
- */
-#define STACK_ALIGN_ARRAY(type, name, size, align)		\
-	char __##name[sizeof(type) * (size) + (align) - 1];	\
-	type *name = (type *)ALIGN((unsigned long)__##name, align)
+  */
+#define STACK_ALIGN_ARRAY(type, name, nelems, align)		\
+	char __##name[sizeof(type) * (nelems) + (align) - 1];	\
+	type *name = (type *)ALIGN((uintptr_t)__##name, align)
 
 #endif
-- 
2.39.5



