Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2n5-0000ug-Qj
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:11:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 41093A0034E
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 12:11:30 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 30 Nov 2016 12:10:44 +0100
Message-Id: <1480504245-1822-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
References: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] arm: imx6: ocotp: Added write check
To: barebox@lists.infradead.org

Since it's forbidden to use a multicast address as ethernet address,
the driver should check the addresses before they got written.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/mach-imx/ocotp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 9efa46a..f8978c0 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -452,6 +452,12 @@ static int imx_ocotp_set_mac(unsigned int mac_no, struct param_d *param,
 	for (i = 0; i < 6; i++)
 		buf[5 - i + offset] = ocotp_priv->ethaddr[mac_no][i];
 
+	if (0x01 & buf[5 + offset]) {
+		dev_err(&ocotp_priv->dev,
+			"this MAC address is a broadcast/multicast\n");
+		return -EINVAL;
+	}
+
 	ret = regmap_bulk_write(ocotp_priv->map,
 				(mac_no == 0) ? MAC0_OFFSET : MAC1_OFFSET, buf,
 				MAC_BYTES);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
