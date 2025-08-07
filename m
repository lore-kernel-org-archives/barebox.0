Delivery-date: Thu, 07 Aug 2025 08:27:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uju6B-007tpz-0W
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 08:27:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uju6A-00037V-L8
	for lore@pengutronix.de; Thu, 07 Aug 2025 08:27:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30HrycZwE1VsdG9fNEqHhcNjI2XO8DxuQZwpBh3kbs4=; b=nt1HIpNud35CYCPkE99OVkkurL
	3E7/4mTfnMuQTA1+8WbCvPuIISvS/OK3kma4lVu99xw45X/f6gjKO0+NWl+wYCvfRzOE68XJp9vuH
	c0J7mOGFYrdtWlaUtCvyCdf0BNR9KaZhoTEuFNjGmXFu7Oe+h6yXwcVSUDZSOzmjB2MSFarjUpOTG
	g3KzqQkiez6OnWE7LAjMTNT7yJITJ1pcbfspsKeCtTLc5moONeZO09G92RVUZSJtPcVBvKMud7qIL
	IxlF08XcaRS8hReXYaxMWshnWvVhWUI22hq/09lfN6BBulUCBLjfSTTQeoCCu/75zh2+TEhxmOzo0
	YlcuQ7rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uju5f-0000000HN8B-3mcp;
	Thu, 07 Aug 2025 06:27:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uju5d-0000000HN7q-222S
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 06:27:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uju5b-000334-Ny; Thu, 07 Aug 2025 08:26:59 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uju5b-00CKZh-1o;
	Thu, 07 Aug 2025 08:26:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uju5b-00HMRP-1U;
	Thu, 07 Aug 2025 08:26:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  7 Aug 2025 08:26:58 +0200
Message-Id: <20250807062658.4137820-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_232701_521260_423620F3 
X-CRM114-Status: GOOD (  10.00  )
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
Subject: [PATCH] fixup! security: add new top-level menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

security: blobgen: move obj- definition to correct Makefile

The obj- needs to move into the Makefile in the same directory where the
file has been moved.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Makefile      | 1 -
 security/Makefile | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index e95c91d5c211..9592ccb68312 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -24,7 +24,6 @@ obj-y			+= libbb.o
 obj-y			+= libgen.o
 obj-$(CONFIG_FIP)	+= fip.o tbbr_config.o
 obj-$(CONFIG_JSMN)	+= jsmn.o
-obj-$(CONFIG_BLOBGEN)	+= blobgen.o
 obj-y			+= stringlist.o
 obj-y			+= scatterlist.o
 obj-y			+= cmdlinepart.o
diff --git a/security/Makefile b/security/Makefile
index dd9c1743107a..110ea42511f5 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -12,6 +12,7 @@ $(obj)/default.sconfig.c: FORCE
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_JWT)		+= jwt.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
+obj-$(CONFIG_BLOBGEN)		+= blobgen.o
 obj-$(CONFIG_PASSWORD)		+= password.o
 ifdef CONFIG_PASSWORD
 
-- 
2.39.5



