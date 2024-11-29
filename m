Delivery-date: Fri, 29 Nov 2024 12:45:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQz-001q9L-0b
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 12:45:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQy-0005hQ-GZ
	for lore@pengutronix.de; Fri, 29 Nov 2024 12:45:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iv7GvmGNdOqezj3QRSomnrPHc28AzRFK8cVn21DF4hY=; b=Qnj7SO1eQIen/dbOrcL1j0Z/VB
	Rddy9ttAHDOSkvP6ypQRZRJ2x6uXPHHXbgOI9Dq1xw4kbNBLHAUnG9s6u7p0tVOr4SNRhIGZ3wEJp
	FOu6VvlxGzc+Y4xLS+1gQ28wt1ucb1MJJWE6WTui/JnMPkAS1gYRhX+ne0QifgsiEtledGuj/Igro
	DYSwhZiUUa0mYZ/KTBxce8fiWAAIizb/BOA51Qi295M239/9L+9b63Q6GedaR7QmSxmZqt7Rn05qd
	7DWE/slxGHgo4H0LW7/moXLDc+dfPb6FR6eMIF0tGyLTzY2AnEJ6dwgjQraTE9uILHwogmN2XKrgk
	9qe4cr3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQO-0000000HaEf-3WWx;
	Fri, 29 Nov 2024 11:44:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQL-0000000HaBu-0Ob4
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 11:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Iv7GvmGNdOqezj3QRSomnrPHc28AzRFK8cVn21DF4hY=; b=KBN7N4noBkVT2eEZcjCNvMGvQx
	NV/5Q4AdsJ81+YvWecfYpH2XW7XclOyXYOgla+pVqZCbCWBNSv3hgcaou+A1XAjiQexkQ9pKQYq7n
	MJT9TeqqAhFSbVW/K6noq80FAFCu0rryDbCcoNMHq8sBDOtXNNv3aEZMtGnSkrhqcjWBGuopd3uHS
	KxPGUhaR7RheUTwU9fo2ZumB/m8Ch2kuiRqhUDdKE2Eo/FsBPC7O+nh1Sf1SFyVnTeeQ5xgrz5Cp5
	X2euQxxYXaITAbrnuu6AcVIuXhPXi0YtQ03DUy268ZTPRDTbmNkqui2S/S9dwvC1cPkALkdmnEOWz
	kDajDZ3A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQI-00000001jPU-1cLX
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:44:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-0005C8-Vw; Fri, 29 Nov 2024 12:44:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ8-000mJJ-3A;
	Fri, 29 Nov 2024 12:44:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2B;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-4-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=1974;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fx/NQB3v6H9K+NPAKX7S9rFnQQGF590nrZURalXdRaw=;
 b=1VFXfjPEVHomj/SjfxyQBYcuYM67iLQiADtQpirMC7Obyyn9ysDtjl9u/r6gj2e5IkFD9D/Mb
 LQig/0lTwabBfWBR+LnXWchd5s4eGAFhwaXgab+1tOTp0ZbtPsttuup
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_114434_539293_9DA19BDD 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/20] ARM: move ARM_CPU_PART_* defines to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the ARM_CPU_PART_* defines to arch/arm/include/asm/cputype.h where
they are located in Linux as well so they become reusable by other code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c         | 11 +----------
 arch/arm/include/asm/cputype.h | 11 +++++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 7dca57248b..3137b9924f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -10,6 +10,7 @@
 #include <memory.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
+#include <asm/cputype.h>
 
 #define CPU_ARCH_UNKNOWN	0
 #define CPU_ARCH_ARMv3		1
@@ -23,16 +24,6 @@
 #define CPU_ARCH_ARMv7		9
 #define CPU_ARCH_ARMv8		10
 
-#define ARM_CPU_PART_CORTEX_A5	0xC050
-#define ARM_CPU_PART_CORTEX_A7	0xC070
-#define ARM_CPU_PART_CORTEX_A8	0xC080
-#define ARM_CPU_PART_CORTEX_A9	0xC090
-#define ARM_CPU_PART_CORTEX_A15	0xC0F0
-#define ARM_CPU_PART_CORTEX_A53	0xD030
-#define ARM_CPU_PART_CORTEX_A55	0xD050
-#define ARM_CPU_PART_CORTEX_A57	0xD070
-#define ARM_CPU_PART_CORTEX_A72	0xD080
-
 static void decode_cache(unsigned long size)
 {
 	int linelen = 1 << ((size & 0x3) + 3);
diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index c3fc057650..38012fb1ec 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -117,4 +117,15 @@ static inline int cpu_is_xsc3(void)
 #define	cpu_is_xscale()	1
 #endif
 
+#define ARM_CPU_PART_CORTEX_A5  0xC050
+#define ARM_CPU_PART_CORTEX_A7  0xC070
+#define ARM_CPU_PART_CORTEX_A8  0xC080
+#define ARM_CPU_PART_CORTEX_A9  0xC090
+#define ARM_CPU_PART_CORTEX_A15 0xC0F0
+#define ARM_CPU_PART_CORTEX_A53 0xD030
+#define ARM_CPU_PART_CORTEX_A55 0xD050
+#define ARM_CPU_PART_CORTEX_A57 0xD070
+#define ARM_CPU_PART_CORTEX_A72 0xD080
+#define ARM_CPU_PART_CORTEX_R5  0xc150
+
 #endif

-- 
2.39.5



