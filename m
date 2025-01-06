Delivery-date: Mon, 06 Jan 2025 15:52:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSc-00HWtb-1R
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSc-0002Pn-3n
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uOikD3qz0uUiNSCxkXLn8J5VO43bNR0R+EbNmQzwabk=; b=Kfl4DbWbXYB6sFXItcGm3ocYVY
	aMmcXC7ldmb0SEjvkoUh4XkpDYH2uRHb1xfYtok/B8/Mf0IqsrwlUd0f3cvxpNlJneBJOK0aN3W7b
	pLXAsFbA48Wm7NIrdOvG8hz36EDSJtqdUQSFc9ZcfGu2QljE/6xcoywMQEhghSpNWAbpFr9OdAkyE
	F1NGKDMVhVE0F7CAHT7SmuyUsJ/dtMRHJo215cKip2M+jGiasq+WdoneR03c4xxvEJ03nBDatjPXH
	mMP5wRrkVgOWNwmiMwKVdif1qFcq5a1ynG9tvrUWoc7jN/TEl+3h+HiryiC8gbSV1GgAFVtA/Eh5I
	3WLG9QqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoSS-00000001egU-3kOc;
	Mon, 06 Jan 2025 14:51:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRm-00000001S6s-20bN
	for barebox@bombadil.infradead.org;
	Mon, 06 Jan 2025 13:47:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uOikD3qz0uUiNSCxkXLn8J5VO43bNR0R+EbNmQzwabk=; b=fmYTSL/RRfaD+Qf4iNpbfPI1Y1
	Bt8LPxUAIhYJvQ8WZB5F+08/qwtC3WF1a4ZtrMmvnwSWVRvCZP+wX46hpGNma6030MGzKtIHOTc0r
	D6EjvLFtB2Up6Ns5RdIeB5FDeLXdNjw/7sOP50OvvwIEZr4PdDzV2rSqvl616k2GiMS3UOHTZYdtw
	HljermZcYAq4xVZot8aNIuumFlQabHQMnQ5+WNqGLkSwD3RFOmJnBbhsRM93T3UYxJWFKgQd264HU
	g5ep7j8X0BDyvjq0Fq/Pac5wuNYwIoeGo7x+gyZC9sflWfcdyb1yCixigpKCnAPELLUSRYJz3wh6Q
	MU066ZfQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRh-00000008vvV-33tt
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:47:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRe-0005lC-06; Mon, 06 Jan 2025 14:47:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRc-007B3m-2o;
	Mon, 06 Jan 2025 14:47:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1l;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-5-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=1278;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I6AffcjyjYkKWZa3YxC9m6UC+aI8am6CNeW0ALNPMjk=;
 b=aFD2LIwpQUcTOqEBU7WGA8MNGZwm37Mu/ADawjFqU/aeFsNLefn+f1UYpM/RiEo1RPFhIe/Gj
 w8UNmMKOg0PCpG7uY8PU9Lpq3jBeTdtEvB0je5r+rjuJAP+pJ5kZT7i
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_134706_936189_2FF282D6 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/22] nommu_v7_vectors_init: disable for r5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some ARMv7 cores like the Cortex-R5 do not have a VBAR register for
setting up the vector table. This patch disables the vector table
setup specifically for the Cortex-R5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/no-mmu.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index be3cfaf12b..c4ef5d1f9d 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -19,9 +19,26 @@
 #include <asm/system_info.h>
 #include <debug_ll.h>
 #include <asm/sections.h>
+#include <asm/cputype.h>
 
 #define __exceptions_size (__exceptions_stop - __exceptions_start)
 
+static bool has_vbar(void)
+{
+	u32 mainid;
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
+		: "=r" (mainid)
+		:
+		: "memory");
+
+	if ((mainid & 0xfff0) == ARM_CPU_PART_CORTEX_R5)
+		return false;
+
+	return true;
+}
+
 static int nommu_v7_vectors_init(void)
 {
 	void *vectors;
@@ -30,6 +47,9 @@ static int nommu_v7_vectors_init(void)
 	if (cpu_architecture() < CPU_ARCH_ARMv7)
 		return 0;
 
+	if (!has_vbar())
+		return 0;
+
 	/*
 	 * High vectors cannot be re-mapped, so we have to use normal
 	 * vectors

-- 
2.39.5



