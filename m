Delivery-date: Mon, 02 Jun 2025 10:52:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u5-002tsn-2U
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 10:52:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u5-00018k-5m
	for lore@pengutronix.de; Mon, 02 Jun 2025 10:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IdXTg9Bg9gvswfGbbu5NaT9ikCfz5Bs+UWstWD3zp4E=; b=C7OuyrZA1Zl1QySLPD92X1V8Ei
	thFzkmv5AqbTZQ/FGHJCENivdgF1b8vIATsIOYzoYj1FRmYvfX5gJ5oCh3aWn4Fr9ilIEs4D1UPHC
	lZ9lqb0UPh3jxpY6HH+qShlEzDb52YxfxCtyH+hSeMwusrHFRpXLrK7L5E4c0F82z50qMeGVLPzvu
	cfgFZfQ+/Km6cO3HUxmVDh8weYNbj9TZ05OKAH5MoLg2hbIbZZXJGSLCBzOlUJ+kPdKi+AO0ouspq
	mUoHrzPY+OdBnJ6V97aNDnj/OHhPJEJ1F0R6UUJJM7fIZtW6q7oDx1z7a6AGQhSPNyiKzB/+b/hIp
	uE/a4Dzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tN-0000000713j-0s95;
	Mon, 02 Jun 2025 08:51:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tK-00000007134-3k42
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 08:51:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-0000kJ-LA; Mon, 02 Jun 2025 10:51:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-001QOc-1Q;
	Mon, 02 Jun 2025 10:51:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-003dab-1B;
	Mon, 02 Jun 2025 10:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 10:51:30 +0200
Message-Id: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABJmPWgC/x3LQQqAIBBG4avIrBuwoUS6SrQo+6vZVGhEIN09a
 fnxeJkSoiJRZzJF3Jr02AvqylDYxn0F61xMYqW1zgqHGTefY7x40QeJIU3tJt94eKFynRF/KFM
 /vO8Hjta0ymEAAAA=
X-Change-ID: 20250602-cdev-part-fixes-e2416b848e82
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748854293; l=850;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ykr2et5Uw6Hx3/2mF54XYzWcIipgi/ZME1sCFYmH34c=;
 b=Pau1o9l8h7zmeyJR0YXrwmeHnLs3OtIKUVZH/aJBlPnV4dpajOlFrVZMlOxhK/kmlCzV4EcOE
 G/zwfRZJs0qDhWxkjS8grGF/jpQ3W6sYpqcXeegAu1D1hCNyMl/hfM0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_015134_940667_4F1A317E 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] cdev partition fix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev partitions are cdevs themselves, but they are handled internally in
the devfs-core. cdev partitions should not be passed as context pointers
to the cdev ops though, because the drivers might do a container_of() on
them to retrieve their driver data. Pass the original cdev the driver
has registered as context to the ops

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      cdev: pass master cdev to cdev ops
      nvmem: Drop now unnecessary partition quirk

 drivers/nvmem/core.c | 10 ++--------
 fs/devfs-core.c      | 53 ++++++++++++++++++++++++++++++++++++++++------------
 2 files changed, 43 insertions(+), 20 deletions(-)
---
base-commit: 812b498be4057c39d017cad6bf43664fe04ee44b
change-id: 20250602-cdev-part-fixes-e2416b848e82

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



