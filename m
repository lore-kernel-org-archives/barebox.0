Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaKZ-0004BG-Cc
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 10:27:00 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 24 Oct 2019 10:26:51 +0000
Message-ID: <1571912781-17152-5-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH 4/5] ARM: zynqmp: dts: move pcap node to src tree
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

The pcap node will be added to the mainline device tree. As it will
eventually enter Barebox via a device tree sync, add it to the src tree
already.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 dts/src/arm64/xilinx/zynqmp.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/dts/src/arm64/xilinx/zynqmp.dtsi b/dts/src/arm64/xilinx/zynqmp.dtsi
index 9115eae..1d1e531 100644
--- a/dts/src/arm64/xilinx/zynqmp.dtsi
+++ b/dts/src/arm64/xilinx/zynqmp.dtsi
@@ -119,6 +119,9 @@
 		zynqmp_firmware: zynqmp-firmware {
 			compatible = "xlnx,zynqmp-firmware";
 			method = "smc";
+			zynqmp_pcap: pcap {
+				compatible = "xlnx,zynqmp-pcap-fpga";
+			};
 		};
 	};
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
