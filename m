Delivery-date: Wed, 26 Mar 2025 13:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0F-004QuH-1l
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0E-0000Gt-7s
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oAgBlnfOEGZF+wmoN4qU3hmEO64NlZ0kZs0DPa9P06M=; b=MQt1S85KYjyD2OfUN7TYSflyUD
	QSkUvJO57d1REdNXJ/CWuHgIQa1LjJxSH7gh2LKEVyOH7anLP/1r3bfyp2wsdkuuNKcLNZNr9uMZz
	zyxdTrI784SX9n/+KbF5iv6OtOqCI7TgR7MrFiDrilXlbVU5E8JJutbtH3oEO8AJDfgUbrmFsUg11
	wCPUSxZT6nBkPCv+b+ysyo6jPz6xxcYzYQG8Gsvi2F7tYEC4qAOAONsXbDa9Zc7Qf5eLbxzz8giXY
	MZBwkjJFQ+eyy5WvNSsLJpEe1TmZH0xu+pBa/Ro4PmW6YpkHC3kE8dJIKx+gZblz7otm7he4PSH5J
	hhYSNFDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzg-00000008TON-3ng8;
	Wed, 26 Mar 2025 12:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKh-0b4P
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008J5-Ta; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYg-0s;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-1v;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:18 +0100
Message-Id: <20250326123619.282897-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_199059_E665841E 
X-CRM114-Status: UNSURE (   8.35  )
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
Subject: [PATCH 6/7] ci: container: add musl-tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The musl-tools package provides a musl-gcc wrapper that can be used to
compile applications statically against musl.

Add it to the BSP, so we can use it from CI in future.
This will enable us to:

  - catch breakage in especially host/target tools when compiled with
    musl as OpenEmbedded does in CI and Alpine/PostmarketOS does
    by default

  - distribute statically linked tools with releases.

Cc: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index 02610196f0d9..e9b044c87ab7 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -31,6 +31,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	lzma-alone \
 	lzop \
 	mount \
+	musl-tools \
 	openssl \
 	pkg-config \
 	util-linux \
-- 
2.39.5



