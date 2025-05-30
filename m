Delivery-date: Fri, 30 May 2025 13:44:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA0-001vpN-0R
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKy9z-0002IB-Fk
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YjeMNiPjHZKNRmRGS+PQta4l057Pe085K8JotLSkWCc=; b=Rv1mEphsAXUHMIustetO7NX7s1
	UoSX7PeZHSFJ1bjd+oo2CPJh9q2AoMwrcK8zmsRsSrNdmgcmBeET7KPcC2X4FbflH5mFBVN9pWYed
	anWmRLVb75puouadJzineSxvWimv+pX07z0CzbHZRFUzq1IJyatjuYfLIAvloNCEQT/KluMdKcCHk
	k6OAQ8lXDD+mRn07+QtrpKbqDyPOdjtts6rI4HislLte2N2o/rU8cmW8RZuxp9glZ+lu7PA2GPGGy
	guM9G1uh8onRAjh9zbnGU0NPQ8KQRTp7/WbiGBIC3I28TfMiBPQ8M0zmGGL83huD78WNiFtIl23le
	k2qIdy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9J-00000000RpM-0Du3;
	Fri, 30 May 2025 11:43:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000Rba-3PuH
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Tm-VN; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4q-2D;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004Ecb-1z;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:41:06 +0200
Message-Id: <20250530114106.1009454-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250530114106.1009454-1-o.rempel@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044109_898598_CF57512E 
X-CRM114-Status: GOOD (  13.93  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 7/7] nvmem: rmem: Use unique device name for NVMEM registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ensure that each rmem NVMEM instance is registered with a unique
name by using dev_name(dev) instead of a static "rmem" string
for config.name during probe.

Previously, all rmem instances would attempt to register with the
NVMEM framework using the same name ("rmem"). This caused issues
when multiple rmem devices were present, as the NVMEM framework
(and subsequently the char device layer) would create conflicting
device nodes or prevent the creation of additional rmem instances
beyond the first one.

By using the unique device name provided by dev_name(dev) (e.g.,
"rmem0", "rmem1"), each rmem instance is now distinctly identifiable
by the NVMEM core, allowing multiple rmem devices to be created and
used concurrently without naming collisions.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/rmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index be3203de73d3..ddbfa766f03d 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -471,7 +471,7 @@ static int rmem_probe(struct device *dev)
 
 	config.dev = priv->dev = dev;
 	config.priv = priv;
-	config.name = "rmem";
+	config.name = dev_name(dev);
 	config.size = resource_size(mem);
 	priv->total_size = config.size;
 
-- 
2.39.5



