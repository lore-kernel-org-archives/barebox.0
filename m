Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWv-0002v3-PR
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:18 +0000
Received: by mail-pf0-x242.google.com with SMTP id y68so786544pfb.1
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:04 -0800
Message-Id: <1478708056-7875-17-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/28] vf610: Give enet_osc explicit "enet_ext" name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Give enet_osc explicit "enet_ext" name, since without it, Barebox
version of clk_set_parent fails when trying to re-parent "enet_sel".

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-twr.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
index 54b4435..5947fdb 100644
--- a/arch/arm/dts/vf610-twr.dts
+++ b/arch/arm/dts/vf610-twr.dts
@@ -12,3 +12,7 @@
 &usbdev0 {
 	status = "disabled";
 };
+
+&enet_ext {
+	clock-output-names = "enet_ext";
+};
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
