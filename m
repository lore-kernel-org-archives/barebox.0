Delivery-date: Mon, 03 Mar 2025 15:34:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp6sV-009N4E-1r
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 15:34:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp6sU-0004WP-Cm
	for lore@pengutronix.de; Mon, 03 Mar 2025 15:34:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mMNI82oWZXivybKhHeEwmAH5FtSYa4N88ZrBgrFHnmc=; b=WpIDaut7EO1o1+/oIdwlASwSzw
	7apqMgkHki6asSXaKuGKY2Tk2gwNUNpJLutAR7sDbh/HvtRwf/OclNhcUUSKDmp1zrlOjkF0U1tnj
	i0p69h9k3g4XiTiYiZq8XKCp0cWDhtb9YAlEYJKwxNQ2RXmSrytx6NP+SAar8a7+TIiKqy4BUlnck
	du8gnu0KYxYLfy4skR6rrhR3cJgvly4PT0nJGgWLik9MeYfvpWcw42qube7KIZHw2HL+iicjq0iqI
	sfUqjFAldkkYlTk+hwidwLN0wYsgra8QqD6U7p5rGIXeTSJPJaYk2G5118p5YbZ+cPBR69upPI3+O
	qENvksxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp6rx-000000017P5-0XSY;
	Mon, 03 Mar 2025 14:34:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp6pl-0000000176X-1sCB
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 14:31:55 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tp6ph-0004Ej-S2; Mon, 03 Mar 2025 15:31:49 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon,  3 Mar 2025 15:31:44 +0100
Message-Id: <20250303143144.2953662-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_063153_480678_54D97BB8 
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
Subject: [PATCH] mfd: rn5t568: add priority to reset_source_set_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

30322f4b565 ("reset_source: give reset_source_set_device a priority
parameter") introduced a reset source priority parameter, but forgot
applying a priority the Ricoh RN5T568 PMIC driver's
reset_source_set_device() call.

So apply the default priority 200 here, too.

Fixes this build error:

  drivers/mfd/rn5t568.c: In function 'rn5t568_reset_reason_detect':
  drivers/mfd/rn5t568.c:82:9: error: too few arguments to function 'reset_source_set_device'
     82 |         reset_source_set_device(dev, type);
        |         ^~~~~~~~~~~~~~~~~~~~~~~
  In file included from drivers/mfd/rn5t568.c:17:
  include/reset_source.h:31:6: note: declared here
     31 | void reset_source_set_device(struct device *dev, enum reset_src_type st,
        |      ^~~~~~~~~~~~~~~~~~~~~~~

Fixes: 30322f4b565 ("reset_source: give reset_source_set_device a priority parameter")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/mfd/rn5t568.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index 7468338a2d5..e140cea03b0 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -79,7 +79,7 @@ static int rn5t568_reset_reason_detect(struct device *dev,
 			return -EINVAL;
 	}
 
-	reset_source_set_device(dev, type);
+	reset_source_set_device(dev, type, 200);
 	return 0;
 }
 
-- 
2.39.5



