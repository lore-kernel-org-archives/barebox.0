Delivery-date: Fri, 02 Jun 2023 20:09:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q59Dk-007hjj-30
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 20:09:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q59Dh-0003AP-OC
	for lore@pengutronix.de; Fri, 02 Jun 2023 20:09:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XOsuElbk4rZtwJtvWXTmebnbCD3xgUjb9RffSAHPjpY=; b=aXqbZcgB+l/Kf3oT/BflVpDZQc
	qaNJ9qO5ww5+ETel5sS++LnXlaGUvxVVDTY6BLrtzRicR6K6/VHwwzE0DLgLpahStOoKP0i7tRB7J
	1Y7ZY/T0PHD8mJl0OF+YCsgModnR3dHvA47Gz21iwjWF0dYuRCRmzJdnBKMZBC2I3DVLkqzULlcaJ
	WL9mpl6Jzc3G8rQLfQPA1hE8MpPKGitzSX/zvhIaA581LL/qd5nCjXR2f91a5+lxMaex71QOExiei
	RsPlpU2MNTkJewHnJRYOMwDx7IUct8ZIJyqbIQMor2uZ61dwDuq01x9e9/EOQ30/AFS2Xq2aR+1ST
	L4cSMCNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q59CE-007bUN-21;
	Fri, 02 Jun 2023 18:08:18 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q59CB-007bTK-28
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 18:08:17 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8D8C840006;
	Fri,  2 Jun 2023 18:08:06 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  2 Jun 2023 20:07:45 +0200
Message-Id: <20230602180745.891623-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_110815_872655_7BE96256 
X-CRM114-Status: UNSURE (   8.58  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! string: import strverscmp_improved from systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

lib: revert CONFIG_STMP_DEVICE prompt visibility

CONFIG_STMP_DEVICE is unrelated to the strverscmp changes and I touched
it by mistake when I sought to remove VERSION_CMP's prompt. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 84d2a2573625..758197b60866 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -107,7 +107,7 @@ config IMAGE_SPARSE
 	bool
 
 config STMP_DEVICE
-	bool "STMP device support"
+	bool "STMP device support" if COMPILE_TEST
 
 config FSL_QE_FIRMWARE
 	select CRC32
@@ -168,7 +168,7 @@ config PROGRESS_NOTIFIER
 	  progress, like blinking a LED during an update.
 
 config VERSION_CMP
-	bool "version comparison utilities" if COMPILE_TEST
+	bool
 	help
 	  This is selected by code that needs to compare versions
 	  in a manner compatible with
-- 
2.38.5



