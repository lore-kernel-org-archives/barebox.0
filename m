Delivery-date: Mon, 26 May 2025 21:29:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJdVf-000cS5-0J
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 21:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJdVe-00030V-IW
	for lore@pengutronix.de; Mon, 26 May 2025 21:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QC9Iwc1tXWxwcKp214pnh5euRf7jNKkZ8t2bp1xSS4c=; b=T7F/f/Quf6KqEwDl29r4Bq0Y7g
	FoI3z03AoTszy+3O7YcmIIyK08fMJi1nEZtxu/IZNJLHY0CUPBos05bNKx5mwNB8g88i+3GG8umLj
	w7vi4zsZOt8+35Er+nJPvGx30CSpJgnXVUu/p69gm+mnbQOgs4l4X4YAhj9WB+d3i/wXJMtAGWj9v
	p132Cz9bx57rT7FalS5tEEvkQ+wIDpaJ38EOr2HnGdAb7O11qpLpX45uzjTOd3V9mRkgmAy+nBKgd
	fr33InizNaS212uWCNoECfozrHEp9UTSHOxsJbWUPLjXgEmThfk3xV3u+zHyr9LUTeIWpjTe2GOJc
	Sf9UagVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJdUx-00000009QEP-3Uie;
	Mon, 26 May 2025 19:28:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJdTr-00000009QCf-1MxE
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 19:27:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJdTp-0002Kt-BZ; Mon, 26 May 2025 21:27:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJdTp-000IcU-0Y;
	Mon, 26 May 2025 21:27:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJdTp-005Dtw-0F;
	Mon, 26 May 2025 21:27:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 May 2025 21:27:23 +0200
Message-Id: <20250526192723.1245057-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_122727_361641_25C3B2AB 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: migration-2025.06.0: mention char becoming unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

unsigned chars are the default on ARM, so breakage is probably limited,
but let's point it out to be sure anyways.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.06.0.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.06.0.rst b/Documentation/migration-guides/migration-2025.06.0.rst
index ce39b117c8cb..54d9d0f132d7 100644
--- a/Documentation/migration-guides/migration-2025.06.0.rst
+++ b/Documentation/migration-guides/migration-2025.06.0.rst
@@ -6,3 +6,9 @@ Configuration options
 
 * ``CONFIG_USB_ONBOARD_HUB`` has been renamed to ``CONFIG_USB_ONBOARD_DEV``
   for compatibility with Linux.
+
+Board code
+----------
+
+The C ``char`` data type is now always unsigned. This may affect code
+assuming ``char`` to be signed as was the default on x86, mips and kvx.
-- 
2.39.5



