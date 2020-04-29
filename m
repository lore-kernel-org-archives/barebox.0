Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfRM-0002cS-Bf
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 05:39:26 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 3903C1BF210
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 05:39:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 07:39:13 +0200
Message-Id: <20200429053914.4775-4-ahmad@a3f.at>
In-Reply-To: <20200429053914.4775-1-ahmad@a3f.at>
References: <20200429053914.4775-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] net: enc28j60: fix typo in referenced Kconfig option
To: barebox@lists.infradead.org

There is no ENC28J60_WRITEVERIFY, instead the Kconfig file defines
DRIVER_NET_ENC28J60_WRITEVERIFY. This has been this way since the very
first commit adding the driver.

The option is off by default, so this shouldn't break anything that
didn't mess with the option. Fix the typo.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/enc28j60.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 3628a88f7dd3..b3cfb65c1c2e 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -273,7 +273,7 @@ static void enc28j60_mem_read(struct enc28j60_net *priv,
 {
 	enc28j60_regw_write(priv, ERDPTL, addr);
 
-	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY)) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_ENC28J60_WRITEVERIFY)) {
 		u16 reg;
 		reg = enc28j60_regw_read(priv, ERDPTL);
 		if (reg != addr)
@@ -293,7 +293,7 @@ enc28j60_packet_write(struct enc28j60_net *priv, int len, const u8 *data)
 	/* Set the write pointer to start of transmit buffer area */
 	enc28j60_regw_write(priv, EWRPTL, TXSTART_INIT);
 
-	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY)) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_ENC28J60_WRITEVERIFY)) {
 		u16 reg;
 		reg = enc28j60_regw_read(priv, EWRPTL);
 		if (reg != TXSTART_INIT)
@@ -710,7 +710,7 @@ static int enc28j60_eth_send(struct eth_device *edev, void *packet,
 	enc28j60_packet_write(priv, packet_length, packet);
 
 	/* readback and verify written data */
-	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY)) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_ENC28J60_WRITEVERIFY)) {
 		int test_len, k;
 		u8 test_buf[64]; /* limit the test to the first 64 bytes */
 		int okflag;
@@ -808,7 +808,7 @@ static void enc28j60_hw_rx(struct eth_device *edev)
 
 	enc28j60_regw_write(priv, ERXRDPTL, erxrdpt);
 
-	if (IS_ENABLED(CONFIG_ENC28J60_WRITEVERIFY)) {
+	if (IS_ENABLED(CONFIG_DRIVER_NET_ENC28J60_WRITEVERIFY)) {
 		u16 reg;
 		reg = enc28j60_regw_read(priv, ERXRDPTL);
 		if (reg != erxrdpt)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
