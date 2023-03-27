Delivery-date: Mon, 27 Mar 2023 15:13:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgmfG-00GX9b-UQ
	for lore@lore.pengutronix.de; Mon, 27 Mar 2023 15:13:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgmfG-0004hG-F8
	for lore@pengutronix.de; Mon, 27 Mar 2023 15:13:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K0i/NB2Epbselea8oPgDag5AlJZhthvGmWuX9FJv3PQ=; b=CjcM6KRsJiqWzRj4symveofx6j
	qFct5zajmknfWciId38P6h8K8GKpZAxcGoQ60U+K6el060vs1BET1drqjAbUd71w2I8bf10f3fR/f
	xc+5crkYp7PB95DivqB48hdDLulA29INW/led9kkc8SWkGSCqu51FSgQAlGlfHF+yVp6Hq7eWRqM6
	P/OJ7iGQl2sC94Op1tPiwRpN7SzJLAzavZVEq/S5zu6RoVvrr72qWXDpaBKqrWr7S5FhIBkqbxDTy
	6dK79XfW+erug4QIvqrZOxqi6u5jbJWHUgnPl/8lGmdNtZ2uK9PDlxUPENzmH98LLdbVGUeARkHkI
	eg4/wlvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgme9-00B4bK-2c;
	Mon, 27 Mar 2023 13:12:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgme7-00B4aZ-0E
	for barebox@lists.infradead.org;
	Mon, 27 Mar 2023 13:12:24 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pgme3-0004Pj-TV
	for barebox@lists.infradead.org; Mon, 27 Mar 2023 15:12:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Mar 2023 15:12:18 +0200
Message-Id: <20230327131218.247157-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_061223_104137_2867F835 
X-CRM114-Status: GOOD (  10.16  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: barebox environment: recommend a partition type GUID for GPT partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The partition type GUID was generated randomly. Having a defined GUID
should reduce the risk of collisions in the future.

The GUID and a phandle reference to the storage medium could be used as
replacement for device-path if the medium supports GPT.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,environment.rst        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index 8a57bf1add..40239f424a 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -23,6 +23,9 @@ the path to the environment. Supported values for <type>:
   be the label for MTD partitions, the number for DOS
   partitions (beginning with 0) or the name for GPT partitions.
 
+If the *environmnet* is located in a GPT partition, use
+``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
+
 The file-path is the name of a file located in a FAT filesystem on the
 device named in device-path.  This filesystem will be mounted and the
 environment loaded from the file's location in the directory tree.
-- 
2.30.2



