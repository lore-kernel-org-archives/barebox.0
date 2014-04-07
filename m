Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX49Q-0006pD-3F
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:39:28 +0000
Received: by mail-lb0-f175.google.com with SMTP id w7so4393896lbi.34
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:39:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:38:48 +0400
Message-Id: <1396856329-17464-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: add Loongson Tech LS1B Demo Board dts file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/loongson-ls1b.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
new file mode 100644
index 0000000..b81a951
--- /dev/null
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -0,0 +1,16 @@
+/dts-v1/;
+
+#include "ls1b.dtsi"
+
+/ {
+	model = "Loongson Tech LS1B Demo Board";
+	compatible = "loongson,ls1b";
+
+	memory {
+		reg = <0x00000000 0x4000000>;
+	};
+};
+
+&serial2 {
+	status = "okay";
+};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
