Delivery-date: Fri, 17 Apr 2026 10:53:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDewm-00D834-1J
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:53:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDewl-0006wM-Qn
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:53:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLd6e7D0MoWW9HbnVoI2i7RX2NFconvpCrmrsR2IHL0=; b=zB/OmOtz1IrBATqqnU5CfVRgq9
	IlsL346XJ0hRw3o12BOuSPlnUYtBg9l0D21fjwOR/cnhr6K+HFqPQhxXcuTG0FAqt505L4OjOOQZY
	qGSuxXphkONQg45FWJGv2Ajb6lQ+iT33VAt/xvCFD0VBK4xS3GJVKeWec3IqQpYSx0k8S9iXfZZ8d
	cAkeh2W4Q5G5n7CFkh4lDAKZxnsLRMCVx1pecEl74N5i/ICgvGRAa6XZxW+RvvJG1V+mfRH3kpZhE
	YnmUw+xgT494bOZi5qU/hCxt7eweBySAbojpKmxn3p12x1UEovej61purreNXJD+MzYUBtxEgEoPm
	1otGRwew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewR-00000003iRB-2fWW;
	Fri, 17 Apr 2026 08:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDewM-00000003iPJ-2NnW
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0006gU-I0; Fri, 17 Apr 2026 10:52:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-005otC-1B;
	Fri, 17 Apr 2026 10:52:39 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDewJ-0000000FU1r-15P7;
	Fri, 17 Apr 2026 10:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Apr 2026 10:52:26 +0200
Message-ID: <20260417085235.3689546-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260417085235.3689546-1-a.fatoum@pengutronix.de>
References: <20260417085235.3689546-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_015242_612638_9908B333 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [PATCH master 3/4] Documentation: migration-guide: mention TF-A v2.14 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While this is not caused by barebox, it's something worth considering when
doing a migration, so add a short explanation.

The patch that restores TF-A v2.14 SCMI clock compatibility will be
part of the next release.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 3fad2f1053c6..4a1de042d589 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -17,3 +17,14 @@ HABv4-enablement
 
 When the SRK hash is written, the corresponding fuse bank is now locked automatically.
 With that the ``IMX_SRK_HASH_WRITE_LOCK`` flag is removed.
+
+
+TF-A v2.14 compatibility
+------------------------
+
+TF-A v2.14 has `broken compatibility <https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/thread/LKJVRDGRH7F73FWSTZC46I7IT3BRYQXC/>`_
+with SCMI consumers that implement only version 2.0 of the clock protocol.
+This includes barebox v2026.03.1, but also Linux v6.6.
+
+barebox v2026.04.0 is the first release that's compatible with both TF-A
+releases older than v2.14 as well as v2.14 itself.
-- 
2.47.3



