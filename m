Delivery-date: Mon, 17 May 2021 20:55:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPG-0005RQ-IS
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:55:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPF-0003x1-B0
	for lore@pengutronix.de; Mon, 17 May 2021 20:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZhBLSW4guOXN6WE5iGHaX9g5XR3GGdsvXBikfQN1QhU=; b=ADnGLMVqgN0vawHyZF1dm9vFd
	n7Iiy52kyCaBiOgN75SOrUwGN/eBVkiiQ55jU3e0vKsoEpcAs5/OhyQdLBPG4LKdA8gwq0g8Ya7U3
	D7X/pX7CnMP+LCvqNsrW7clCp8dpur5o9cCg/N9VE7RRExDmAiUhN2FR5wznunSt/gDxnk1LVn6J0
	F4oDStFXXJVRgu3Cm51aJgebyGs0nWBeVH0Ff5A5HNcStZ2viVd5W6GSvx+zxdtmH/3bY9DZbJcj1
	9PG8GTs8iNcL/bTWS0BVDTO/u7zZSpzwR86GnTCtrsm/oSWCt/gZkr+5bn+vPhmzc51Vr2TawuJhS
	aGVyCNPWQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOC-00FtXJ-EO; Mon, 17 May 2021 18:54:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNt-00FtUf-BX
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GH8dYb7t9Gs8MRIvi0G59FvK1RmuQzK75rfgtp0tKbg=; b=sY1M+QqjL3bWBveFgpr7iTKnRm
 vTcUlFnnrT+v/VqnZtiYqHbQrwMTQihMrCn1/vU50Flrqics7nZPV76GTQNRLKKbriOmQcEbTxL2t
 EMXdy+BE+gfc81V8l+gItzcdHHiCsni6oEniqEV0HsJIdy8+ZVLaz2EP18JYdbNUMncvtdRjA5A52
 ICzK9tKT1K+COrTjepaMbNLxiVTGUD4S6LDSWZu55UdW57YpKPQDQjlZSFmpM8LKfcX6KUdiLkCll
 t90QWywL5/Ei3joRngRV9eDcsSo27y7wFKVnyA62eHp/YU2wjGeVYpPZsYiDf71TeA1WVPBgkSadT
 HEPv56yQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4Sb-3v
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PG-IY; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yA-E4; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:19 +0200
Message-Id: <20210517185424.32145-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_264605_84E5EEE9 
X-CRM114-Status: GOOD (  11.61  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/15] ARM: phytec-phycard-omap3: Fix checking of unsigned
 variable being negative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

'char' can be unsigned, make it signed explicitly to let the check for
being smaller than 0 work..

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 54d8eaaddf..546fa78735 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -98,7 +98,7 @@ static void config_sdram_ddr(u8 cs, u8 cfg)
 static void pcaal1_sdrc_init(void)
 {
 	u32 test0, test1;
-	char cfg;
+	signed char cfg;
 
 	init_sdram_ddr();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

