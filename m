Delivery-date: Sun, 12 Jan 2025 09:35:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRP-0007gj-0r
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRO-0007DM-1c
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=letEvySddI2QRztq9nX1au5J7qnMiF/rfNLUvOFG+v0=; b=zn+KA6iLOEPusvI/3s15jE5e1n
	ybLjkr479pD8nEJSSVi6U1vEk35T11k0BOYCn5LrW3KqRqaT0ipl7sZ3D++g9KtXDqvXXjytPdCgV
	B/6JcLnSlwaKZSzVrrZcvgl8myRtWspKAGC2tIzHfIU8kWy7W0rOllmQx2cxtOgK61FsiiMQ/xc2X
	fwm32dGhb+/3HExHo9Msgzvn6PZ0mpW2riOyQTaRiIZmROjQeEhRMEYM3E5tjiuoYbwPcQsc4YeQO
	nCJS4ZSp7V25+vNx0RwurBeMQMAtX6py82pbgqqeyDCBZ1RDdEVnJdh3AhslUOfL64fOlm8jVErpF
	rxZzMVGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtR1-00000002LAh-0CqL;
	Sun, 12 Jan 2025 08:35:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQy-00000002L8a-3ady
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gN-Hu; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003O5-1I;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-1j;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:25 +0100
Message-Id: <20250112083432.320215-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003500_901239_B3268C3D 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] kbuild: improve make help description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text was taken from Linux' Kbuild and isn't up-to-date with
what's supported in barebox. Before extending it further, let's align it
with what's actually supported in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 75e994e5ac1a..a86f1084cd5c 100644
--- a/Makefile
+++ b/Makefile
@@ -1316,18 +1316,19 @@ help:
 	@echo  ''
 	@echo  'Other generic targets:'
 	@echo  '  all		  - Build all targets marked with [*]'
-	@echo  '* barebox           - Build the bare kernel'
+	@echo  '* barebox         - Build the barebox proper binary'
+ifdef CONFIG_PBL_IMAGE
+	@echo  '* images          - Build final prebootloader-prefixed images'
+endif
 	@echo  '  dir/            - Build all files in dir and below'
 	@echo  '  dir/file.[ois]  - Build specified target only'
 	@echo  '  dir/file.ko     - Build module including final link'
+	@echo  '  compile_commands.json'
+	@echo  '                  - Generate compilation database for IDEs/LSP'
 	@echo  '  tags/TAGS	  - Generate tags file for editors'
 	@echo  '  cscope	  - Generate cscope index'
 	@echo  '                    (default: $(INSTALL_HDR_PATH))'
 	@echo  ''
-	@echo  'Static analysers'
-	@echo  '  checkstack      - Generate a list of stack hogs'
-	@echo  '  namespacecheck  - Name space analysis on compiled kernel'
-	@echo  ''
 	@echo  'Architecture specific targets ($(SRCARCH)):'
 	@$(if $(archhelp),$(archhelp),\
 		echo '  No architecture specific help defined for $(SRCARCH)')
-- 
2.39.5



