Delivery-date: Tue, 16 Sep 2025 09:20:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPzF-003bjt-0g
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 09:20:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPzE-0007ai-Lg
	for lore@pengutronix.de; Tue, 16 Sep 2025 09:20:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zE33oMGpWVRXjldAygHjrkOEA6844JnEpeQNueZ6geA=; b=ZOvBnu2fYa2zqZovypz01Jkt2y
	qoaLLa4LYhTY7JBN0Hal3ncB4izP4R1nnv8QHeJAYA/hZVFSTI7v79rNBU9BMrQmnjBdZhGiPY7Gb
	mMDqkqk7kOncnEd8DHwWzedqcNXAfRm+wI+2mRUyS+GG0Uo4A+g4jY9KroH90oLi6JLosSX4cSnIo
	4WKHbtCzmaV0pssdYjl8kotMF1IVOnD3G2ssC+LOQ6/kT6+s+oooi7Uj5OF4djqYj8wmUCIws3ohm
	Szl2Yi1J8d2TR+eyMqTdykhbylFZEc54IizuaVT7qgTs+ZCedsxiAeaFGlke0J7LwLLL80ZOB3RdS
	zcRCU60Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPyd-00000006zdf-2UQG;
	Tue, 16 Sep 2025 07:19:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPya-00000006zd8-2ofe
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 07:19:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uyPyX-0007WT-A2; Tue, 16 Sep 2025 09:19:41 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Christian=20Thie=C3=9Fen?= <christian.thiessen@airbus.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 16 Sep 2025 09:19:35 +0200
Message-ID: <20250916071938.3224210-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_001944_747621_D7F3BE27 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] checkpatch: drop ENOSYS warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have system calls in barebox and we make ample use of ENOSYS,
so let's drop the checkpatch warning to avoid confusion.

Reported-by: Christian Thießen <christian.thiessen@airbus.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/checkpatch.pl | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 9093841d8179..1592497fb38a 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -4102,14 +4102,6 @@ sub process {
 			     "Prefer dev_$level(... to dev_printk(KERN_$orig, ...\n" . $herecurr);
 		}
 
-# ENOSYS means "bad syscall nr" and nothing else.  This will have a small
-# number of false positives, but assembly files are not checked, so at
-# least the arch entry code will not trigger this warning.
-		if ($line =~ /\bENOSYS\b/) {
-			WARN("ENOSYS",
-			     "ENOSYS means 'invalid syscall nr' and nothing else\n" . $herecurr);
-		}
-
 # function brace can't be on same line, except for #defines of do while,
 # or if closed on same line
 		if ($perl_version_ok &&
-- 
2.47.3



