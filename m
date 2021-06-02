Delivery-date: Wed, 02 Jun 2021 16:40:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS32-00045X-By
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:40:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS2w-0000DM-05
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:40:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaPVqJIZ4um7lkRIYfEu/jrWwcExYZJXGBucFP59Wck=; b=qThah4PzT6P+xo
	XkA+3gZNDw5oydn6mDCb7oDSxWm5ghseb+IgjXXFT1tePJ1PzOszPo4PSZPLeM82N1YTtw98KkdrW
	AIS9gIo+EwgfTGKRx0PhixLHw/R2vFT504Vmso7eTeqSD+wVLXoKk4rbb7Z1qbhH09DEG44CQ8vOo
	wi5KHdK7g8mVTp00q9Tu5W4vRKb288PaOLEY3BnJTwjowT6CaPtf+Jr6aUgXJULUFgCGavQuMo0ah
	5a8NFUfNBXKLIoDfczdTzaGhmY/BrDXAnL7DmM/GxIh1v3bNFs+bDSPiniNav7zpXqk9BgK0R33gJ
	5Jbfj1qlQQ6/2x+LqZYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loS18-004csH-64; Wed, 02 Jun 2021 14:38:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxf-004b3j-T5
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tQ-Hd; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006hW-Mw; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:45 +0200
Message-Id: <20210602143453.23097-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073512_003272_DFC08BAE 
X-CRM114-Status: GOOD (  10.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/13] openrisc: set default KBUILD_IMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For non-multi-image configuration, KBUILD_IMAGE is taken as the image to
install. It was so far not set for openRISC. Define it, so it can be
used by the make install stage, e.g. to collect artifacts after a CI
run.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/openrisc/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 72d7fa3d53fe..1776f56df97b 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -28,3 +28,5 @@ dts := arch/openrisc/dts
 
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
+
+KBUILD_IMAGE := barebox
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

