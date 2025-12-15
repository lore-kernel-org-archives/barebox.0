Delivery-date: Mon, 15 Dec 2025 08:59:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Uj-00BfR5-1c
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:59:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ui-0005rR-SQ
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:59:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kmwFmjBm0ut9vo/H9B+MquMgj73jvZDRcivCfK0CzA8=; b=QLdtvMglhsNRlfVrErk5iYuxOa
	pmuuVp3oRG4V7P6yhsMgtdtjOSlD95/CN/Neu928IoYamTWqoXKIbch2XR7r162OkrEX7bZZr8DAW
	ocxom0IazccEjPATd4uuae3xWoiTH2cICbJRtQ6b8E6DatvgbWssgF0LANo2LmsDnB08LEGU0FMGC
	imziSGxKBBOYLvLUJcLAFQabTXtU3r7+sX0MNaaPgfPIIl0Bo89X4yL9j7hVBqaUzBkJFqWXfcKS+
	n2AklG174a8pxf0FkKAsVMLausTCczn1PFfdD9sPXg6Eg7CaOtN++qfsT04NrdZuvo17gRKLmb3Da
	MJ0XoNEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3UF-00000003EZ7-1Bhz;
	Mon, 15 Dec 2025 07:59:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3U9-00000003EXE-2fg6
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:59:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0005a6-AA; Mon, 15 Dec 2025 08:59:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-005kAY-0P;
	Mon, 15 Dec 2025 08:59:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0000000594H-07en;
	Mon, 15 Dec 2025 08:59:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 08:58:58 +0100
Message-ID: <20251215075907.1222551-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_235913_692238_F3DED8E0 
X-CRM114-Status: UNSURE (   8.17  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] bootchooser: inline document global.bootchooser.reset_priorities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The variable is documented in Documentation/, but inline magicvar doc is
missing, so add a short one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootchooser.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 2905a0ca677e..7107732440a6 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -1008,6 +1008,8 @@ BAREBOX_MAGICVAR(global.bootchooser.default_attempts,
 		 "bootchooser: Default number of attempts for a target");
 BAREBOX_MAGICVAR(global.bootchooser.reset_attempts,
 		"bootchooser: Choose condition to reset number of attempts for all enabled targets ('power-on', 'all-zero', 'reset')");
+BAREBOX_MAGICVAR(global.bootchooser.reset_priorities,
+		"bootchooser: Choosen condition to reset priority of all targets (default: '', 'all-zero')");
 BAREBOX_MAGICVAR(global.bootchooser.default_priority,
 		 "bootchooser: Default priority for a target");
 BAREBOX_MAGICVAR(global.bootchooser.state_prefix,
-- 
2.47.3



