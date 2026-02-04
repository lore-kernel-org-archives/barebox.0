Delivery-date: Wed, 04 Feb 2026 12:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLk-008jyi-0O
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 12:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLj-00089o-0s
	for lore@pengutronix.de; Wed, 04 Feb 2026 12:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNw07BGL1wcyC9sLM5+P6LUffFM6pv9fsXZRLCbScNI=; b=wQM+/tQlnGmrxNdo6Q+h4HYYkj
	uwJEbg0CRTwG3HTr2c1cOvTeIHsvZlCHLro1+NkWTbV1p6+wMZkd8kpi/5sroCEBSKA1gnteasXLo
	lZtc3y/6pX0VMs+wD/s1agjbr4CF+nE1eUW5TjGAl8h6O/fqkKiUKjoKq3yz0odTI3rr5s2iDJpSp
	EJbJjuuPXtgxA3xyoQGC9EjrRKmVkW7ybQXZBD7E73AomaY+QzKlyN8j881RVdkAe21QOrTBmQA1a
	omt8QrCAt7plw1lenEMuabgDJx48TpEqEouBqDIwgVpPcLxuoFVQaiw1ZsLT2widB8w2y6aHCkgoA
	+5ngdBzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL9-00000008NuJ-2DeN;
	Wed, 04 Feb 2026 11:46:35 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL6-00000008Nrp-0yaP
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 11:46:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770205587; x=1772797587;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PWYAD3ZYwxlZS7BGJ0C3vH0bwcU2rdqyvoHSKFgFNpw=;
	b=T6sGtdV5FNghf0XGqPh299oJ4Cg9DMqNaJDxeH+JcFGnwGOBnAqQ0oBd4oGFEJ7o
	qwR381v8Fc4sKoPuWE/pIt1Gnc9+/wcxaFITkCyVDFbQjFKmDPa00YCVRb9ZxdXe
	sHUWEKZ4UejPKSBZqOjqCLnuE3zMDQHRwnwF8g5HNhrmioC6exQsf6skZqJZxhed
	RWHW8sqJOGgZDM2cj0khU/jGXbtlHhNuMZcbHOcSUS4SUw3DQtduxIccVjPzumot
	WXRnN5K5uoyN6V7DFMbv4ZOEQcN8ZuUrjSJDGS5f6VPyAQucIOPwsZR4Haq+eDjG
	HmbhVbpUwopAZ72JdtsFJA==;
X-AuditID: ac1001d4-ba83c380000daae5-07-69833193bdf5
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 5D.ED.43749.39133896; Wed,  4 Feb 2026 11:46:27 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Wed,  4 Feb 2026 11:46:19 +0000
Message-ID: <20260204114621.2130261-3-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204114621.2130261-1-renaud.barbier@ametek.com>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJMWRmVeSWpSXmKPExsXCtT5hnu5kw+ZMg46pPBYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBlb5xgVvJCt6P3+grmB8bt4FyMHh4SAicTB14ld
	jFwcQgI7GSX+z5vN0sXIycEmYCDx7+hXNhBbREBeYu7+NlYQm1lAT6LjwkQmEFtYwFFi/88L
	YHEWAVWJm7e+MoLYvAIOEn/2TATrlQDqXbxjOTOIzQlU/+DvYzBbCKim68FvqHpBiZMzn7BA
	zJeXaN46m3kCI+8sJKlZSFILGJlWMYqWZusWpeYkVhoa6yXmppakZusl5+duYgQGyxoBxis7
	GO98+qB3iJGJg/EQowQHs5IIb/r0+kwh3pTEyqrUovz4otKc1OJDjNIcLErivGv3fIgTEkhP
	BJqSmlqQWgSTZeLglGpgqjlwgd0p1+Cv6cEd1u15QvaX5ObUP1KWjohYmar09cp0vjvVzwrd
	ctboBV63Orl7m15QukNHw9lLnROZc1oP/WftvHUx59gzjsfiosZSrTcj9TN3W16e9tNzTlfS
	tA+zZMQ6zn2Q3da1zylukrlJa83Vc3bzEg9Ic69fnWOfl8ba9rB8UdQmu07hj6JfYsRarCIf
	BOZOe1r+YkaUr//0bUYHe/mMv3rdOy7n9eqFdrnLdL/T0zYds08rfXbop1Rz+ZKX2sJsj62W
	n+9Q5zpUv/b7h9m1iRrf773dlzjbKD71mmmzUt+szw8u303d7RSzwD8hziptF+f7rZMebPe+
	bSbx627T5ulnb3x+5an9R4mtOCPRyNRMi7moOBEAcRUkcocCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_034632_411904_C6FF5F24 
