Delivery-date: Fri, 17 Apr 2026 10:53:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDews-00D84O-0C
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:53:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDewr-0006zD-Hx
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:53:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=twIr7yrYmYlpSLt8VOkjjHv2nefLHnyBR9HIUI7FbdM=; b=FSmb9qwdY3lOy9/aawZT5fBlSa
	bCZNyJ4zSnd+cuqTyDrcP7rAnxUPfSGJmli0cSMIfNTvY4/WWF2F2h2/HHEoVPJRQKqjXpnkZWSeB
	al1erF1xh6iWPv1NjRLWQ59DeG2/kkH8+rborDzzWDy9GCFDTuI/gmPX5LSElj8qSPmWAbx2MxA0q
	RguE2wqqtU/a8VtD21Wf+4+1YcW3H5Kh8VE4fur7hnUXDY0ndjakQVNCh7OAwm1QsZWu5BGsNFHSB
	6iYP6oltgOKvehhz/auOJmorwfCYygiahXS6DKU12S/iK+0KJzSrriuS7X+PYshwaimZE1ZFlZHc3
	EspeSIEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewQ-00000003iQa-03ld;
	Fri, 17 Apr 2026 08:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewM-00000003iPM-288t
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:52:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0006gT-GQ; Fri, 17 Apr 2026 10:52:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-005ot9-12;
	Fri, 17 Apr 2026 10:52:39 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0000000FU1r-0t6H;
	Fri, 17 Apr 2026 10:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Apr 2026 10:52:25 +0200
Message-ID: <20260417085235.3689546-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260417085235.3689546-1-a.fatoum@pengutronix.de>
References: <20260417085235.3689546-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_015242_541536_A96F6F01 
X-CRM114-Status: UNSURE (   7.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/4] Documentation: migration-guide: reinstate HABv4-enablement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This got dropped inadvertently. Restore it as the upcoming release will
be the first to include it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 32813ed7da2b..3fad2f1053c6 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -11,3 +11,9 @@ The config option has been renamed from ``CONFIG_MACH_TQ_MBA8MPXL`` to
 boards with the same binary.
 The binary has been renamed from ``barebox-tqma8mpxl.img``
 to ``barebox-tqma8mpxx.img``.
+
+HABv4-enablement
+^^^^^^^^^^^^^^^^
+
+When the SRK hash is written, the corresponding fuse bank is now locked automatically.
+With that the ``IMX_SRK_HASH_WRITE_LOCK`` flag is removed.
-- 
2.47.3



