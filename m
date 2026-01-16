Delivery-date: Fri, 16 Jan 2026 09:12:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgeww-001tRT-0k
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:12:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewu-00046q-VS
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:12:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=loYLl9qfUCks1Vu9qkqpZGIFue6pvEagWNlW+x6J+R4=; b=IoOk4V/pq0fSSjukviQdjKCdMx
	civWgakvjSyzSHhuShLN8PhBWVbBJgEe+nTmNptYYd6mIGwlJzDdYvOuatd91tMKaHQvv1n7ynb4e
	M7iNWGUsa/IJEQK2ztA171/NMa1I4S7Hd9AR/DTE5XfPsL1/cvcglnWOvoC/L7CGLb5cZWAfNEVjK
	htFAX1sAeKd84OU1B0dm4ZURv8Oh8MHv8teukEfBbZKZ/HvcNbX02RbtSGLJUyEsJY2XGgV0mB4X0
	sNaavrMu41NGTyKUVwFR/Zsm3aAXku/FdG6WrT1l0vC9SoKStGq3NopytG2FEFS3BXN3jnSdOxFyR
	28HolLVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewM-0000000DjOj-0VwM;
	Fri, 16 Jan 2026 08:12:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewJ-0000000DjNj-3Lf1
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jK-Uq; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5D-0P;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1XVK;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-1-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=1052;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JV/f+5vTrL4DIVKQzvTVV+6szgSeQXtSxtaZXoC6cf0=;
 b=1WaomHI5X2aPSJ3nmsRYUDKFVOB8raLwwAFWRBEdIF4dztkpQqRvBer90XPfz5MsIeixXW4fn
 rvyg7spKqYcDL3j+/+TcVMuc+cUZMxfj1ZOfNluOvrg33f0ST7cZGni
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001215_838533_6178F6BF 
X-CRM114-Status: UNSURE (   8.84  )
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
Subject: [PATCH v5 01/22] Makefile.compiler: add objcopy-option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Similar to other *-option macros this one is for testing if objcopy
flags are supported.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.compiler | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
index 1d34239b3b..f2fdddd07b 100644
--- a/scripts/Makefile.compiler
+++ b/scripts/Makefile.compiler
@@ -69,6 +69,11 @@ cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
 ld-option = $(call try-run,\
 	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
 
+# objcopy-option
+# Usage: KBUILD_LDFLAGS += $(call objcopy-option,--strip-section-headers,--strip-all)
+objcopy-option = $(call try-run,\
+        $(CC) -x c /dev/null -c -o "$$TMPO"; $(OBJCOPY) $(1) "$$TMPO" "$$TMP",$(1),$(2))
+
 # Prefix -I with $(srctree) if it is not an absolute path.
 # skip if -I has no parameter
 addtree = $(if $(patsubst -I%,%,$(1)), \

-- 
2.47.3



