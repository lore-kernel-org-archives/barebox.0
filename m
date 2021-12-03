Delivery-date: Fri, 03 Dec 2021 07:35:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mt2Ad-0001fz-Ow
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 07:35:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mt2Ac-0000cj-Vi
	for lore@pengutronix.de; Fri, 03 Dec 2021 07:35:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sOGWMrstDvdlQfFV2B+MLbZOGXoiSl4mvBHUcBydXjc=; b=b/WqssvlCh8nYa
	/lX+tVjflMy9YhTRZdr1Iwyglf6zqmU2UZNaPwzhMGSulP3VXnrN7LSGNnGih0hE4+zSc7+8Ybl7l
	Tt8+D0KldS6dRmU4Q33UNDqkRrkOFRm1/PEX9Ggf/M+K8WoQfEfFChmiwyTHlP8HYy8gLahLbykBF
	/xocvMzqpJHpk9FaNuxlWNUORhlMhh7FhRQGDaoFqpoEv3CSmGhjCSDMJqseQ/u66lZUCguLkDuiM
	8jB4M186bLY73KooG+HptYe9p6eyqlxRJC7nnEWy8Wn4sAHAYvZMMkR2lhXt7Zdu+8Sf1up6du09b
	+uOC/EsnGeC/GX+I465A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mt28r-00EX5G-5e; Fri, 03 Dec 2021 06:33:57 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mt28m-00EX4R-26
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 06:33:53 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 74E281BF205;
 Fri,  3 Dec 2021 06:33:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  3 Dec 2021 07:33:40 +0100
Message-Id: <20211203063340.1026512-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_223352_303328_93D14714 
X-CRM114-Status: GOOD (  10.81  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] RISC-V: interrupts: fix Zifencei emulation on rv64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Zifencei emulaton was added for bare bones 32-bit targets, but the code
is there on 64-bit too. The instruction skip at the end of the function
skips 4 bytes, the size of an instruction on both rv32 and rv64. The
instruction decoder however assumes instructions are size(long) bytes,
which is 8 > 4 on rv64. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/cpu/interrupts.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/cpu/interrupts.c b/arch/riscv/cpu/interrupts.c
index 0e8951b61968..1f2d7b885737 100644
--- a/arch/riscv/cpu/interrupts.c
+++ b/arch/riscv/cpu/interrupts.c
@@ -122,7 +122,7 @@ unsigned long handle_trap(struct pt_regs *regs)
 		goto skip;
 
 	if (regs->cause == 2) { /* illegal instruction */
-		switch(*(unsigned long *)regs->epc) {
+		switch(*(u32 *)regs->epc) {
 		case 0x0000100f: /* fence.i */
 			goto skip;
 		default:
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

