Delivery-date: Sat, 24 Aug 2024 22:02:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyK-00D0me-31
	for lore@lore.pengutronix.de;
	Sat, 24 Aug 2024 22:02:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyK-0005Pf-9h
	for lore@pengutronix.de; Sat, 24 Aug 2024 22:02:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mPDXDFSnl2ykQEH53chfDuC25Bk3sgjavAOokarJNp8=; b=Tn9YA3TJWuBAbqkYJLGzJiWcK4
	zFv/qi4+SJArLAVletbQ0GvvBESeHfJau5QqXM2wWYgR/9O/o5jzlmJt8GhupwP6+lokfAs+uKa1a
	N/exkIRmB3HIdK6HOWPP7OY63a4oWWJMytNmB2FQkeW5WYNp/9E1bwnlfhGVFhzvvLxZDmgZb4sG+
	Bgtkn89Wj3k3h9qAYL8Ab+qgESs4bbRNWGuGGLZTckBIaEhb5nvJpMn8OT7MilkXoSGks9E9AB1EF
	7H5rRTk600tWpARBQoyakrU6wI1HRtUHxWWlxf6WHT9P3NzmZAO34dTBtITJhT/FMKvMYSZPBbKcL
	E7368T8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwxn-00000002qBN-3NAH;
	Sat, 24 Aug 2024 20:02:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwxl-00000002qAs-1aF4
	for barebox@lists.infradead.org;
	Sat, 24 Aug 2024 20:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxj-0005AP-W8; Sat, 24 Aug 2024 22:02:16 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxj-002mrJ-J4; Sat, 24 Aug 2024 22:02:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxj-0093sf-1c;
	Sat, 24 Aug 2024 22:02:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 24 Aug 2024 22:02:14 +0200
Message-Id: <20240824200214.2159827-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_130217_440173_0E7C6E61 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] include: move STACK_ALIGN_ARRAY to linux/align.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As part of the measures to factor out stuff from common.h into dedicated
headers, move out STACK_ALIGN_ARRAY. This macro doesn't exit in Linux,
but the file is fitting.

We don't need to explicitly include it, because it's being included by
<linux/kernel.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h      | 12 ------------
 include/linux/align.h | 11 +++++++++++
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/include/common.h b/include/common.h
index fb8931c51eb9..571f46fd0bc1 100644
--- a/include/common.h
+++ b/include/common.h
@@ -95,18 +95,6 @@ enum autoboot_state do_autoboot_countdown(void);
 
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
-
-/*
- * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
- * meets a minimum alignment requirement.
- *
- * Note that the size parameter is the number of array elements to allocate,
- * not the number of bytes.
- */
-#define STACK_ALIGN_ARRAY(type, name, size, align)		\
-	char __##name[sizeof(type) * (size) + (align) - 1];	\
-	type *name = (type *)ALIGN((uintptr_t)__##name, align)
-
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
diff --git a/include/linux/align.h b/include/linux/align.h
index 8df1b3dcd749..4b373bf73d5b 100644
--- a/include/linux/align.h
+++ b/include/linux/align.h
@@ -10,4 +10,15 @@
 #define PTR_IS_ALIGNED(x, a)	IS_ALIGNED((unsigned long)(x), (a))
 #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
+/*
+ * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
+ * meets a minimum alignment requirement.
+ *
+ * Note that the size parameter is the number of array elements to allocate,
+ * not the number of bytes.
+ */
+#define STACK_ALIGN_ARRAY(type, name, size, align)		\
+	char __##name[sizeof(type) * (size) + (align) - 1];	\
+	type *name = (type *)ALIGN((unsigned long)__##name, align)
+
 #endif
-- 
2.39.2



