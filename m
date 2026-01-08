Delivery-date: Thu, 08 Jan 2026 17:02:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT5-002fdV-2m
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT5-00016T-8l
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ImX8kzQ/4i5GLBMj8yybexbsYQvausqwyZ1ceut9aAo=; b=nDK4uzZlWhyBYxUFrnrsMOD2bE
	rs8sPhxGoQaswwEDOdortHn/KXV1Of9/d3xQ/drgJKf25nnA+TiCntv1aIyfFDQvtQntsKcAkcDOb
	U5QLjCvrp/aPsqLGLVH2V95oafAlyz+wciPHJaAuZApKc6GpYFd7KMJcEpd/Sste8qa7P/Yt+qx9Z
	4zspYwslMfmQFGc2bOw1WNqSbsxugN6ufUhYxf4wGqCFgZdWiacIvKzKAvoS8ODSZ4K44VioOmNER
	y/OIWMNErb7VPhVD8rykkltdzjgmGTZNmOPgNoZc6uIcAExgsTJxVjSLkeSvr7/H7+PVU8LMrYxkB
	ybR2EXrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSK-000000001yz-3nqh;
	Thu, 08 Jan 2026 16:01:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS8-000000001tY-1QVS
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ImX8kzQ/4i5GLBMj8yybexbsYQvausqwyZ1ceut9aAo=; b=KMW27BJqloW8bCxtTG1USa5B+Y
	dwVhpcOAs3xVfO8LPYGtt3SXhIIQK1pdnQqXvLFWsfaCrNkXBZcxhE4kgSfOP2yEh/e13eqLoyRkx
	K96+9Ke04gHsrlJasokhqkip5nf1FLjbo3eMFxgNydnZlQXuIVBZx8JgdQ9fYZQmMrskPTCOwusUo
	Sp6z1lOgPyHBsEBcUqQyJ5g6BWXDijM/8VcF7jQ7fFst9IaX/XuPdDbmrs+xukthXbYaMVtv1EFdd
	16ZC5cOJFKquRM9d13txkeyWRaHUtWBhboZsbMzjvlANfpQ6U4a30AC4YHCL3MQLz4xT1Ip7KS4G1
	3ZqObfrQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaUL-2jzw
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000Se-BW; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXR-0W;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1U88;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-10-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=1542;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HTcgd1FqGx+EvzKjR/gYZyXy1J4RABnb6MJnb4nldkc=;
 b=08BwiA7GDYyk58emSDikRm5NbGTvz5Zs6SHKBi5OIk7yE6l1k5/7n8oXP0vqRrarWifrS8b1H
 zx8/c0pS5FJD2ihUNFFIS91OqSV63cW9sjKrZ7Mnuot91BAT3XCSqN1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_839133_232D3D7C 
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
Subject: [PATCH v3 10/23] Makefile: add vmbarebox build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a build target to create vmbarebox, which provides an ELF format
version of barebox that will be used later to link into the PBL

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 3b31cecc22c431a063b8d2d3c387da487b698e74..9d8fe242411422163cb800c0b2dd1eb9f0709f47 100644
--- a/Makefile
+++ b/Makefile
@@ -1096,6 +1096,15 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
+OBJCOPYFLAGS_vmbarebox = $(call objcopy-option,--strip-section-headers,--strip-all)  \
+			 --remove-section=.comment \
+			 --remove-section=.note* \
+			 --remove-section=.note.gnu.build-id \
+			 --remove-section=.gnu.hash
+
+vmbarebox: barebox FORCE
+	$(call if_changed,objcopy)
+
 quiet_cmd_barebox_proper__ = CC      $@
       cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
 
@@ -1378,7 +1387,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* compile_commands.json \
 		.tmp_barebox.o barebox.o barebox-flash-image \
-		barebox.srec barebox.efi
+		barebox.srec barebox.efi vmbarebox
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 		scripts/bareboxcrc32-target scripts/bareboximd-target \

-- 
2.47.3



