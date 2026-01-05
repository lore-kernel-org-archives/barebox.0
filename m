Delivery-date: Mon, 05 Jan 2026 10:03:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcgUr-001Sr8-0B
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 10:03:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcgUq-0006jF-HU
	for lore@pengutronix.de; Mon, 05 Jan 2026 10:03:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Etn9j1jBALFQFd0vjw+SuuJI+g3SirV9e739SUH64oM=; b=WQPtIhUpDgd4LDOCk5pr7LMOEm
	ziM3/7xeFnvnnLKJprtej7SqX5pwDtIjWLOARHaLYLc3qm/TRiAV2QjetL298ABwJ4dPsyL8/6E5V
	KrRTVj81T5wesImZIknOTFAqsvZwUUQ+enayHDMFJfyPbfu9VBnkvt0h2A/x2lCzdfOZw+W/+qKzU
	7eKkmvSASCA3XHpTOQI/fIqnWeU/tOrab1rVZxle06XyMBVpPxvl4LCmy0eKbyKYX+S0gTjhi/wzX
	FlLxNclsIxTEGs0/etcQ8+vBqqpAVMf1TwaWNkdRFma+XgaDTLO6XxlLRxyqQ66zmY0sh8Fp62AZL
	cmboGCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgUL-0000000B22z-49Y8;
	Mon, 05 Jan 2026 09:02:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgUK-0000000B22C-172L
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 09:02:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcgUI-0006XS-Et; Mon, 05 Jan 2026 10:02:54 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 10:02:53 +0100
Message-ID: <20260105090253.3299052-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_010256_301906_46BC8D4A 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: elf: set ELF_CLASS64 for ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This doesn't yet matter, because we don't make use of these definitions
(they are meant for core files), but when we start processing the
barebox proper ELF in PBL, it will become required, so fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/include/asm/elf.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 4043e6fd5b99..0b4704a4a561 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -39,15 +39,16 @@ typedef struct user_fp elf_fpregset_t;
 /*
  * These are used to set parameters in the core dumps.
  */
-#define ELF_CLASS	ELFCLASS32
 #ifdef __ARMEB__
 #define ELF_DATA	ELFDATA2MSB
 #else
 #define ELF_DATA	ELFDATA2LSB
 #endif
 #ifdef CONFIG_CPU_64
+#define ELF_CLASS	ELFCLASS64
 #define ELF_ARCH	EM_AARCH64
 #else
+#define ELF_CLASS	ELFCLASS32
 #define ELF_ARCH	EM_ARM
 #endif
 
-- 
2.47.3



