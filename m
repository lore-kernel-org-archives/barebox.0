Delivery-date: Sat, 11 Dec 2021 09:43:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvxyG-0030qX-EQ
	for lore@lore.pengutronix.de; Sat, 11 Dec 2021 09:43:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvxyF-0002D4-3m
	for lore@pengutronix.de; Sat, 11 Dec 2021 09:43:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rdWXNobbPnxHD241agevPkXODAfZ9cX/JFE42H4x7+k=; b=lPr0H3gueb67DJ
	KFnw5O1HljdJC3zu0O8PdqRYaJKu8NuQyrLwGLM+ZmiYrNfshXqbaQJVmJKQ1152dvAtrBa8kimB+
	/2xyTFVP3+Lmzgnq2gyGSoqWfgsQPTEhxuSr6D6Vi8zFBe/GFIrd/UCdGhOSwTs6HUEj8q1a0Z2RN
	xUCi0KB7QzkwFrWChBe8Fs752CTdWTI6zAtvoYGkqnBhCRAb4FRpLCJph0dLdz3TJbr6G8oziETmK
	kFJDcmaFg7IcPpWe1+1sHfChqguNU1z+VlYZkxccx40mU3jmmpo6ifoAXN7q9sB+RkG5VecvEhld3
	GO9yZIj/vCq79qQpyNzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvxvv-004kfm-Cp; Sat, 11 Dec 2021 08:40:43 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvxvr-004kf2-0s
 for barebox@lists.infradead.org; Sat, 11 Dec 2021 08:40:40 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0FE8A60007;
 Sat, 11 Dec 2021 08:40:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 11 Dec 2021 09:40:26 +0100
Message-Id: <20211211084026.443756-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_004039_243771_5C0DA25A 
X-CRM114-Status: UNSURE (   6.72  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] include: linux/printk.h: include <stdarg.h> to make
 header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The point of <linux/printk.h> is to have a minimal self-contained header
for use where ever printing is required. va_list was used, but not
defined, remedy this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/printk.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 212041927251..39523b0572a0 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -4,6 +4,7 @@
 
 #include <linux/list.h>
 #include <printk.h>
+#include <stdarg.h>
 
 #define MSG_EMERG      0    /* system is unusable */
 #define MSG_ALERT      1    /* action must be taken immediately */
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

