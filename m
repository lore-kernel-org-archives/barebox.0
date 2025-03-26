Delivery-date: Wed, 26 Mar 2025 13:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0F-004Qud-2O
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0E-0000Gr-7v
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ljm5UVKZFmWvvUoi8NpN/o+HSIRqn5oNJ5cfFObE2iM=; b=FsyrqTCaORSwVLhfRp7/9PfSlJ
	iuG7lPNmT0iNX8a6oTxFhT/dFLYkUT6WUGWIQ+XC1cb9FbC88kTDm80bfMfc/ztwsY1EXdFAzeWvV
	DAdDmUpxa/6aA1s9EPWu0ztP442EthNhda5qyB2lDXpcHcsHuwHABmSEGNpcEIyljmI/klX1vi/EJ
	2y5fPB1C0u4AP1EHtQuag5p+2JnKUnELz9PMetgedeJNb5idWkz3vGxkkI3N9m/DTAHEVwExN0v5F
	Kqe9kCYrbCzXiWDEwQCVK/7dz7zhZydw3oxGxXRs9J18uudxUp+RkS7UwYTVNHG5e7sjpmukiUuzH
	BUZ2LilQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzf-00000008TNr-3b0F;
	Wed, 26 Mar 2025 12:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKf-0LIR
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008Ix-RI; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYc-0i;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-1m;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:17 +0100
Message-Id: <20250326123619.282897-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_162388_B1AA384B 
X-CRM114-Status: UNSURE (   7.00  )
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
Subject: [PATCH 5/7] ci: container: run apt-get clean after installation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For good measure, let's run an apt-get clean after having installed the
package to hopefully save some space.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index 73b0f1b70802..02610196f0d9 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -53,6 +53,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	u-boot-tools \
 	yamllint \
 	yq \
+	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*
 
 ENV GCC_VERSION=14.2.0
-- 
2.39.5



