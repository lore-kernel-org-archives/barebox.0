Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEe7-0006CI-Hy
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 08:11:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so2625635plt.3
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2019 01:11:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 21 Jun 2019 01:11:10 -0700
Message-Id: <20190621081116.18335-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/10] ARM: i.MX: zii-vf610-dev-rev-c: Fix DTS warning
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add missing #address-cells and #size-cells to fix a warning

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-dev-rev-c.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-dev-rev-c.dts b/arch/arm/dts/vf610-zii-dev-rev-c.dts
index 080d44614..ecec0b183 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-c.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-c.dts
@@ -22,6 +22,9 @@
 
 &dspi0 {
 	m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
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
