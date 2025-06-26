Delivery-date: Thu, 26 Jun 2025 14:13:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUlTq-00BGgK-0C
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 14:13:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUlTp-0006If-G9
	for lore@pengutronix.de; Thu, 26 Jun 2025 14:13:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IIuyc5t1yW/toFrIzqfdd7mm6m53t4nwTMTq/AaV63E=; b=WNiY9KzHvlMwU2WrsSHsnsKE7b
	/J89o+fCKhsjTSQdip+8IGutozQb/8umwdijmqKMkXKEUrzYQUIfegb775WMaVaY4Ap0MpyxFisSj
	KSWryLNH9xIlCQIXOfCNqV/+gs1i+VgrDkFo+IeD1hnwSe78hFtUcw0e6DSGJ7zcx7AqTqXuHt8su
	tvC41mdp/cphAz67VFWoC57rxRgv0F8dReY5O2v00p2s2Ow8fzdAxpUGUMyYPX+SopuEDtuKlVmc1
	dKQlhF/r/MdDCVznCIwqnXc0/BH7879WCS2BhHZZnRTrKuwqWradyzAR7WWMdedlbq4od1+jVCzpy
	bKlkSmaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUlTB-0000000BWAe-1hsE;
	Thu, 26 Jun 2025 12:12:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkh7-0000000BO4D-3wtf
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 11:23:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uUkh4-0003Wf-8o; Thu, 26 Jun 2025 13:23:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 26 Jun 2025 13:23:01 +0200
Message-Id: <20250626112301.363955-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_042306_003076_FCCA32B0 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: add dedicated security menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of lumping commands like keystore and blobgen with misc
utilities like 2048, add a dedicated security menu for them.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig | 54 +++++++++++++++++++++++++-----------------------
 1 file changed, 28 insertions(+), 26 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 23cb6d6b7832..6c61bff1cd12 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2323,15 +2323,7 @@ config CMD_HAB
 # end Hardware manipulation commands
 endmenu
 
-
-
-menu "Miscellaneous"
-
-config CMD_2048
-	tristate
-	prompt "2048"
-	help
-	  Console version of the game "2048" for GNU/Linux
+menu "Security"
 
 config CMD_AVB_PVALUE
 	depends on OPTEE_AVB_PERSISTENT_VALUES
@@ -2345,6 +2337,33 @@ config CMD_AVB_PVALUE
 	  that must be tamper evident and allows AVB to store arbitrary key-value
 	  pairs.
 
+config CMD_BLOBGEN
+	bool
+	select BLOBGEN
+	prompt "blobgen"
+	help
+	  Provides the "blobgen" command. This command encrypts and decrypts
+	  plaintext to/from blobs. This is done with hardware crypto engines,
+	  so this command is only useful when you also enable a blobgen capable
+	  driver.
+
+config CMD_KEYSTORE
+	depends on CRYPTO_KEYSTORE
+	bool
+	prompt "keystore"
+	help
+	  keystore provides access to the barebox keystore.
+
+# end Security commands
+endmenu
+
+menu "Miscellaneous"
+
+config CMD_2048
+	tristate
+	prompt "2048"
+	help
+	  Console version of the game "2048" for GNU/Linux
 
 config CMD_BAREBOX_UPDATE
 	tristate
@@ -2362,16 +2381,6 @@ config CMD_BAREBOX_UPDATE
 		  -y		autom. use 'yes' when asking confirmations
 		  -f LEVEL	set force level
 
-config CMD_BLOBGEN
-	bool
-	select BLOBGEN
-	prompt "blobgen"
-	help
-	  Provides the "blobgen" command. This command encrypts and decrypts
-	  plaintext to/from blobs. This is done with hardware crypto engines,
-	  so this command is only useful when you also enable a blobgen capable
-	  driver.
-
 config CMD_FIRMWARELOAD
 	bool
 	select FIRMWARE
@@ -2389,13 +2398,6 @@ config CMD_KALLSYMS
 
 	  Usage: kallsyns [SYMBOL | ADDRESS]
 
-config CMD_KEYSTORE
-	depends on CRYPTO_KEYSTORE
-	bool
-	prompt "keystore"
-	help
-	  keystore provides access to the barebox keystore.
-
 config CMD_LINUX_EXEC
 	bool "linux exec"
 	depends on SANDBOX
-- 
2.39.5



