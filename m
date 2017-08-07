Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dejCI-0003rp-Ec
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:40:07 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon,  7 Aug 2017 16:39:24 +0200
Message-Id: <20170807143927.1641-10-linux@rempel-privat.de>
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>
References: <20170807143927.1641-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 10/13] MIPS: tplink-mr3020.dts: add partition table
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

We need partition table for barebox update handler
and for barebox environment

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/tplink-mr3020.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 1e843ee00..eaae11edd 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -4,4 +4,23 @@
 	aliases {
 		spiflash = &spiflash;
 	};
+
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &spiflash, "partname:barebox-environment";
+		};
+	};
+};
+
+&spiflash {
+	partition@0 {
+		label = "barebox";
+		reg = <0 0x80000>;
+	};
+
+	partition@80000 {
+		label = "barebox-environment";
+		reg = <0x80000 0x10000>;
+	};
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
