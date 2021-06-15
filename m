Delivery-date: Tue, 15 Jun 2021 18:48:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCEj-0002T9-MV
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:48:25 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCEh-0004ei-8H
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:48:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpASONUNzOAYdFe4CgL67a+q4hFrLGyM4RWbVDrkB0w=; b=WGrhlETEknqbt3
	TK5/qyGbY+4kAURqtLDu0sYZlNKHzpkJLtvczEGE27+RrHhXUrlEMpZ77DQ2ZEW9JdB4qSkAjZFBC
	1a2LvcbIq+MMtPOgWNJFY7qYrSGCkY9bfnXCF7Z3jYLqTF68uhhUR5/JrJ9NzTxZdQfaluWSSWPzG
	4rksnnjPuII9aDrPsapvjapGNSpIQ8reVrKu2Gl7V9Q9rY6wvkOSL7Fqym5J4WthnxeA16rbRfXrP
	hxQMoM2A82d6yHY53/Cy73UEKVdNocI6FaCVLqJ8ykgPQsAwmmlRHsfI7NFGP+iC3eG5oYfNRa0Pn
	tT2GzPpyGBxbmaehnfRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC86-001REt-Ty; Tue, 15 Jun 2021 16:41:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s0-000WJz-Qj
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=C4Pptnsi3BFs6h0Yrz104VQ4n3tIFeHGegucZU6XHj0=; b=CsakYzyI2AUoeVrmtNox6Hl+Tt
 4/0h8LXPEvrE1VFkWPpSzCAVVFP++cie4YDKliaALnEIB4Vx9mBpbub2YSekr+Yp/KITK9EnN0Rd6
 IYxBULGj4j0Hjz14SYLvLjzxayQ1a8pLlJT6eZ9nOaJXjgHg11qhMTHtXmTmhpL6h8c4/yQ1XQIs5
 iFG3/scs+bQj11vf1gaWQtnV8cMxNvMx9X+62XT4BIo2J/1fn2snyp3cf/Jrt75Slkd3e1CVc8het
 gMnrSt+SnnjnN6YIyH4W27l9UrXe6WCy+5+8f8AHIckGokHNsNn0BWWKxyl+27+3sZt6B9DeN36YA
 dhOntfag==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zs2-Tz
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uF-5c; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001FG-Kd; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:35 +0200
Message-Id: <20210615141641.31577-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_138104_F2AC5B30 
X-CRM114-Status: GOOD (  13.81  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/11] ARM: Add relocate_to_adr_full()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

relocate_to_adr() currently relocates the PBL code to another address,
but doesn't move the piggy data (compressed barebox image). This patch
adds relocate_to_adr_full() which moves the full image including the
piggy data. This is needed for upcoming Rockchip RK3568 support. Here
we are started at address 0x0, but must move away from that address as
this is where the ATF/OP-Tee binaries are expected to be loaded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/setupc_64.S           | 13 ++++++++++---
 arch/arm/include/asm/barebox-arm.h |  1 +
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index ee9ea6cfc0..e24acbd0da 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -24,9 +24,18 @@ ENDPROC(setup_c)
  * executing at new address.
  */
 .section .text.relocate_to_adr
-ENTRY(relocate_to_adr)
 					/* x0: target address */
+#ifdef __PBL__
+ENTRY(relocate_to_adr_full)
+	ldr	x2, =__piggydata_end
+	b	1f
+#endif
+
+ENTRY(relocate_to_adr)
+	ldr	x2, =__bss_start
+	b	1f
 
+1:
 	stp	x19, x20, [sp, #-16]!
 	stp	x21, x22, [sp, #-16]!
 
@@ -45,8 +54,6 @@ ENTRY(relocate_to_adr)
 	cmp	x1, x21			/* already at correct address? */
 	beq	1f			/* yes, skip copy to new address */
 
-	ldr	x2, =__bss_start
-
 	sub	x2, x2, x0		/* x2: size */
 	mov	x0, x21			/* x0: target */
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 348a55e804..24f9bce2ef 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -53,6 +53,7 @@ void setup_c(void);
 void pbl_barebox_break(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
+void relocate_to_adr_full(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
 struct barebox_arm_boarddata {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

