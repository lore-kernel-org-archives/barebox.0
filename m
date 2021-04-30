Delivery-date: Fri, 30 Apr 2021 15:42:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPD-00054U-3Y
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:42:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPC-0000Z5-B2
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:42:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fCker/0g5r5ZYXagos/aD7ZWK0dBRk+ysZKla4fUXL4=; b=UXjFf99TtfxPx2yHbafPdZUJ+
	mxlUkuKJkdFhc27wk6DAsynNo83DZT3XoR1905xoSndrIeoSCQz53TKPuKd3C3r87yzo7IDNsxycR
	gZLjieOBd91mFYk5gMNwUTol27NNA6rlKULTDlETVzuvxs1X6d+AGtk41R8heMO+DO1YbbHHM3pEE
	9kK1dwCSq9/dgoar1hZAYK/XjmdgVr/5HuNHueazli3E+3sppGLFQyqYFS/KUrbmUz5j2wa40FNVj
	CM32qgdc7y+0CKQdPoafFm9xKVVlA6Q7Wb2OdTZqLm+jGjdNzh931Uwnzhn09Bd7NvZEVWjZlg+jJ
	P/fGT30uw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTON-007wAv-Le; Fri, 30 Apr 2021 13:41:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOI-007wAT-UE
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=eBvFhwQ9yw2eIk43TJl/xhHfsSbJfG4vi2lCvnmzFDg=; b=B9aeXt08r3LGMW3+MHbpy9l18O
 ylDuFTZgAvGLLAy7gE2sUEue33kOmgg693ZAeawbV2OHRe51GubymKYIXrN+2NO2ZdLGwa/TCL5r9
 0RcCN9jrYtGUhhRPeob26vEDW17TwVgcmxnRyaG/yxaoe1VSvK7iU+2OvpPMVTctNncfbWQq03X7e
 qPyLZ1IPItMSJuQMRaUj7as0DSeiOW3gp+Gq2ldUl+NE34k0x7gYD00NOL76bHKmCM0GnrYeqSrU4
 wGqN1uQFSC8iOZBCJZd+4b0UhrlBdHo3Qckxpucg5G9on3AVWkfVJS7yJY93NX6BRf6gG2dpmNTOn
 7cU41gmA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOG-001Pnf-H4
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:41:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOF-0000At-63; Fri, 30 Apr 2021 15:41:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOE-0005ht-Sd; Fri, 30 Apr 2021 15:41:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Apr 2021 15:40:58 +0200
Message-Id: <20210430134101.20580-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430134101.20580-1-a.fatoum@pengutronix.de>
References: <20210430134101.20580-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_064108_597794_083E0E2D 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] bthread: implement basic Linux-like completion API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, completions made sense only in one direction: The main thread
can wait for pollers, but the other way around didn't work. With the new
bthread support, any bthread can wait for another to complete().
Wrap this up using the Linux completion API to make porting threaded
code easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/completion.h | 55 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 include/linux/completion.h

diff --git a/include/linux/completion.h b/include/linux/completion.h
new file mode 100644
index 000000000000..e897e4f65b8b
--- /dev/null
+++ b/include/linux/completion.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * (C) Copyright 2021 Ahmad Fatoum
+ *
+ * Async wait-for-completion handler data structures.
+ * This allows one bthread to wait for another
+ */
+
+#ifndef __LINUX_COMPLETION_H
+#define __LINUX_COMPLETION_H
+
+#include <stdio.h>
+#include <errno.h>
+#include <bthread.h>
+
+struct completion {
+	unsigned int done;
+};
+
+static inline void init_completion(struct completion *x)
+{
+	x->done = 0;
+}
+
+static inline void reinit_completion(struct completion *x)
+{
+	x->done = 0;
+}
+
+static inline int wait_for_completion_interruptible(struct completion *x)
+{
+	while (!x->done) {
+		switch (bthread_should_stop()) {
+		case -EINTR:
+			if (!ctrlc())
+				continue;
+		case 1:
+			return -ERESTARTSYS;
+		}
+	}
+
+	return 0;
+}
+
+static inline bool completion_done(struct completion *x)
+{
+	return x->done;
+}
+
+static inline void complete(struct completion *x)
+{
+	x->done = 1;
+}
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

