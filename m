Delivery-date: Sun, 03 May 2026 10:24:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8H-000Tmn-0W
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8F-0002Nj-T1
	for lore@pengutronix.de; Sun, 03 May 2026 10:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P/uyWelB356hQFFLG0O2VfUNjr5BQljt3ydSzegLj6w=; b=F/LvYsFH2iZNiXFImPlA8iVs7H
	sd2W4kVa7q5ySt6f+wi3pCbntwaR7snVMqtw38PVbuslu5hm2TBgD1Ega/Su6iQo8nb8gBGtx9vB5
	vzMjBNTNTa+/N1q7jENQQR2pTQQhcQvKtX5HiOWmEfIUWf5wfEcV8wwzZbdPP3WR3T+/6fa0vfy3f
	18SYYgYttMJPIaJSgcYG3Z1rCqecSOOSE7LKGQWGxIMSlKwifArxyNo5ojdHPCazLd15degxGpjOA
	L72p9EowfJqgEIoaHzozWdxeXCcJlwGnESLdjMB5c55FMGOqChhlt31iJ6Rv4tHRnJoFmlfjxcqJH
	t+AELDTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7K-0000000AccO-17JL;
	Sun, 03 May 2026 08:23:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7F-0000000AcbO-1rWQ
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:23:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJS7C-0002Dt-Dw; Sun, 03 May 2026 10:23:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:23:19 +0200
Message-ID: <20260503082348.2755843-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_012353_489289_68DBD8C7 
X-CRM114-Status: UNSURE (   9.93  )
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
Subject: [PATCH v2 1/2] include: ktime: move ktime_t definition globally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow use of the type without including the ktime.h header, define it
in linux/types.h. This is also where Linux defines it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 include/linux/ktime.h | 4 +---
 include/linux/types.h | 3 +++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index 2b9a91d5401c..483324a4444f 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -21,6 +21,7 @@
 #ifndef _LINUX_KTIME_H
 #define _LINUX_KTIME_H
 
+#include <linux/types.h>
 #include <linux/math.h>
 #include <linux/time.h>
 #include <clock.h>
@@ -31,9 +32,6 @@
 #define KTIME_SEC_MAX			(KTIME_MAX / NSEC_PER_SEC)
 #define KTIME_SEC_MIN			(KTIME_MIN / NSEC_PER_SEC)
 
-/* Nanosecond scalar representation for kernel time values */
-typedef s64	ktime_t;
-
 /**
  * ktime_set - Set a ktime_t variable from a seconds/nanoseconds value
  * @secs:	seconds to set
diff --git a/include/linux/types.h b/include/linux/types.h
index 93e7fe46295f..6731b5a1b246 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -120,6 +120,9 @@ typedef		__u64		u_int64_t;
 typedef		__s64		int64_t;
 #endif
 
+/* Nanosecond scalar representation for kernel time values */
+typedef s64	ktime_t;
+
 #endif /* __KERNEL_STRICT_NAMES */
 
 /*
-- 
2.47.3



