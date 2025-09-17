Delivery-date: Wed, 17 Sep 2025 16:07:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysoo-00460X-34
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:07:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysoo-0001UL-Em
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:07:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1cM0HwKgJTFaCKZt7MMqPmRL9P3NcdOyEF0B0Tc8w/M=; b=s+2/zDxiQj2x3lZWAqCPOMFA08
	XvLl60WM6NlX3XzGSPgq0bHwGpdWVReRrb4+LhtCi84W3HCMeSaPotMDEpjmMNr6z8nVj3GR1c2+X
	Ygw4JV9QlV1gtWF9Gnf/4RZI5NTzVrJSXwh3ZZxpaMxmeS18MS7JtyvPGYf0I7PFlLnuh1EVzdM9X
	AMkQmo2aIgcVsvVnniBpkMv7OuNLRZV/lLOrOH32f1ZdPLj+CO4KDgRUKWTrMs6uIFGPEHpCbBNGQ
	qfhmStm454LyTK+khR7BjchfTWeA3nitR4qXWddMLqMsMS/PPro9xzeOWaGi+NVWuSSWLp/NJ4DW0
	fYiF7MLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysoL-0000000C2gq-04ud;
	Wed, 17 Sep 2025 14:07:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysoI-0000000C2e5-08Zq
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:07:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysoG-0001PC-Ig; Wed, 17 Sep 2025 16:07:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysoG-001m2W-1H;
	Wed, 17 Sep 2025 16:07:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysoG-0000000Caqt-1Dce;
	Wed, 17 Sep 2025 16:07:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Sep 2025 16:06:59 +0200
Message-ID: <20250917140659.3001588-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_070702_067596_764C31E4 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: fec_imx: Fix probe failure on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FEC_TYPE_IMX27 is 0 which meands device_get_match_data() returns NULL
and the driver bails out on the error check of this function. Start
counting the enum at one to pass the error check also on i.MX27.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 1aaff87fdd..33b8db2745 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -114,7 +114,7 @@ struct buffer_descriptor {
 };
 
 enum fec_type {
-	FEC_TYPE_IMX27,
+	FEC_TYPE_IMX27 = 1,
 	FEC_TYPE_IMX28,
 	FEC_TYPE_IMX6,
 };
-- 
2.47.3