X-CRM114-Status: GOOD (  13.58  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] gianfar: apply checkpatch recommendations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace camel case variables, null pointer tests and fix missing space
and logic.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 drivers/net/gianfar.c | 19 +++++++++----------
 drivers/net/gianfar.h |  4 ++--
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index d0f606279f..a6eb3bfa01 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -16,7 +16,7 @@
 #include <driver.h>
 #include <command.h>
 #include <errno.h>
-#include <asm/io.h>
+#include <linux/io.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 #include "gianfar.h"
@@ -77,11 +77,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 	u32 ecntrl, maccfg2;
 
 	priv->link = edev->phydev->link;
-	priv->duplexity =edev->phydev->duplex;
+	priv->duplexity = edev->phydev->duplex;
 
 	if (edev->phydev->speed == SPEED_1000)
 		priv->speed = 1000;
-	if (edev->phydev->speed == SPEED_100)
+	else if (edev->phydev->speed == SPEED_100)
 		priv->speed = 100;
 	else
 		priv->speed = 10;
@@ -194,7 +194,7 @@ static int gfar_open(struct eth_device *edev)
 	for (ix = 0; ix < RX_BUF_CNT; ix++) {
 		out_be16(&priv->rxbd[ix].status, RXBD_EMPTY);
 		out_be16(&priv->rxbd[ix].length, 0);
-		out_be32(&priv->rxbd[ix].bufPtr, (uint) priv->rx_buffer[ix]);
+		out_be32(&priv->rxbd[ix].buf, (uint)priv->rx_buffer[ix]);
 	}
 	out_be16(&priv->rxbd[RX_BUF_CNT - 1].status, RXBD_EMPTY | RXBD_WRAP);
 
@@ -202,7 +202,7 @@ static int gfar_open(struct eth_device *edev)
 	for (ix = 0; ix < TX_BUF_CNT; ix++) {
 		out_be16(&priv->txbd[ix].status, 0);
 		out_be16(&priv->txbd[ix].length, 0);
-		out_be32(&priv->txbd[ix].bufPtr, 0);
+		out_be32(&priv->txbd[ix].buf, 0);
 	}
 	out_be16(&priv->txbd[TX_BUF_CNT - 1].status, TXBD_WRAP);
 
@@ -356,7 +356,7 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	uint16_t status;
 
 	tidx = priv->txidx;
-	out_be32(&priv->txbd[tidx].bufPtr, (u32) packet);
+	out_be32(&priv->txbd[tidx].buf, (u32)packet);
 	out_be16(&priv->txbd[tidx].length, length);
 	out_be16(&priv->txbd[tidx].status,
 		in_be16(&priv->txbd[tidx].status) |
@@ -368,9 +368,8 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	/* Wait for buffer to be transmitted */
 	start = get_time_ns();
 	while (in_be16(&priv->txbd[tidx].status) & TXBD_READY) {
-		if (is_timeout(start, 5 * MSECOND)) {
+		if (is_timeout(start, 5 * MSECOND))
 			break;
-		}
 	}
 
 	status = in_be16(&priv->txbd[tidx].status);
@@ -483,7 +482,7 @@ static int gfar_probe(struct device *dev)
 	priv->tbiana = gfar_info->tbiana;
 
 	mdev = get_device_by_name("gfar-mdio0");
-	if (mdev == NULL) {
+	if (!mdev) {
 		pr_err("gfar-mdio0 was not found\n");
 		return -ENODEV;
 	}
@@ -492,7 +491,7 @@ static int gfar_probe(struct device *dev)
 	if (priv->mdiobus_tbi != 0) {
 		sprintf(devname, "%s%d", "gfar-tbiphy", priv->mdiobus_tbi);
 		mdev = get_device_by_name(devname);
-		if (mdev == NULL) {
+		if (!mdev) {
 			pr_err("%s was not found\n", devname);
 			return -ENODEV;
 		}
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index 8ccbbe1473..acb50b9ce3 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -187,13 +187,13 @@
 struct txbd8 {
 	uint16_t     status;	     /* Status Fields */
 	uint16_t     length;	     /* Buffer length */
-	uint32_t     bufPtr;	     /* Buffer Pointer */
+	uint32_t     buf;	     /* Buffer Pointer */
 };
 
 struct rxbd8 {
 	uint16_t     status;	     /* Status Fields */
 	uint16_t     length;	     /* Buffer Length */
-	uint32_t     bufPtr;	     /* Buffer Pointer */
+	uint32_t     buf;	     /* Buffer Pointer */
 };
 
 /* eTSEC general control and status registers */
-- 
2.43.0



