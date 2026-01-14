Delivery-date: Wed, 14 Jan 2026 13:36:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06V-001EZD-27
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06U-0005ah-9x
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8UBlSoETCFGIX8lKbnyR3FMY9uHy8xSCX1Rdtffl8Vo=; b=Ivdw6dzMSp8pBEJh+SRNPlJ3F+
	NL9tL7sGtRsQCpy3VCFBQcAtStgjhViH1pTM8XYCO60Gzc0fTC9TkPRwoLXBjVzYSBR+Q5Cc+Tsfr
	+kGQhifRJZ87domvD4A/5X+nRsPOSvXmBqoHgsUag12G+0Jx0J1YjeX1RDYU6oB9aU57LWN8EMSx1
	hPaaO7jUAP86Gt4SdYNjmP9b/7bBGHvScWwR1sf38M6ONK3NMN+GVLCJkDmz1GybbFoq7y9UAt0To
	8NJnf84ydd0M/GyoxgrCFPQtft4Wr9ChSmsvF+VAxMP6HMguR/61PW6TYpcTWG7sf3vzLNdBO78/C
	9WCdX+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05v-00000009C4P-0Mfw;
	Wed, 14 Jan 2026 12:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05n-00000009Bvl-1Fe9
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-00052E-Oq; Wed, 14 Jan 2026 13:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05m-000afh-0j;
	Wed, 14 Jan 2026 13:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-16XQ;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-11-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=1549;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Mo0O2vSMOJ28rgSNEFYjsEYiVVXB6eyyXtWBkBjq3+c=;
 b=6eunTiANXAIGfbKwYfPAy3at+lQ19l+ut7xwPqSDBBNmET3KsBlJz6V4+6OtkQym2jfoK64EH
 BQo12R38Mj7CzNg2GorzX+VoMg3xG8pyQtYlsyjThVFCte8smAGu/Bc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_043520_225726_F3E0FB28 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v4 11/22] Makefile: add vmbarebox build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a build target to create vmbarebox, which provides an ELF format
version of barebox that will be used later to link into the PBL

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 3b31cecc22c431a063b8d2d3c387da487b698e74..2350592cdef6cb0cab0a85a481fbf17e24d6483f 100644
--- a/Makefile
+++ b/Makefile
@@ -1096,6 +1096,14 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
+OBJCOPYFLAGS_vmbarebox = $(call objcopy-option,--strip-section-headers,--strip-all)  \
+			 --remove-section=.comment \
+			 --remove-section=.note* \
+			 --remove-section=.gnu.hash
+
+vmbarebox: barebox FORCE
+	$(call if_changed,objcopy)
+
 quiet_cmd_barebox_proper__ = CC      $@
       cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
 
@@ -1378,7 +1386,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* compile_commands.json \
 		.tmp_barebox.o barebox.o barebox-flash-image \
-		barebox.srec barebox.efi
+		barebox.srec barebox.efi vmbarebox
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 		scripts/bareboxcrc32-target scripts/bareboximd-target \

-- 
2.47.3



