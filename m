Delivery-date: Wed, 26 Mar 2025 18:26:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWK-004Wsw-1D
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 18:26:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWJ-0007pY-NB
	for lore@pengutronix.de; Wed, 26 Mar 2025 18:26:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TDcdeufNjJ2Z8Z2OShZt2l+2+lpYVHVMBfQhDNdyKzI=; b=Xes2oDmWah761jk6Boda4RUoyW
	sOafR35tKpqP5yYel5gpljmQ9niSDDwhYX/T1tjvQejc4PFXG+sy01ytQVTP+YLPHrQu6P5bMu/QJ
	ljywGhZ95zvvQDmCK1LyVsvWZ9zMychFP8YGz5cyRFWz7KdYy3k952Irh+LFHnCI7XvZ5B6i+f4RO
	J8qLxx3HITf0KUebyIPdTSshVkcQQzbc8uLWfCVros6UP2qmimuk+FzIVLL4wc9Xysm3SIk5Dkydl
	3dChZIgfx3DNwC+C8pdXcnto2CntexCY4ZBn5HPOaqY3nDEcvT9iIk9O4Z+ZtjjtpsqsC0PgvLPrn
	WUesRINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txUVf-00000009ATr-0ttp;
	Wed, 26 Mar 2025 17:25:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txU6u-0000000963N-41s6
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 17:00:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-0003Tf-KV; Wed, 26 Mar 2025 18:00:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-001mmN-1Q;
	Wed, 26 Mar 2025 18:00:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-002oSB-19;
	Wed, 26 Mar 2025 18:00:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 18:00:09 +0100
Message-Id: <20250326170010.670379-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326170010.670379-1-a.fatoum@pengutronix.de>
References: <20250326170010.670379-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_100013_006376_68171248 
X-CRM114-Status: GOOD (  10.02  )
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
Subject: [PATCH 2/3] common: elf: drop unused arch notes stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These definitions are used nowhere, so drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/powerpc/include/asm/elf.h | 7 -------
 include/elf.h                  | 8 --------
 2 files changed, 15 deletions(-)

diff --git a/arch/powerpc/include/asm/elf.h b/arch/powerpc/include/asm/elf.h
index bb8762b385b8..2c938adacce5 100644
--- a/arch/powerpc/include/asm/elf.h
+++ b/arch/powerpc/include/asm/elf.h
@@ -400,13 +400,6 @@ do {									\
 /* Notes used in ET_CORE. Note name is "SPU/<fd>/<filename>". */
 #define NT_SPU		1
 
-extern int arch_notes_size(void);
-extern void arch_write_notes(struct file *file);
-
-#define ELF_CORE_EXTRA_NOTES_SIZE arch_notes_size()
-#define ELF_CORE_WRITE_EXTRA_NOTES arch_write_notes(file)
-
-#define ARCH_HAVE_EXTRA_ELF_NOTES
 #endif /* CONFIG_PPC_CELL */
 
 #endif /* _ASM_POWERPC_ELF_H */
diff --git a/include/elf.h b/include/elf.h
index 8805eb4a2fc9..994db642b078 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -391,14 +391,6 @@ extern Elf64_Dyn _DYNAMIC [];
 
 #endif
 
-#ifndef ARCH_HAVE_EXTRA_ELF_NOTES
-static inline int arch_notes_size(void) { return 0; }
-static inline void arch_write_notes(struct file *file) { }
-
-#define ELF_CORE_EXTRA_NOTES_SIZE arch_notes_size()
-#define ELF_CORE_WRITE_EXTRA_NOTES arch_write_notes(file)
-#endif /* ARCH_HAVE_EXTRA_ELF_NOTES */
-
 struct elf_image {
 	struct list_head list;
 	u8 class;
-- 
2.39.5



