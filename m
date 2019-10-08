Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhiC-0001VC-N6
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 05:07:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so7974643pls.0
 for <barebox@lists.infradead.org>; Mon, 07 Oct 2019 22:07:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  7 Oct 2019 22:06:57 -0700
Message-Id: <20191008050657.1605-2-andrew.smirnov@gmail.com>
In-Reply-To: <20191008050657.1605-1-andrew.smirnov@gmail.com>
References: <20191008050657.1605-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: dts: vf610-zii-scu4-aib: Add
 "i2c-mux-idle-disconnect" to I2C muxes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add "i2c-mux-idle-disconnect" to I2C muxes to prevent identical slaves
from different segments from interfering with each other.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-scu4-aib.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-scu4-aib.dts b/arch/arm/dts/vf610-zii-scu4-aib.dts
index 43a13e243d..1e6a54954a 100644
--- a/arch/arm/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/dts/vf610-zii-scu4-aib.dts
@@ -109,3 +109,11 @@
 		label = "fiber9";
 	};
 };
+
+/*
+ * FIXME: Remove once this code appears in kernel DTS
+*/
+&i2c2 {
+	tca9548@70 { i2c-mux-idle-disconnect; };
+	tca9548@71 { i2c-mux-idle-disconnect; };
+};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
