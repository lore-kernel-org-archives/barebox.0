Delivery-date: Mon, 03 May 2021 14:47:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXyb-0003Dj-0x
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:47:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXya-0007eE-6i
	for lore@pengutronix.de; Mon, 03 May 2021 14:47:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fCker/0g5r5ZYXagos/aD7ZWK0dBRk+ysZKla4fUXL4=; b=VlUBaQhC8M5TAUdDcxzP6r1Iq
	cn51K4dtW2IItJbvTVypUe+TUu+ItqRTsrutnDAhyQDdlp13bju8Lm1CIVmcjNFhNu7veO766AJDz
	5gtuFWWm+pnHzp9aV2XRqavr9ZZ7jBBzhtKDjxn5QAqMXCmTxopulfbIM+kedY5MAWAd+ihd+qq3o
	qlInHGhyGE0Y1S+vl8l75+nV8PsG+rQrXdBhZgeHvR0hLg04XUwMDMUz1KIQ6VrX8ibh6R0MRoEu9
	oIoDPAkxNrfJMagFARpnbDj5xMQ9f2+G1UmxvcoOXRAnQYZ3OATM6mCO/JWhqLq0JRogisv3HnvHi
	0VQ1x/R/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXxJ-00DtFN-Sx; Mon, 03 May 2021 12:45:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwv-00DtC9-CU
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=eBvFhwQ9yw2eIk43TJl/xhHfsSbJfG4vi2lCvnmzFDg=; b=WNC4jBPwMWtP2okX64ifcexPFB
 /clBNkb3Ct9MQTuo1ukCqgRKSIPJb9ZbIqzdU6kBlx/J0w8XRuRpDosVy2YHD/LU5RYCoIjoN4EGq
 TO/Macl7JkSM6BcP2MiAjOvhJk7IqSs+jol+Ich5cbVin92hViY1o/14X1AqqPJTnPdkAbg0fVGE/
 xrKs2XOFs64OeZB9WR7VhgmT4PKdufEEBAik27I4moLF69TdSP2JNCJal00nV6DuLt3zLUKwwvJV4
 C+DBf1tvuiW13VAIj+qbhThvfR1CDuJcTnXG9cPKvCHXVwXLZ6/OkeFxtgxSSMvjS7gvX42mHqIo/
 T0yWwh8w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwr-003416-Qr
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:45:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXwq-00072F-AC; Mon, 03 May 2021 14:45:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXwp-0000Ju-MI; Mon, 03 May 2021 14:45:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 14:45:05 +0200
Message-Id: <20210503124508.856-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503124508.856-1-a.fatoum@pengutronix.de>
References: <20210503124508.856-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_054517_894347_4F6447AB 
X-CRM114-Status: GOOD (  14.21  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/4] bthread: implement basic Linux-like completion API
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

