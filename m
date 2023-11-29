Delivery-date: Wed, 29 Nov 2023 12:48:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8J3R-00DCqk-1d
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 12:48:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8J3R-0006Wj-Is
	for lore@pengutronix.de; Wed, 29 Nov 2023 12:48:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BL3khHc+6Iy5hrMXHpEP3lTw4a+sz+bs0UfMQuBl1DA=; b=xxTUdavF4t5gmllS2yEkq1Eem7
	zGQk22NuS3aI79jCc5JoWqdyR0dg8r66a3mJ2lDH/Vrd1Vje8sIEYaF7mTNNRUZKCj1l7kGjq/uPR
	SYPp+KjM9McBacBDotXKlOx0KTxF4bAiTbcrytnC7TpEk7CQtKeWbitDdpRu+YkjSnGqdMCZY2oVd
	fu1SlXFKngHCwitOnHqH+CR50VE9E7VTtbF45TjCQSKULibFxEeM8lwxwWOF+5TZj9DxAlWF6dZcL
	JszWuF2IHuc8dPvz+x0M8onluUZw58Xbdtz7rMHyChK3Z8Cjr19Qx9cYSd8p4FhaiopsBJReriMnw
	3YOZWjpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8J28-008Aeo-1U;
	Wed, 29 Nov 2023 11:47:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8J25-008AeI-1k
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 11:47:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J23-0005qt-Mk; Wed, 29 Nov 2023 12:47:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J22-00COPg-Dj; Wed, 29 Nov 2023 12:47:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J22-006QhS-16;
	Wed, 29 Nov 2023 12:47:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 12:47:05 +0100
Message-Id: <20231129114705.1532572-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_034709_583531_CEC9BDA4 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: i.MX: point out that barebox-*-u.img is i.MX6-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't use the DCD table for RAM setup on i.MX8M, so no special
barebox binary is needed for USB upload.

CONFIG_HABV4_IMAGE_SIGNED_USB is already i.MX6-specific, but point this
out in the documentation explicitly as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 2a5168190620..13246599838b 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -131,7 +131,7 @@ barebox supports generating signed images, signed USB images suitable for
 *imx-usb-loader* and encrypted images.
 
 In contrast to normal (unsigned) images booting signed images via
-imx-usb-loader requires special images:
+imx-usb-loader on i.MX6 (but not in i.MX8M) requires special images:
 DCD data is invalidated (DCD pointer set to zero), the image is then signed and
 afterwards the DCD pointer is set to the DCD data again (practically making
 the signature invalid).
-- 
2.39.2



