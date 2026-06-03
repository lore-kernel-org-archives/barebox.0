Delivery-date: Wed, 03 Jun 2026 15:35:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlki-001wU0-34
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 15:35:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlki-0004PQ-AT
	for lore@pengutronix.de; Wed, 03 Jun 2026 15:35:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7CI5nJwQ9blKN8OaZELzZSWHx3jbZHz+JgzSSu90vU=; b=0dnJxaObaxY5VF
	NSVhCwAxZS9Q89yc1dJiUC/rCPLHyqvX5e3QuydXVkR77qXuE4UTrfPiwzYFVkOJmsj/0bBS0GuxU
	eQo+QRmu4aYdDYgZ6h9zORm7Bxq18eIcXNZxU629PldB7gBTWFymsa35ftzW0iQuto7bPlmWpdzze
	/I6441GUIfUytjjJKLQJSPhnPf9lvI9P7MEBsD1fP+VQoS/WUrUMpSx8cspacTKK2Wx59ykeZZaof
	V6Kzyg8g2yse+uWcclP/WfSX+PtixYWEgfPZlAbyEtE6iTgCXECnzKQOzWJgjcEKFt4l+LnRLfBmB
	Ip7Yh2F+PI7mQkDQdJrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljC-0000000FBFv-1zYD;
	Wed, 03 Jun 2026 13:33:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj7-0000000FBDd-30Cq
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-0003n9-DS; Wed, 03 Jun 2026 15:33:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-000v70-11;
	Wed, 03 Jun 2026 15:33:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-00000009uCD-10hZ;
	Wed, 03 Jun 2026 15:33:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 03 Jun 2026 15:33:41 +0200
Message-Id: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADUtIGoC/yXMQQ6CMBBG4auQWTtJhVDUqxgWhf7gGK2mQwkJ4
 e4UXX6L91ZSRIHSrVgpYhaVT8g4nwrqHy6MYPHZVJrSGmsqHuCmFMEaZmV5Lza92Hg0F9S+su5
 KufxGDLL8rvf2b03dE/10rGjbdpr9L9p3AAAA
X-Change-ID: 20260603-feature-snvs-imx6ul-0de78e5d36a9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063345_794963_22DF2E08 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ARM: i.MX6UL: initialize snvs peripheral
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds snvs peripheral initialization for the i.MX6UL soc
which is necessary to write values into the snvs lpgpr register. 

To make the code more consistent across the i.MX6/7/8M families some
smaller cleanups are included as well.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (4):
      nvmem: snvs_lpgpr: remove unnecessary cfg->name assignment
      ARM: i.MX8M/i.MX7: initialize SNVS glitch detection for all families
      ARM: i.MX7: snvs: rename imx7_snvs_init -> imx7_setup_snvs
      ARM: i.MX6UL: initialize SNVS

 arch/arm/mach-imx/Kconfig    |  2 +-
 arch/arm/mach-imx/cpu_init.c |  2 ++
 arch/arm/mach-imx/snvs.c     | 22 +++++++++++++++-------
 drivers/nvmem/snvs_lpgpr.c   |  1 -
 include/mach/imx/snvs.h      |  3 ++-
 5 files changed, 20 insertions(+), 10 deletions(-)
---
base-commit: 9f6b78063a365b5b2674663ba844fa928937f203
change-id: 20260603-feature-snvs-imx6ul-0de78e5d36a9

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



