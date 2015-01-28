Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7K-0000Fs-4F
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:12 +0100
Message-Id: <1422430339-11969-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] ARM: MXS: ocotp: Add devicetree support
To: Barebox List <barebox@lists.infradead.org>

Add the device tree compatible strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index abdd445..2029b90 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -207,9 +207,18 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id mxs_ocotp_compatible[] = {
+	{
+		.compatible = "fsl,ocotp",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d mxs_ocotp_driver = {
 	.name	= DRIVERNAME,
 	.probe	= mxs_ocotp_probe,
+	.of_compatible = DRV_OF_COMPAT(mxs_ocotp_compatible),
 };
 
 static int mxs_ocotp_init(void)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
