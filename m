Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXJCq-0003EQ-7h
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 05:38:57 +0000
Received: by mail-lf1-x144.google.com with SMTP id b11so11054835lfa.5
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2019 22:38:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 08:38:34 +0300
Message-Id: <20190602053834.8950-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] riscv: dts: erizo-generic: fix memory node name
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/dts/erizo-generic.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/dts/erizo-generic.dts b/arch/riscv/dts/erizo-generic.dts
index d1f8d57168..29da01ef8e 100644
--- a/arch/riscv/dts/erizo-generic.dts
+++ b/arch/riscv/dts/erizo-generic.dts
@@ -7,7 +7,7 @@
 	model = "generic Erizo SoC board";
 	compatible = "miet-riscv-workgroup,erizo-generic-board";
 
-	memory@0 {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x00800000>;
 	};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
