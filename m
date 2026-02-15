Delivery-date: Sun, 15 Feb 2026 19:44:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrh6x-0023KX-29
	for lore@lore.pengutronix.de;
	Sun, 15 Feb 2026 19:44:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrh6y-0004Gu-0z
	for lore@pengutronix.de; Sun, 15 Feb 2026 19:44:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i+NSanMvKy70DyAXsLpuSHOHtuxY2inSGfvoJVAcOaQ=; b=zBNAH1Fzb5P3CzsYuZsEEB+rzL
	lDzuvfmoDMMZZvk49c2TSFuc/lh+2AJSxND3wMU4NfCZ1//HcWYV/M1RquLmKdIr/8AvmNPoZD1R8
	d49MkeKcb7Ai7wmRZDqhx77iQvH79WaOPGZGJKZ13sVk1ZRUgUbvtQb+chSheGDGPRCB7CKcM0YKP
	888uIVNjIHXZcLI5RGvW6oSE7buIWr5Xxj2Cyfu+LNUoRgSPhya/Y8XpwYDKjgIaKKG02TtXbJccF
	MHLNTFCipnjxi95ps2jLR5xo59SA4bp8wKGo5qKcaDDrQitg8sdrvGxVdfAZKDq6q7pFlxWEfMnMR
	6fAqfhSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrh6Q-00000005aty-2O63;
	Sun, 15 Feb 2026 18:44:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrh6O-00000005atf-3zQM
	for barebox@lists.infradead.org;
	Sun, 15 Feb 2026 18:44:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrh6M-0004Cm-Lm; Sun, 15 Feb 2026 19:44:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrh6K-000wMB-1m;
	Sun, 15 Feb 2026 19:44:13 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrh6L-0000000BXSd-3Nal;
	Sun, 15 Feb 2026 19:44:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 15 Feb 2026 19:44:12 +0100
Message-ID: <20260215184413.2750217-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_104416_992384_CDFF48CD 
X-CRM114-Status: UNSURE (   5.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] gitignore: ignore /vmbarebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

vmbarebox is the stripped barebox proper ELF that will be linked against
PBL. Add it to .gitignore like the rest of the barebox images.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 2d5b9602a5cc..16f78e815518 100644
--- a/.gitignore
+++ b/.gitignore
@@ -53,6 +53,7 @@ policy-list
 /tags
 /TAGS
 /barebox*
+/vmbarebox
 /System.map
 /build
 /oe-logs
-- 
2.47.3



