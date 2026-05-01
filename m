Delivery-date: Fri, 01 May 2026 08:54:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhlU-000mh7-0t
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 08:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhlT-0003cl-NT
	for lore@pengutronix.de; Fri, 01 May 2026 08:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yijzR8Gxb3MPKJVBAU+/5RU04ljyWsr7PQ7AjAqaTTY=; b=vgCX6K+KsGPu82vGdVqqfr9tm7
	rEbpjH8EnldOrIV94J/3u5/HXBHiG1p3ZTa03wFwfStw/ljDVbTOjvd+rbZoL+kCPCbchR2bGU6aH
	/drviSHa4qMq2LeSvjdpjQvJdh6T8ZyrwmQzcWiWBlh7nm3pdFlblNsQYQEltGgUhCi/KVHVffJRd
	jmkpIQbEuKAgCEtD+sgHzJLA2F+hJSftQrVSuPx/+Xm5t0KkC8lTwze90Y0OlcbS/IetcMSWPy7j2
	L5TGjPdqL1g/H5zWJpHF4YfdMzDMBKnAbhXQ+iCZMhUfG4JRasxACFzGUfFFP69hTEmdssLVhidxO
	xxWZJ3FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhkf-00000006RAz-3eT7;
	Fri, 01 May 2026 06:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhkc-00000006R9o-40X7
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 06:53:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhkY-000377-W7; Fri, 01 May 2026 08:53:23 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:17 +0200
Message-ID: <20260501065321.950215-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_235326_996860_E82F5A71 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: ktime: move ktime_t definition globally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow use of the type without including the ktime.h header, define it
in linux/types.h. This is also where Linux defines it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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



