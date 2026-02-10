Delivery-date: Tue, 10 Feb 2026 13:53:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnF1-000ApS-2O
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 13:53:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnF1-0008A3-7O
	for lore@pengutronix.de; Tue, 10 Feb 2026 13:53:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNw07BGL1wcyC9sLM5+P6LUffFM6pv9fsXZRLCbScNI=; b=zZqjJXjav0j4kNZk6UI30FR1u9
	RG1LLdHezn42wKWWiTJq8iPCbVfaAq+pfOoYGorsNUTFMx/PMS2Etxz74mXeY9m1+pydqdqmFUmrY
	0V84xn/zZazKEhtcJb5WtJ+IBp2l/ZYjf9rN55c47sl1skvWS5BaW8V/DT8yJjERX2dr8kPXsrmKH
	oO6DfDJoUovs+1KkkjNtFixwhAWLylhTZ/byeq1RrmbuJAFFxMveE04oCqLD+/x0dharyQM2LYllX
	gbNN4uqzoxvCcTDH5VN8xDKneJh0vY2YUF9T9UmZu2dTs3fD4HmYE2MkiTBaAIudil+xXGT0SoOid
	mE4FFopA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnET-0000000GxX7-1Dgz;
	Tue, 10 Feb 2026 12:52:45 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnEQ-0000000GxUj-0IPU
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 12:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770727955; x=1773319955;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PWYAD3ZYwxlZS7BGJ0C3vH0bwcU2rdqyvoHSKFgFNpw=;
	b=dGdDgKGcORFE5jwId9oRaOlk64GA7k9nA62Hy5ezj6NvRYUa0l7o/R2884I+Zrd9
	W4KpGyFmvgze52+crmoFOmsu2/HtquCdryQVdA8dvrMBCY0VGKHVd7gh3zmCC+cF
	op+n7JNhA8BwvY9gyMZsjBHpidjI1gqlMrTuc5+EzSIgY8ZBbgwM/jr5pxOUvUJ7
	UrtMLtmSQqeA8vhAyHSAyByFnXB6go+dyod8Y9KKIVmE2Io8Hj5939mgbA29d8gy
	ZlDfVNZWJSe52nS1HOZSQjw5eLLlWxt3vC0xo9AklfW4t3jMGWBaJBbVEnJjD3m2
	9M2zYSFYHfk7uE9adzpWYA==;
X-AuditID: ac1001d4-ba83c380000daae5-42-698b2a13a928
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id C8.8D.43749.31A2B896; Tue, 10 Feb 2026 12:52:35 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 10 Feb 2026 12:52:23 +0000
Message-ID: <20260210125225.981725-3-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210125225.981725-1-renaud.barbier@ametek.com>
References: <20260210125225.981725-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMJMWRmVeSWpSXmKPExsXCtT5hnq6wVnemwY5t7BYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBlb5xgVvJCt6P3+grmB8bt4FyMnh4SAicTL3wdY
	uhi5OIQEdjJK3H8xjQUkwSZgIPHv6Fc2EFtEQF5i7v42VhCbWUBPouPCRCYQW1jAUeL4oYtg
	9SwCqhJthx6CxXkF7CU+P7vFCLFAXmLxjuXMIDangIPE09XHwWwhoJqf93ZA1QtKnJz5hAVi
	vrxE89bZzBMYeWchSc1CklrAyLSKUbQ0W7coNSex0tBYLzE3tSQ1Wy85P3cTIzBc1ggwXtnB
	eOfTB71DjEwcjIcYJTiYlUR4fU3aM4V4UxIrq1KL8uOLSnNSiw8xSnOwKInzrt3zIU5IID0R
	aEpqakFqEUyWiYNTqoGp4dycz3Mb9bhW9yU3CP+oEXgVWRx606z9X+vGdPUDX/7mrbGayO+T
	KThhXrbKzx922Qzb1ZSvf2Yv2RQ3TXLfRU6R6ld3JP9LRDqLCz3mfXhI6s+MM2H9n8UM1zr9
	/7xBsin84EP+yEPC387FdzauYjqye2GCn+JDIVY7WYcjW7VFdt1Uar2cmjprOSfrh8SqtNLr
	76Rn72UOrb3BelbuUfa6w8xRsxfvq7eSXHr5vohBfse058qbeOPOhDJf2rnseoWTKdv2ZzP9
	so0P32H+ru9dE9b3c32NtNYK1QVhDjENDNd62w9NrH+7dFPQ7uuMDB8cqyaFzGjQ8+DrqM9f
	F/VufcLzA+63V8au4ZqnxFackWhkaqbFXFScCACllSyDiAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_045242_246194_802E887A 
X-CRM114-Status: GOOD (  13.60  )
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
Subject: [PATCH v3 2/4] gianfar: apply checkpatch recommendations
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



