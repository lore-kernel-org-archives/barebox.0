Delivery-date: Mon, 31 Mar 2025 14:50:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb8-006ZQW-1f
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb7-0008LQ-Vf
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3YndA2OMtHUEPf4RMizsGG8jw4OciLwblyWthTsoF+s=; b=xGRWv6LDzGkBynRCQEVTTHObGV
	6DyxthGP2oKLbIjcCpqyrJTXGUtFqnLIotBnI5pJlD1by6ZonxLaOv37br2zdRQzqB40IJs3xNV//
	rofAHLroB7qr9YcnvG6PwkXCSJPt/PviUkZLf+OO/CCeVRuodci3L/Itw1E/sD1HxeA30eW0krort
	BhRDb4JCtN1f5tONa91ZgNvPzDLMD4isgMzExMk2SZHn22ZpnXvDdjuNKn+/F35iZ02WK8mPbjwRG
	25m/8gLGnDUav1Znij7A8Y3iCHj7U3nSd0q3C58CgKgmmqfSzFlQplX155ho9DblVmE/5/w2nWc+C
	wjd/zngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEaf-00000000O92-3UHq;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5s-3mEy
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-AX; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:26 +0200
Message-Id: <20250331124932.901033-3-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055006_933784_541A9D34 
X-CRM114-Status: UNSURE (   8.96  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] doc: bootchooser: clarify marking boot successful from barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The previous description sounds confusing: the bootchooser framework
itself is not able to detect good or bad boots. Rephrase that sentence.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index fc36f8fb1ca..f9763a1fe14 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -120,13 +120,12 @@ it can report this to bootchooser from Linux userspace using the
   barebox-state -n system_state -s bootstate.system1.remaining_attempts=3
   barebox-state -s system1.remaining_attempts=3
 
-If instead the bootchooser can detect a failed boot itself using the
-:ref:`reset reason <reset_reason>` (WDG), one can mark the boot successful
-using the barebox :ref:`bootchoser command <command_bootchooser>`::
+Alternatively barebox can be configured to mark the last boot successful based
+on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
+:ref:`bootchooser command <command_bootchooser>`::
 
   bootchooser -s
 
-to mark the last boot successful.
 This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
 its default value (``reset_attempts``).
 
-- 
2.39.5



