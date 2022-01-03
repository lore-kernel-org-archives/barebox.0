Delivery-date: Mon, 03 Jan 2022 13:00:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0f-009noK-5a
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:00:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0d-0004E0-E5
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:00:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22eG/Zk8pJ2uG1rz2TkSk1qNAhAkorztIbURcB/bris=; b=Yru4uHBSH5+g3e
	YfYOXWq+VohSioRJyr7s5EzIsauNe3yyVN8pQ7nn4oHgSiIB8vqhd8xdDdTOemMgU5bCQC1U+DzlB
	KXU5pCREGhXLfZtqrZFGHVDNLMvurV/7a2Lehd8t0VK9/YSPcCW1DsOKhcgAne2im6WVIUYB9CAL7
	04DfUgoGUUef+jZh4buUpTOOWrqrpKujGDLt/1hlVswEKzshnwsdCDhC+WuqVea5acjCLwfDA2Z5P
	iONhHR8vZ3b4tqccxLUHMTUDrlmYl117GqzmtN1slkpx0RNNBxE99rOg2PF3pKC99ZzOm/r2V5pfC
	F6gLU/g0ZFrRfIFj4qVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4LzR-008vzs-D5; Mon, 03 Jan 2022 11:59:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lyu-008vjj-0M
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:58:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lys-0003bo-Nz; Mon, 03 Jan 2022 12:58:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lyr-007EoN-UB; Mon, 03 Jan 2022 12:58:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:58:24 +0100
Message-Id: <20220103115824.1725086-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115824.1725086-1-a.fatoum@pengutronix.de>
References: <20220103115824.1725086-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035828_082926_213EEEBC 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] x86: remove reference to empty file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This might have been needed in the past when there was legacy boot
machine support. Now there isn't, so we can just delete it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/mach-efi/include/mach/barebox.lds.h | 1 -
 include/asm-generic/barebox.lds.h            | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)
 delete mode 100644 arch/x86/mach-efi/include/mach/barebox.lds.h

diff --git a/arch/x86/mach-efi/include/mach/barebox.lds.h b/arch/x86/mach-efi/include/mach/barebox.lds.h
deleted file mode 100644
index 40a8c178f10d..000000000000
--- a/arch/x86/mach-efi/include/mach/barebox.lds.h
+++ /dev/null
@@ -1 +0,0 @@
-/* empty */
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c5f9d975472a..a03655d41cc4 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -6,8 +6,7 @@
 #define STRUCT_ALIGNMENT 32
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
-#if defined CONFIG_X86 || \
-	defined CONFIG_ARCH_EP93XX
+#if defined CONFIG_ARCH_EP93XX
 #include <mach/barebox.lds.h>
 #endif
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

