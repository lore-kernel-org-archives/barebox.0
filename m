Delivery-date: Tue, 15 Jun 2021 20:31:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDqi-00042M-18
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 20:31:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDqg-0000vD-Dn
	for lore@pengutronix.de; Tue, 15 Jun 2021 20:31:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZGdy5PONE8UcP8Zql6tbJ5pl63d96BOvWscmZEx0zM=; b=ViGRtsSlZKSitm
	bmS8dhTuh8a6mBxFCpfh9deyrdFSSDM63qP2JmfRueBMn5zcwmnR6mCm/QObTurk30bpvE9cBepUu
	0L2aCVMeXQgaSEPcRhzBqOQ9EsAHxQ17m8v3UhhlSQxw717qXk3UdACKC3MengTWN87eJBuo6zqsU
	r789Ty0gi1J8XQ+0qABVmVZE/xKIv248q60t0elEBF+ZjrEnDmknJmpOujllAbIcxrUr04g/xU/F3
	iSi/NQc3CO3H7W7YES+ALP33GFAmcc6lkQtbiFcZOn3FDI7kLzMaZo77HEO2BhOeGvIUAzD0oqsb3
	OGLOr5uShLIz+KSCZ95A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDp2-0027We-UJ; Tue, 15 Jun 2021 18:30:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Fm-000ByJ-Ml
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=WtsWPzTQvHjiR7dZLYDlwqVselSdOYxsIhs2yEXNb74=; b=SpPVHYH3/zV64Rj/8vTgp/Zpco
 Lcu6kBW2dHdbEQYwzB7Ksiuckp92JXcYbyCDyq4QLuNMw5kJgaVO0p7EiNRrjFq9loWqQ3aMejtSw
 J1TVCQKshNxGTMBf6m9CpcqFJZx4kL+xBSCVhsQx5zi+LrZxSNSNNcPHpwpiGUyC/Uc8ExAdTZPlE
 01bsBrxEE218NgaMQ0biRm7x1BG4iBau++YBe0omswGutnPWnkCGTeNyktEcN1D3gu6cuQ05hLGkQ
 pz2P1w/HAuenHybDWPswpF+SXdA9UoXBbJ7BtByl6+TauvrOTdlqCu/21pPZaZXI8/3nxhl+wA2lE
 +J39WGzg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt7Bs-007lvu-Gq
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 11:25:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1lt7Bw-0003Zx-Fs; Tue, 15 Jun 2021 13:25:12 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1lt7Bv-00018D-Rr; Tue, 15 Jun 2021 13:25:11 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 13:25:04 +0200
Message-Id: <20210615112508.5489-6-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
References: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_122515_876599_DDEC609E 
X-CRM114-Status: UNSURE (   8.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/10] of: kconfig: of_overlay uses firmwaremgr_load_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <str@pengutronix.de>

As of_firmware.c uses the firmwaremgr_load_file function, it depends on
FIRMWARE.

Signed-off-by: Steffen Trumtrar <str@pengutronix.de>
---
 drivers/of/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 23be25d85d09..e58fe50f7090 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -49,6 +49,7 @@ config OF_BAREBOX_ENV_IN_FS
 
 config OF_OVERLAY
 	select OFTREE
+	select FIRMWARE
 	bool "Devicetree overlays"
 	help
 	  Overlays allow to patch the devicetree. Unlike Linux, Barebox does
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

