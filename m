Delivery-date: Wed, 04 Mar 2026 12:01:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyq-007xRL-2y
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyr-0005qx-1t
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4HVRJv0bl84kA2vMdmeQoIW4Qg9s1ZOXItDMg2pz5E=; b=3hRh2bxzztKDvd
	LZDrMT4opbyrbFe06RDVWubR2xFcg5za3gndo4Gvb6QYUUM50Yvzz2snYBPW5z/znYbG4mR96rWYP
	AXh6o4AizZ2Qewj10Rx/ZpuYw6Kc1yplOLgTUpBmCTNqV9m/jShh1Yg68oufVwnKgJc9IkgQDusrh
	etcDuWAZPIfhd7isytIRVb3yxKaeJfkl97UiXsZYo5Efip2gu078kSE+6wJ83L2APraLI/twfgzRX
	tas2AaZwkk9tlbzTwO3ZGkvyIvpnWI/cgFdysURB4E91XEnLAzku/gHijiWVETHt+4wmrANxn7NKU
	KMt1FSq0VSgDZPFzyt2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyK-0000000H22q-18mV;
	Wed, 04 Mar 2026 11:00:56 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyG-0000000H205-21x3
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=p4HVRJv0bl84kA2vMdmeQoIW4Qg9s1ZOXItDMg2pz5E=;
	b=Yo6vTYWAme7G7y7pM1npoc55z9+qHxr0yrBNdtQsggfIwH6FscBVLPcjpbJ0mMpsjTEkHFbHX3zZw
	 uMPJleAlrfzWKUEQ/c64Le0hMOYHEOJjvlXPVxU6+ngSq+1Yq9K3cz4XA53dD3dEKoiewl7++ala70
	 9dOKZmNG0A4pHLlsA8Oo3URwYi2ny1mc6WEEMczhWmwncvGHufBSLqgTScqN+gJy/8owoJ4C/Klfci
	 dAlfrHTtoyF3HKSqZ+1Jv9UlR45arhUz083qhzQRP8eS7Rq7CW8my0kDBN0QZD3BT9qtO2g4oPNrOm
	 iuFh8Hpithno+cjy3ZZW6EOGbpMjUSg==
X-MSG-ID: 65aa3559-17b9-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:12 +0100
Message-ID: <20260304110013.495725-9-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030052_686957_747F0E90 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>, David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: boards: protonic-rk356x: Fix crash with different boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

prt_rk356x_devices_init() is an initcall and thus executed even for boards
that are not compatible with this one. This leads to a null-pointer
dereference in prt_priv.model, since this struct is not initialized for
other boards. Add a simple check to avoid this crash.

Signed-off-by: David Jander <david@protonic.nl>
Tested-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 5fba0be98a..486c77e441 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -141,6 +141,9 @@ static int prt_rk356x_devices_init(void)
 {
 	int ret;
 
+	if (!prt_priv.model)
+		return 0; /* Not a prt_rk356x board! */
+
 	prt_rk356x_bbu();
 
 	if (prt_priv.model->init) {
-- 
2.43.0



