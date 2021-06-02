Delivery-date: Wed, 02 Jun 2021 12:27:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5m-00016n-U1
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:27:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5i-0006CF-6h
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:27:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RH2MeoB60Ct2HLryDkxVl65NKQq2HMQKulc5/opXw6k=; b=3luSK2Nl+Q837U
	NgKCZJ5/ACsgXJOYzVdbRPAJvKI+bPACUIz7EdPbDRFCR+YnhG9cuNNVLwKPJoBllXMrUHRA2BsMO
	gPk3U+TIumsLmBOvXOMKaUmwC8/ASP0TvW+Xk8Yh3fGYMruGNuhj3YT4gYyyz8xesuz/oPr+LZHbu
	YDidOGFL2bgxYAlKyJOkem3jedIML2x+xY+DD5cTmC6ted/z7VtadlW7TzWTevkA4g/ElpogKQnDc
	iyaK/jh/POZ3rdIa5YuQLxnk+En4Mf1as5D4vax6L8k03lQ/axr8wBKRIlJ8KsJ3bic+DzsWQ0VwN
	PX3QiOMWABppXHOfw6og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loO47-003JqA-Vf; Wed, 02 Jun 2021 10:25:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loO42-003Joi-MO
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 10:25:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005qp-Jw; Wed, 02 Jun 2021 12:25:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005Gj-Aw; Wed, 02 Jun 2021 12:25:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de, ore@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 12:25:22 +0200
Message-Id: <20210602102524.20034-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_032530_754045_038F2869 
X-CRM114-Status: GOOD (  10.14  )
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
Subject: [PATCH 1/3] ARM: at91: microchip-ksz9477-evb: support PBL console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

First stage PBL does FAT file system accesses, so there is more that
could go wrong compared with second stage PBL that just does extraction.

Enable PBL console to get some error messages out if things don't work
out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 93ae4819750c..7c5a69af05de 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -41,8 +41,9 @@ SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
 
 	sama5d3_udelay_init(MASTER_CLOCK);
 	sama5d3_xplained_ddrconf();
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		dbgu_init();
+
+	dbgu_init();
+	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
 
 	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

