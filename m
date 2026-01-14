Delivery-date: Wed, 14 Jan 2026 13:35:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06S-001EWr-0D
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:35:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06Q-0005Xc-UJ
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:35:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnT0ntXMF6Se6f+PtP1xHl8y1rJ/CNF1F5sQZ76KNZ4=; b=eEn11r/8kk+ndt7wBbkZlleTBN
	GKQlk3cKQIgGwXpGEGWAG0TNVhWkhGj5CfKHYUH7sCg/k2b+Q6dDuxyApdQZJrDQ+wojLAMFqsMDU
	0pPIkbXXunCfxPmCm0kX2HCXZ414KvLV0q2pei1XUOWrEhc92pKliQEAtSDIhh5dGBeY9VOot87f3
	i13oEgICHVjfx+l4eIAnBkAfE+e60N7CIBe0fIelTorVfUeBR+OlAkEqWzFuI2r/02qdcSYpgh//T
	XBII+GT7fckshWh2GQ4NoqCeoh7O70DttyXL+NIQ9DnNrU82FuvGboMfXUeWagpEGimZViNzVmhYp
	YWrPNbWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05v-00000009C57-1uGS;
	Wed, 14 Jan 2026 12:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05m-00000009BvL-2YhD
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-00050S-7F; Wed, 14 Jan 2026 13:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-000afK-2F;
	Wed, 14 Jan 2026 13:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-16yW;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-12-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=1420;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ldOA+Vzy3s5XOAGWYJpPet4CdAkfuuSbmhTlaTlQ0lk=;
 b=cb7AZkCY6ZMLQwDQz+ii3KbNZpDVIJjLHFB9aweGbNe9udNc6hxyzdETnks3g1KhXQK7T2A9e
 4fTRF2UVcMVAVlaoFsxi/XI039Bsc0ogIdkBqPsAn5xXMN2MO6MZmRw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_043520_242230_15B1A525 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH v4 12/22] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some architectures want to link the barebox proper ELF image into the
PBL. Allow that and provide a Kconfig option to select the ELF image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile    | 4 ++++
 pbl/Kconfig | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/Makefile b/Makefile
index 2350592cdef6cb0cab0a85a481fbf17e24d6483f..25b548712c777ffb3ceeb375b109661312485bee 100644
--- a/Makefile
+++ b/Makefile
@@ -831,7 +831,11 @@ export KBUILD_BINARY ?= barebox.bin
 # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
+ifeq ($(CONFIG_PBL_IMAGE_ELF),y)
+export BAREBOX_PROPER ?= vmbarebox
+else
 export BAREBOX_PROPER ?= barebox.bin
+endif
 
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
diff --git a/pbl/Kconfig b/pbl/Kconfig
index cab9325d16e8625bcca10125b3281062abffedbc..63f29cd6135926c48b355b80fc7a123b90098c20 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -21,6 +21,15 @@ config PBL_IMAGE_NO_PIGGY
 	  want to use the piggy mechanism to load barebox proper.
 	  It's so far only intended for sandbox.
 
+config PBL_IMAGE_ELF
+	bool
+	depends on PBL_IMAGE
+	select ELF
+	help
+	  If yes, link ELF image into the PBL, otherwise a raw binary
+	  is linked into the PBL. This must match the loader code in the
+	  PBL.
+
 config PBL_MULTI_IMAGES
 	bool
 	select PBL_IMAGE

-- 
2.47.3



