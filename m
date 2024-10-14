Delivery-date: Mon, 14 Oct 2024 15:41:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJx-004HGm-32
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:41:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJx-00052F-B9
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:41:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y8b80ynMOHWK22v3JudylDtKXuPEUBRnQdPjtcfQHiU=; b=CMGQ//8cwwqrJe59dmVMfOOeAr
	C1jBHFesztFKxj6+sT3iYiXFt4+DrJbajke29zHLqyvc0B8bC+PST6zFJvyNvupf1l82cZ+EgsH62
	RdU4PuDIi3prN+K8VlVGjl1ukw3f3oHBKLnempw/hqVqHe/D40ZKGoy9ClM2xZNGlfOwZvB61B54B
	2CHHJS3SzWom9IQwth4fa7uuUaWMWNH80kkiEwqB3G3Gp7RhnJP4u4AaUBN7IBC3AU4V/rlSlSOsz
	br6cusRCSVKQ7hIhJl+3uKjY13clfUYxqK5tCc+hUC19XvF0o/pP0k2mhhlDcqkXBP3FUbh5TLYqL
	kNeDVRDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LJT-00000005Keu-47mo;
	Mon, 14 Oct 2024 13:40:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KXC-0000000599r-3nsk
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:50:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KXB-0006Tt-IT; Mon, 14 Oct 2024 14:50:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KXB-001nI7-6F; Mon, 14 Oct 2024 14:50:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0KXB-008av3-0I;
	Mon, 14 Oct 2024 14:50:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:50:47 +0200
Message-Id: <20241014125047.2047952-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055055_368360_F4E3035F 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: SMCCC: make header usable for compile test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only thing truly ARM-specific about the secure monitor
call calling convention is the use of ARM SMC instructions.

Let's stub those out, so the rest of the driver can be compile
tested on other architectures.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/arm-smccc.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index f6942c6420d8..feaf934f1333 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -243,6 +243,7 @@ struct arm_smccc_quirk {
 	} state;
 };
 
+#ifdef CONFIG_ARM
 /**
  * __arm_smccc_smc() - make SMC calls
  * @a0-a7: arguments passed in registers 0 to 7
@@ -277,6 +278,22 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			unsigned long a5, unsigned long a6, unsigned long a7,
 			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
 
+#else
+static inline void __arm_smccc_smc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk)
+{
+}
+
+static inline void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk)
+{
+}
+#endif
+
 #define arm_smccc_smc(...) __arm_smccc_smc(__VA_ARGS__, NULL)
 
 #define arm_smccc_smc_quirk(...) __arm_smccc_smc(__VA_ARGS__)
@@ -370,6 +387,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 	: "memory"
 #define __constraints(count)	___constraints(count)
 
+#ifdef CONFIG_ARM
 /*
  * We have an output list that is not necessarily used, and GCC feels
  * entitled to optimise the whole sequence away. "volatile" is what
@@ -389,6 +407,10 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			*___res = (typeof(*___res)){r0, r1, r2, r3};	\
 	} while (0)
 
+#else
+#define __arm_smccc_1_1(...)	(void)0
+#endif
+
 /*
  * arm_smccc_1_1_smc() - make an SMCCC v1.1 compliant SMC call
  *
-- 
2.39.5



