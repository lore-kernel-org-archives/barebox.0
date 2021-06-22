Delivery-date: Tue, 22 Jun 2021 10:27:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl6-00086H-Pz
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl5-00035M-Sv
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:27:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCker/0g5r5ZYXagos/aD7ZWK0dBRk+ysZKla4fUXL4=; b=qVv0SNVx8TNoJe
	rzO92wMs4SP06uYsn55SmTUT8sDUcNfrda4YoAux9RZJkm8zyAW+j8moJJG4027aqwFQi5Y4/ulhK
	FhjslduQ+kqmPb/xcDhqiFECbKMSUmH0flyEo8F8zzygloN0Sgt4eL94l7ss2O0KnyxYkQVDSB6lb
	NysmGOmDSjwy6rE/b1/Nsu7983HjiIM9225s7edLx1WbCBFptA7PWN7cTbuvSTBx2sRuJPrWFKD1s
	tyArZyvd40K48xTW09Kkuw1c60cvUjVYunr1/Zg8Pd3JjOcA57dgWqIvCS9TXt7VfOO4WALzCt7TH
	b+hbChIb7rgTC+t8//Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbjt-006E4p-RD; Tue, 22 Jun 2021 08:26:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbji-006E17-Po
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002ig-JA; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0005hu-1y; Tue, 22 Jun 2021 10:26:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:14 +0200
Message-Id: <20210622082617.18011-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012622_889097_78CB991B 
X-CRM114-Status: GOOD (  13.85  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/8] bthread: implement basic Linux-like completion API
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

