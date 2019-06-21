Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEe6-0006C6-MM
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 08:11:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so3169760pfy.13
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2019 01:11:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 21 Jun 2019 01:11:09 -0700
Message-Id: <20190621081116.18335-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190621081116.18335-1-andrew.smirnov@gmail.com>
References: <20190621081116.18335-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/10] ARM: i.MX: zii-vf610-dev-rev-b: Fix DTS warning
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add missing #address-cells and #size-cells to fix a warning

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-dev-rev-b.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
index 62112d848..c90af91a9 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -11,6 +11,9 @@
 / {
 	spi0 {
 		m25p128@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
 			partition@0 {
 				label = "bootloader";
 				reg = <0x0 0x100000>;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
