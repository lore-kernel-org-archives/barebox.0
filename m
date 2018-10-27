Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSG-0000fO-Jc
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id n10-v6so1281703pgv.10
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:25 -0700
Message-Id: <20181027013127.22163-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] ARM: vf610-zii-cfu1: Add switch EEPROM alias
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-cfu1.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index 80d3f54f7..149333596 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -8,3 +8,14 @@
 
 #include "vf610-zii-dev.dtsi"
 
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
+
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
