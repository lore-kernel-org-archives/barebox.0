Delivery-date: Thu, 09 Jun 2022 08:02:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBFo-008S8e-3k
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:02:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBFl-0001pu-Bs
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:02:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSHtXfO0JAC9QGEzXmb+OTIgpBsu+oNxzlAxHiAoWAo=; b=PYZAl5no90F68y
	W0EdYJZRWce8/XvXeKj5/VEj1nZDqEvE12zl+T38/UhwcgxFKIigXo59e6BaY5iFCUQW8RObD3cAm
	wXEC0foRpL/hVfEJZeAiMgT5IOFIWASqlgqOncd+FcLBwNj9Vlf6i3y3DRiKAxEK426JPToV3+6L0
	5DPTdXBitsrVHZ8lIuZy+4085joIXXrPBjApmJLlOZo6hqshCk1rtw1Wq6tKmCimGjITaEIYEJfKe
	yXvXmRwblugtnWqkoMwF6IojhqSAuDxkZCI4QrSKsjnBgCEnWfy51k3U7KFRJXIfjp6ajk23eo11a
	Vvm77Dd+8VkHVBYbXRJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBE6-00Gvw6-Jp; Thu, 09 Jun 2022 06:01:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCb-00Gv0j-3t
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-0008IV-Rd; Thu, 09 Jun 2022 07:59:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-007K9w-Es; Thu, 09 Jun 2022 07:59:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZT-8s; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:02 +0200
Message-Id: <20220609055922.667016-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225929_173387_A65B707C 
X-CRM114-Status: GOOD (  10.90  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 01/21] ARM64: asm: implement read_cpuid_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We'll need to use this function in code that will be compiled for both
32-bit and 64-bit ARM, so add the 64-bit implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/cputype.h | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index 7dc027c1741b..c3fc05765060 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -6,6 +6,23 @@
 #include <linux/stringify.h>
 #include <linux/kernel.h>
 
+#ifdef CONFIG_CPU_64v8
+
+#define CPUID_ID	midr_el1
+#define CPUID_CACHETYPE	ctr_el0
+#define CPUID_MPIDR	mpidr_el1
+
+#define read_cpuid(reg)							\
+	({								\
+		unsigned int __val;					\
+		asm("mrs	%0, " __stringify(reg)			\
+		    : "=r" (__val)					\
+		    :							\
+		    : "cc");						\
+		__val;							\
+	})
+#else
+
 #define CPUID_ID	0
 #define CPUID_CACHETYPE	1
 #define CPUID_TCM	2
@@ -27,8 +44,6 @@
 #define CPUID_EXT_ISAR4	"c2, 4"
 #define CPUID_EXT_ISAR5	"c2, 5"
 
-extern unsigned int processor_id;
-
 #define read_cpuid(reg)							\
 	({								\
 		unsigned int __val;					\
@@ -47,6 +62,9 @@ extern unsigned int processor_id;
 		    : "cc");						\
 		__val;							\
 	})
+#endif
+
+extern unsigned int processor_id;
 
 /*
  * The CPU ID never changes at run time, so we might as well tell the
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

