Delivery-date: Fri, 16 Feb 2024 23:07:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb6Ma-0094U5-1X
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 23:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb6MZ-0006bW-Sx
	for lore@pengutronix.de; Fri, 16 Feb 2024 23:07:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mU3zVyryGOB/C48nHCL+dQiS8qxY1zcKoDfl7xxcbTk=; b=UCE10SjwHZ5XSGv8+BXBJrobG6
	dw9Vr7EgNOLsWCo6rTTAAqDhYnOnJdCogAkJ6TYDaoupVHMGg88zlho6ob/VU2dAEQpWsJlaA0XE2
	wqkx5CdzKjbuHR8vMmQwUmp1YZW2/wS+rL0w8617uiDIbPLJLeNXNPXUT+Fsbu4oLS63Sm1Uj5woO
	qdUPLfSQIKBBaKeyU1zUBg+zilp6GG+4ahMgezWizVCFj8yMYyTAgrLq6B6NqLX62AksweBMbr69q
	sMbhQrmTwn7Fo8M3neRG1oDytIOMlTIctQHZt3bZ1WCqtWLSvQ5xdmx5fPrbRcf+DM0pX8JZRJGHY
	tcsljL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb6MA-00000003sdd-3HS7;
	Fri, 16 Feb 2024 22:06:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb6M8-00000003scm-1t4u
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 22:06:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M7-0006V3-9f; Fri, 16 Feb 2024 23:06:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M6-0019bY-TI; Fri, 16 Feb 2024 23:06:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M6-009liJ-2e;
	Fri, 16 Feb 2024 23:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 16 Feb 2024 23:06:48 +0100
Message-Id: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_140652_516734_A151BCDC 
X-CRM114-Status: GOOD (  14.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: platform: return -EPROBE_DEFER when ensuring probe with driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

-ENODEV is a bad choice for an error code for of_device_ensure_probed.

The function is either called from board code or from driver frameworks,
which usually just propagate the error code with unintended
consequences:

  - A board driver probe function returning -ENODEV is silently skipped

  - A driver framework function returning -ENODEV is often interpreted
    to mean that an optional resource is not specified (e.g. in DT).

In both cases, the user isn't provided an error message and wrong
behavior can crop up later. In my case, the XHCI driver would time out,
because phy_get propagated of_device_ensure_probed's -ENODEV, which was
understood to mean that no PHY is needed and not that the PHY is
specified in the DT, but no driver was bound to it.

Instead of -ENODEV, let's thus return -EPROBE_DEFER. This can be
propagated up to the driver core, which on a deep probe system (the only
ones where of_device_ensure_probed is not a no-op) will print a fat red
error message. We could achieve the same with some other error code, but
-EPROBE_DEFER is what a non-deep-probe system would return when probes
are deferred indefinitely, so symmetry in the deep probe case fits well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 060fa3458bd2..664af49d268f 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -504,7 +504,7 @@ int of_device_ensure_probed(struct device_node *np)
 	 * requirements are fulfilled if 'dev->driver' is not NULL.
 	 */
 	if (!dev->driver)
-		return -ENODEV;
+		return -EPROBE_DEFER;
 
 	return 0;
 }
-- 
2.39.2



