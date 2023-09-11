Delivery-date: Mon, 11 Sep 2023 17:10:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYg-00Bcw4-Qo
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYe-0005PI-4i
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sB4v1E0zqz5Ox1AeWTC77PfhfzfDGAsk9+p5usRZnEw=; b=V8NhmOvLOJGPyWplQSDiIbe8ay
	rKAcGyHOooO/kltxuYaeRe2ipShOh2rBHRzY7lp4kImkXoA0Pvx2GiMcICjmKnDbD5J4qV0KcaPwe
	Mu6a79iiGJYnb1clhX9wTapkVG2xtrUwNzshO1u3KqC2tK2FdO7usApxcEjoURGjX/5KYTJnkBJzl
	VJDIdPwb5jFI33sXKxOKNS8F/5pInwGZYr6RQMmdu8UgUYsxRR0Yn7UmQIoGFU2Y8v91/sRknXABr
	eQ6Jm0FfQsINvdnyXnDUd5sOEnQbVmz3oZAHDbfQvvQvJVcYIIBye+x3CrWJEuImo4jvgCg68WEDr
	H5qx6GKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXJ-000pRV-0J;
	Mon, 11 Sep 2023 15:09:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXG-000pOo-12
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-0004xT-Il; Mon, 11 Sep 2023 17:09:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6A-54; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2rW-2I;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:08:56 +0200
Message-Id: <20230911150900.3584523-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080910_361269_4DB71C74 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] include: move PAGE_ definitions into linux/pagemap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<common.h> is a fat header and we shouldn't need to include it just to
get a definition for PAGE_SIZE. In Linux PAGE_SIZE is defined per
architecture, but in barebox we only have 4K pages so far, so let's move
it into <linux/pagemap.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h        | 6 +-----
 include/linux/pagemap.h | 8 +++++++-
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/include/common.h b/include/common.h
index cf3e0447a09a..b7b4d9e35094 100644
--- a/include/common.h
+++ b/include/common.h
@@ -16,6 +16,7 @@
 #include <linux/string.h>
 #include <linux/kernel.h>
 #include <linux/stddef.h>
+#include <linux/pagemap.h>
 #include <asm/common.h>
 #include <asm/io.h>
 #include <linux/printk.h>
@@ -105,11 +106,6 @@ void shutdown_barebox(void);
 	char __##name[sizeof(type) * (size) + (align) - 1];	\
 	type *name = (type *)ALIGN((uintptr_t)__##name, align)
 
-#define PAGE_SIZE	4096
-#define PAGE_SHIFT	12
-#define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
-#define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
-
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 20c38a0b8912..01cbfc17c57b 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -3,11 +3,17 @@
 #ifndef _LINUX_PAGEMAP_H
 #define _LINUX_PAGEMAP_H
 
+#include <linux/kernel.h>
+
 /*
  * Copyright 1995 Linus Torvalds
  */
 
-#include <common.h>
+
+#define PAGE_SIZE	4096
+#define PAGE_SHIFT	12
+#define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
+#define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
 
 #define PAGE_CACHE_SHIFT        PAGE_SHIFT
 #define PAGE_CACHE_SIZE         PAGE_SIZE
-- 
2.39.2



