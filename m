Delivery-date: Thu, 11 May 2023 01:39:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOu-00DJIg-AX
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOs-0000xv-EY
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kAgTMgRDkPs8JIRhQWu5s5kHFR7FDPLkBcjvpBjILNo=; b=b78OAdgR4Sx6xIwkSrdqi5msIa
	LMr04sCODOKEUbQAnuU0eUpSHk3UId/WD0xbskBwVgvC4iObUBFEgbLmssjP55FXt97NKzl89QBAC
	6Z+7RmGIeE/B9whnCwp9oixF2HzarAKxvKUIQW/qFS/Msm5wWTUUXTzJTbO3c0lK9gHJ/p/d2Xsnj
	i0MkFhFYDXXG44Tc/ebvicuMTfYgkU/0J2kXGgvqk/UE8/72CdLnF9RYuRbeHxUfcrsWxYPBFUULD
	zZA9puWa6sUiUpBj6KmJG3ggxlsDWSU5RTwJBQqGMDvu31LccjDMF/Pfu/2f8/5BOY8oX9eH4hTaR
	4rcCpkIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNU-007Ftj-0n;
	Wed, 10 May 2023 23:37:48 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNP-007Fq5-1c
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:45 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2BEC31C0007;
	Wed, 10 May 2023 23:37:36 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:03 +0200
Message-Id: <20230510233711.37345-4-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510233711.37345-1-jmaselbas@zdiv.net>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163743_691616_F19CBC1D 
X-CRM114-Status: UNSURE (   9.42  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 03/11] ARM: dls: Add ENTRY_HEADER macro to add .text section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On sunxi platforms the boot rom (BROM) looks for a specific header which
will also be loaded in memory, causing pbl, or barebox, image not loaded
at the expected BASE addresse. This also cause an issue with relocatable
pbl: instruction used for relocation expect the image to be aligned on a
4K page boundary.

The proposed solution here is to allow to specify custom sections to put
in the very begging of the .text section.
---
 arch/arm/lib/pbl.lds.S            | 1 +
 include/asm-generic/barebox.lds.h | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 114ec7bc81..6fc97c6c34 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -27,6 +27,7 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
+		ENTRY_HEADER
 		*(.text_head_prologue*)
 		*(.text_head_entry*)
 		__bare_init_start = .;
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index d3736ebaed..9915ead8a7 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -12,6 +12,10 @@
 #define PRE_IMAGE
 #endif
 
+#ifndef ENTRY_HEADER
+#define ENTRY_HEADER
+#endif
+
 #define BAREBOX_INITCALLS			\
 	STRUCT_ALIGN();				\
 	__barebox_initcalls_start = .;		\
-- 
2.40.0



