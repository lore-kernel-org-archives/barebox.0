Delivery-date: Mon, 07 Feb 2022 08:57:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuF-0083VR-Nt
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:57:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuD-0002ag-Ll
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:57:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nwP8wydaj1iju2z6MHjf3Rq3JrkpxGqpxQKx2gQNrdc=; b=oaPrvN9q0CbAEF
	I+h38pSK3vCePmk9bojuTwnHHZmuaG14kfzDnY0QBdS1YGOjd1dvQwDI8Gx0GQH1sKFcjAlggDSSs
	KzZzIxCma/6X4mZxObPGVX+OHrUImzPBgjoQHz6EAi0C3Fxvd/z0H0MPzFUY1hz8jmZNmET1fLxjl
	2bJ6NOlP4nvkDcc3+CElMeMhUNyGz4p2UvgFFoFtfW/Z4hENsV7hVjiEi7oBz13qFyDPRccTARzwY
	5yIM2U1bwisPS3PT2r9sZ9Kn8OoHahBR4qUh+3ML0Mhj3+/T5kMuonJVnJMPwc66xsocWFaQaLjdV
	SmXxyKboKUzojJ+OEOtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGysh-009GaI-SE; Mon, 07 Feb 2022 07:56:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysc-009GZ0-Oq
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysZ-000291-RV; Mon, 07 Feb 2022 08:56:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysZ-004FsX-Cp; Mon, 07 Feb 2022 08:56:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:03 +0100
Message-Id: <20220207075604.1014259-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235610_823677_D0166B54 
X-CRM114-Status: UNSURE (   7.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] sandbox: symlink stickypage.bin into build directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sandbox will try to access a stickypage.bin in the same directory if
possible. Instead of relying on users to copy it there, just create a
symlink.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore            | 1 +
 arch/sandbox/Makefile | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/.gitignore b/.gitignore
index d551a610d4c0..0382202bf716 100644
--- a/.gitignore
+++ b/.gitignore
@@ -90,3 +90,4 @@ GTAGS
 /allrandom.config
 /allyes.config
 /compile_commands.json
+/stickypage.bin
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 2cf51fa34917..aee6bccc9c14 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -74,6 +74,12 @@ cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
 
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
+stickypage.bin:
+	@$(kecho) "  LN      stickypage.bin"
+	@ln -fs arch/sandbox/board/stickypage.bin stickypage.bin
+
+KBUILD_IMAGE := barebox stickypage.bin
+
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
 
 CLEAN_FILES += $(BOARD)/barebox.lds
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

