Delivery-date: Mon, 12 Jan 2026 09:57:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDk2-000Sq6-1J
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDk1-0002WE-Ej
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MAprc7wZkvOp7quvqrgqPeOXtfdv7EI0qtmxlsSIU8U=; b=0UBH234QKHndNU52VUvBL6RkfL
	5CgxcFNPdL6FuBHbgXVhyQ24vBX1Bh0qbUOtOOJ94T9b5nLy5tJ2QxAeHBlCPvazksqP6MyNoBuHi
	VgPKWA9WpGZuFwTeq5ygnT5yFL/3KzxPUJj1tQvxZZvusb9KaigW0rC2TKyn+KzHIsQ0UJQjZT1qH
	5dKi48Il2X0WJr/cG1UBsLAOtJ5+Q2cLMvvBL69sG68erHV2EfIg6cUypxx3FwdotiCySuDb60bs2
	lLDtvcWtTA9odWWw7K2Ss2yuIXAidBHm/6NjbA5lXUQcTm5SF27VMR18HMYGvZr4wjIZ6E+pl8JOB
	faqXgwMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDje-000000052Ug-22Xq;
	Mon, 12 Jan 2026 08:57:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDjc-000000052Ta-2896
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:57:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDja-0002PO-VB; Mon, 12 Jan 2026 09:57:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:56:40 +0100
Message-ID: <20260112085709.2953004-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112085709.2953004-1-a.fatoum@barebox.org>
References: <20260112085709.2953004-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005712_543867_FA9F7326 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: cpu: setupc: implement 32-bit relocate_to_adr_full
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To move barebox out of QEMU's NOR flash and into RAM, implement
relocate_to_adr_full(), like we already do for ARM64.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
The series adding support for ARM Qemu Virt -bios will make use of this,
but this is already useful for other boards, so sending it out now.
---
 arch/arm/cpu/setupc_32.S | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index d3449d9646b9..0134637f6296 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -43,12 +43,21 @@ ENDPROC(setup_c)
  * executing at new address.
  */
 .section .text.relocate_to_adr
+#ifdef __PBL__
+ENTRY(relocate_to_adr_full)
+	ldr	r2, =__image_end
+	b	1f
+#endif
+
 ENTRY(relocate_to_adr)
-					/* r0: target address */
+	ldr	r2, =__bss_start
+	b	1f
+
+1:
 	push	{r3, r4, r5, r6, r7, r8}
 	mov	r7, lr
 
-	mov	r6, r0
+	mov	r6, r0			/* r0: target address */
 
 	bl	get_runtime_offset
 
@@ -61,8 +70,6 @@ ENTRY(relocate_to_adr)
 	cmp	r1, r6			/* already at correct address? */
 	beq	1f			/* yes, skip copy to new address */
 
-	ldr	r2, =__bss_start
-
 	sub	r2, r2, r8		/* r2: size */
 	mov	r0, r6			/* r0: target */
 
-- 
2.47.3



