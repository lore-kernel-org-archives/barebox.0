Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSI-0000fd-1g
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id v6-v6so1032841pfm.12
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:26 -0700
Message-Id: <20181027013127.22163-7-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013127.22163-1-andrew.smirnov@gmail.com>
References: <20181027013127.22163-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] ARM: vf610-zii-ssmb-spu3: Add switch EEPROM alias
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-ssmb-spu3.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-ssmb-spu3.dts b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
index e030109ce..5b2460caf 100644
--- a/arch/arm/dts/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
@@ -3,3 +3,14 @@
 #include <arm/vf610-zii-ssmb-spu3.dts>
 
 #include "vf610-zii-dev.dtsi"
+
+/ {
+	aliases {
+		/*
+		* NVMEM device corresponding to EEPROM attached to
+		* the switch shared DT node with it, so we use that
+		* fact to create a desirable naming
+		*/
+		switch-eeprom = &switch0;
+	};
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
