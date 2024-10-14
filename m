Delivery-date: Mon, 14 Oct 2024 15:30:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L97-004H0o-0I
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L96-00037u-8m
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=doyS+CfPZmvCdY/RTYROQnz05JJ1bZdYMCJ2CQY/i0A=; b=cqU3dRQyW/t9/MJ9gGtfES8USs
	dss+FntJ0f5G/EVO2gaUPEYJPtVXsvDjxx44ruR3TLCAeK32TcoHZ6JmVtmeTMJmoq+opBIRHRveg
	Vgt5Bv2XCuRAU0jFHFas2qtHPgaFFSDh7ZZWeEEzkX0Hdx2i6JB8xgonwzHoeNNaJ/CGgDMh7YPao
	JbcZjnjGAUNMj5e69Xn+vV8EsObSeWHMYSMn9ZaSZkIpATIgrHbZjn/F7e8vcPN1QEwLAKJ7nz8xf
	O95qO2c6ljbkuBadEzA8O21ua5NeM/RHLpUZC8u2WB7TPWAIMT9r8jbmsRR6yEZa8Rsri7Qu2SOV8
	nwFpXlQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8a-00000005HV4-4AAc;
	Mon, 14 Oct 2024 13:29:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb3-00000004zKI-48F8
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=doyS+CfPZmvCdY/RTYROQnz05JJ1bZdYMCJ2CQY/i0A=; b=oOkhwG9CQepHKlz5VNazabctiB
	0/E5vJgOWcfmXcqW7MsBmgjsPwfPMmL74l5JcOGrpiN6sTmVTZCtWVGRkjzwbPfHcEj4N2Ts3djOe
	p51FIiGE1o1BPQF8n+J0gYkF3sWSTX9RsOVjcZRMcp6JzEfle+Tf9BJjclHigG+vrsvmO/7zYZAN+
	cES03+IVP/BXQuTEqGs4T3QFxuoGuCN2NT/Gb88Wg3K9Ao255SIdUppIJL5w5zCLnDa49zSuicOBv
	tIItgbF3Ztzq7BFdCiq6//19DZ7dTo75Es0SPFqwM9iEjLpd5dlrN4mUPbrrQrMZiVGolmmRqacZk
	9QRI/HpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl4-0Cpx
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C4-J3; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUY-6O; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0M;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:32 +0200
Message-Id: <20241014115040.2843121-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_257746_8D279976 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/12] include: common.h: move out endianness macro sanity check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This sanity check was added into common.h, so it's part of every build.
As we intend to move out everything that's not an include out of
common.h, let's move it somewhere, where it's still included in every
build, but isn't evaluated repeatedly all the time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h | 18 ------------------
 lib/hexdump.c    | 20 ++++++++++++++++++++
 2 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/include/common.h b/include/common.h
index d8e55114ce23..bab03a0444f7 100644
--- a/include/common.h
+++ b/include/common.h
@@ -23,24 +23,6 @@
 #include <linux/printk.h>
 #include <barebox-info.h>
 
-/*
- * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
- * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
- * always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
- * be tested with #if __BYTE_ORDER == __xx_ENDIAN.
- *
- * As we tend to use a lot of Kernel code in barebox we use the kernel way of
- * determing the byte order. Make sure here that architecture code properly
- * defines it.
- */
-#include <asm/byteorder.h>
-#if defined __LITTLE_ENDIAN && defined __BIG_ENDIAN
-#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
-#endif
-#if !defined __LITTLE_ENDIAN && !defined __BIG_ENDIAN
-#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
-#endif
-
 /*
  * Function Prototypes
  */
diff --git a/lib/hexdump.c b/lib/hexdump.c
index ae078536e3f0..940c4eec64e9 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -11,6 +11,26 @@
 #include <linux/printk.h>
 #include <asm/unaligned.h>
 #include <pbl.h>
+#include <asm/byteorder.h>
+
+/*
+ * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
+ * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
+ * always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
+ * be tested with #if __BYTE_ORDER == __xx_ENDIAN.
+ *
+ * As we tend to use a lot of Kernel code in barebox we use the kernel way of
+ * determing the byte order. Make sure here that architecture code properly
+ * defines it.
+ * An additional benefit of placing this here is that this file is always built.
+ */
+#if defined __LITTLE_ENDIAN && defined __BIG_ENDIAN
+#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+#if !defined __LITTLE_ENDIAN && !defined __BIG_ENDIAN
+#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+
 
 const char hex_asc[] = "0123456789abcdef";
 EXPORT_SYMBOL(hex_asc);
-- 
2.39.5



