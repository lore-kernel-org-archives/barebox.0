Delivery-date: Fri, 20 Oct 2023 09:24:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjrt-00FGhA-Md
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:24:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjrs-0007rK-I4
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:24:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rs/X60X0GKPR9yGgBN2mnAhhvRHeolSILkGgToCbEls=; b=0r/WVQhDv9nKJIGPcIW+n7IVqq
	JDj95BAEdTuCEue6m4fgrkG69ueiHmHnz8OvdQ3miIAyDsNX3oJKY3xv1mxlGqrTH+uGQDsKPbm7I
	saVPElsG4UQ+2Gq4TM7Zav9xZEdosQ7pT6zU9iIYtVQu1dOMAC4lSyj03eD7evBgBZXPUPa9VaXTt
	qv/0AZN2a4D3HulR9g+OQy8ZFsbH4p6ErFihlwNw5mYgmChwzH2BkzyeCU0GPZrieup+B1D/J2CCG
	f1wSlmyJBruRJbp7z/+w+omarQVq0hEpjUt6jD5GotmZgZ++gM8t7DrzrKZhZcF+5gUk/Xc6Y4kOf
	ax8gsevw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjqt-001Qnd-0r;
	Fri, 20 Oct 2023 07:23:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjqq-001QmX-2g
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:23:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-0007bz-LY; Fri, 20 Oct 2023 09:23:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-002yMk-80; Fri, 20 Oct 2023 09:23:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-00BsRE-0f;
	Fri, 20 Oct 2023 09:23:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:23:15 +0200
Message-Id: <20231020072316.2830850-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020072316.2830850-1-a.fatoum@pengutronix.de>
References: <20231020072316.2830850-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_002320_868868_BFB32F59 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] include: import Linux string_is_terminated helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some binary formats read by barebox feature null-terminated string.
Import the kernel's string_is_terminated() helper to verify such
strings before passing them to string API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string_helpers.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 include/linux/string_helpers.h

diff --git a/include/linux/string_helpers.h b/include/linux/string_helpers.h
new file mode 100644
index 000000000000..5a8a469be7c0
--- /dev/null
+++ b/include/linux/string_helpers.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_STRING_HELPERS_H_
+#define _LINUX_STRING_HELPERS_H_
+
+#include <linux/string.h>
+#include <linux/types.h>
+
+static inline bool string_is_terminated(const char *s, int len)
+{
+	return memchr(s, '\0', len) ? true : false;
+}
+
+#endif
-- 
2.39.2



