Delivery-date: Wed, 04 Mar 2026 08:54:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3W-007uQS-2K
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:54:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3X-00072l-0Z
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:54:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F3eJCpHdIWjQrKCuJVEaotTvwKkFLqqxdm+cXgVb/nU=; b=aY8Z4N/1Zdd86biqbCbJ4/e0TO
	ea/9mFUHLaG28x2zyOpwInwmTgw5/3ovsmWhfuOqZ+QqAlFMbBWU2IyAoHT7N0U0GCJLF+YQhsPsx
	guC2QW1qnmHvjZwQ9xMHrANd7n4ud+GLtaIT9TVCEHsEf4c1YUn+QN4gLowAVJ9jlvihObW7OfDED
	+LTu8LQmvo0aL5Tfq7tfXmaM2yTF+gJv9J1e8lVNSR9Dvecst/dcK5v5PYPAR17McJruaP0ceNdF7
	8Y5LujtFHWqHyfDpxr6kKe1PFY66fj7Yv6wf6T60ucjKFij1rJ5vY21h7wzf6cPZVtqaRLhrtl/7t
	HaGAI8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh3A-0000000Gftr-12b2;
	Wed, 04 Mar 2026 07:53:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh38-0000000GftN-2OGH
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=F3eJCpHdIWjQrKCuJVEaotTvwKkFLqqxdm+cXgVb/nU=; b=c57TbBlvzCfHb8+pu58iRMXiES
	jjKIjh//i2wxqdmgZ3SycMTTYSXnWN4lFfsui67D7b/VkCZl/qeNtGnbpK53sogtMrCoLV9fn2wua
	/FrwyfAQWjuGcPPE1N/N8zt24hNImeM1WOxRwdDob1EIMwWG9cArPv7RDaOWrZdPKwrojNKa58TpT
	Bqzmrg/82T+8FcAy2aexIjRIt5PGA1VzQMBPnNvC0HhkVLocNBTpn++bPTW+5L8HZxv8j41xU5aP4
	44Hk3UkWtTj+wqgrltM6o3sneW6puiNP1BP4PLJPNnNNUc3v7f4/jaPgK78I5eoyFHFq5ZFhIyWev
	1QdmHxSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh35-000000043Tz-3aL2
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:53:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0006n5-9x; Wed, 04 Mar 2026 08:53:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2n-003g4a-2Q;
	Wed, 04 Mar 2026 08:53:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0000000GMA8-068V;
	Wed, 04 Mar 2026 08:53:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 04 Mar 2026 08:53:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
In-Reply-To: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772610803; l=1960;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bsVqULRdtTUVLd92/50++iNbCRD4qSpI69kq7mkE51I=;
 b=/1ZVHOd/kghm3W2XOiGaA0otSQ627H7QEDZExUqyOsCJCexAUTPoX/BMocNKtPv26oa+loFDP
 jgHi6Pij8YiC7A1K3KfzH6bsBEMaja2AsEDSBneYlGXwFTusRGxcNw4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_075340_007268_531DA8D3 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a bss_cleared variable that is set after the first call to
setup_c(). On subsequent calls, the BSS clear is skipped to avoid
wiping already-initialized data.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/setupc_32.S | 15 +++++++++++++--
 arch/arm/cpu/setupc_64.S | 14 ++++++++++++--
 2 files changed, 25 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index c2c3f97528..4a5e2f9e96 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -7,18 +7,29 @@
 .section .text.setupc
 
 /*
- * setup_c: clear bss
+ * setup_c: clear bss if not yet done
  */
 ENTRY(setup_c)
 	mov	r4, lr
+	ldr	r0, =bss_cleared
+	ldr	r1, [r0]
+	cmp	r1, #0
+	bne	1f			/* skip if already done */
 	ldr	r0, =__bss_start
 	mov	r1, #0
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
 	bl	__memset		/* clear bss */
-	ret	r4
+	ldr	r0, =bss_cleared
+	mov	r1, #1
+	str	r1, [r0]		/* mark bss cleared */
+1:	ret	r4
 ENDPROC(setup_c)
 
+.section .data
+bss_cleared:
+	.word 	0
+
 /*
  * void relocate_to_adr(unsigned long targetadr)
  *
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index fd95187a04..caa16d3582 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -7,19 +7,29 @@
 .section .text.setupc
 
 /*
- * setup_c: clear bss
+ * setup_c: clear bss if not yet done
  */
 ENTRY(setup_c)
+	adr_l	x0, bss_cleared
+	ldr	w1, [x0]
+	cbnz	w1, 1f			/* skip if already done */
 	mov	x15, x30
 	adr_l	x0, __bss_start
 	mov	x1, #0
 	adr_l	x2, __bss_stop
 	sub	x2, x2, x0
 	bl	__memset		/* clear bss */
+	adr_l	x0, bss_cleared
+	mov	w1, #1
+	str	w1, [x0]		/* mark bss cleared */
 	mov	x30, x15
-	ret
+1:	ret
 ENDPROC(setup_c)
 
+.section .data
+bss_cleared:
+	.word 	0
+
 /*
  * void relocate_to_adr(unsigned long targetadr)
  *

-- 
2.47.3



