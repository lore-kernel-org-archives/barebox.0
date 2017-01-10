Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3j-0001CX-SJ
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:04 +0000
Received: by mail-pf0-x244.google.com with SMTP id y143so8292116pfb.1
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:08:55 -0800
Message-Id: <20170110150913.31416-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 02/20] i.MX: ocotp: Move memory reversing into a subroutine
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move memory reversing, found in imx_ocotp_get_mac and
imx_ocotp_set_mac, into a subroutine to avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 68ff0ce..7f625d8 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -397,19 +397,26 @@ static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 	}
 }
 
+static void memreverse(void *dest, const void *src, size_t n)
+{
+	char *destp = dest;
+	const char *srcp = src + n - 1;
+
+	while(n--)
+		*destp++ = *srcp--;
+}
+
 static int imx_ocotp_get_mac(struct param_d *param, void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
-	int i, ret;
+	int ret;
 
 	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
-	for (i = 0; i < 6; i++)
-		ocotp_priv->ethaddr[i] = buf[5 - i];
-
+	memreverse(ocotp_priv->ethaddr, buf, 6);
 	return 0;
 }
 
@@ -417,10 +424,9 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
-	int i, ret;
+	int ret;
 
-	for (i = 0; i < 6; i++)
-		buf[5 - i] = ocotp_priv->ethaddr[i];
+	memreverse(buf, ocotp_priv->ethaddr, 6);
 	buf[6] = 0; buf[7] = 0;
 
 	ret = regmap_bulk_write(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
