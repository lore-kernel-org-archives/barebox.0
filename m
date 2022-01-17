Delivery-date: Mon, 17 Jan 2022 23:21:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNs-004zIa-Bg
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNq-0005Sc-4I
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwOPXC+BsPne3/SkBM7wiOEEuKyU9K7SeMi3vKFAlrw=; b=SwrOW21Cp8zc4y
	QTqxQiVblXbzsQc82tOu/pbQw4vtWZs5l/+EeGwSQVPyL4rUyksFvfpISl4kvbo15HsMK+3J8H+RD
	/82Sf3LbTbzpjQPQPSk7kTEdEvSKxGtB+pJxzTU/nIaGZv0I8EPp4kq+XfYT6b/FWVcpPTYrL3S9a
	3n6m5XJDq5qIMPRdN7tpq8WO017wOAHLYacUFDM4UxuxKl991q07um4iukOLqxjlKs0d+CabR4E/H
	JBdEuioHxGYkrn6cuN1bS5VCQigxK4GZmgXm+z6bbAxOL3JXRr8TAOWSqwFkDsohR7bijt6NBtcGA
	dzxvWzTCC2VeROcmLv4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMT-00GTFg-Bb; Mon, 17 Jan 2022 22:20:25 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6h-AS
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 633163ACE33
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:57 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 65EA73ACDF9;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <5e3c.61e5eb8b.df4ff.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx601.security-mail.net (Postfix) with ESMTPS id E16653ACD25;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id C24C627E03FA;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A953427E03CB;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A953427E03CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=45VKSFCOp43NeCQA9hc080V48LA1/9OxpDOE6/TzrP0=;
 h=From:To:Date:Message-Id;
 b=fXRS/zOlokVQJnQ88F0lpksM0j1boIm3aWRiYhsGzq7ucpme0qudJcEvkMnAp9nIP
 WAcPK1rUJpqxEQo7YJncET6W3nzOkdDvEL6mzc4zS1/X6bqiR42TQ/JfzZAywX7/Nv
 ++7yQaHSbg9FfWRonWK/3rzy8vM9OHJDKgxZBURw=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wWg6HDOquJ2v; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8B79727E03DD;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:08 +0100
Message-Id: <20220117221917.26970-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_701947_379D644F 
X-CRM114-Status: GOOD (  10.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/11] kvx: Move LINUX_BOOT_PARAM_MAGIC in asm/common.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Declare both defines FSBL_PARAM_MAGIC and LINUX_BOOT_PARAM_MAGIC in the
same header file, as they both have a very similar uses and value.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/include/asm/bootm.h  | 11 -----------
 arch/kvx/include/asm/common.h |  3 ++-
 arch/kvx/lib/bootm.c          |  1 -
 3 files changed, 2 insertions(+), 13 deletions(-)
 delete mode 100644 arch/kvx/include/asm/bootm.h

diff --git a/arch/kvx/include/asm/bootm.h b/arch/kvx/include/asm/bootm.h
deleted file mode 100644
index 7ad7e2e878..0000000000
--- a/arch/kvx/include/asm/bootm.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2019 Kalray Inc.
- */
-
-#ifndef _ASM_KVX_BOOTM_H
-#define _ASM_KVX_BOOTM_H
-
-#define LINUX_BOOT_PARAM_MAGIC 0x31564752414E494CULL
-
-#endif /* _ASM_KVX_BOOTM_H */
diff --git a/arch/kvx/include/asm/common.h b/arch/kvx/include/asm/common.h
index a7e301e53a..754953962b 100644
--- a/arch/kvx/include/asm/common.h
+++ b/arch/kvx/include/asm/common.h
@@ -12,7 +12,8 @@
  * Magic value passed in r0 to indicate valid parameters from FSBL when booting
  * If $r0 contains this value, then $r1 contains dtb pointer.
  */
-#define FSBL_PARAM_MAGIC	0x31564752414C414BULL
+#define FSBL_PARAM_MAGIC	0x31564752414C414BULL /* KALARGV1 */
+#define LINUX_BOOT_PARAM_MAGIC	0x31564752414E494CULL /* LINARGV1 */
 
 extern char _exception_start;
 extern char __end;
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 4d17e1846d..3e9772c458 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -17,7 +17,6 @@
 #include <linux/kernel.h>
 
 #include <asm/cache.h>
-#include <asm/bootm.h>
 
 typedef void __noreturn (*boot_func_entry)(unsigned long, void *);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

