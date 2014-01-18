Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4XaY-0006IN-5k
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:34 +0000
Received: by mail-la0-f52.google.com with SMTP id c6so4513607lan.11
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:52 +0400
Message-Id: <1390057983-17921-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 02/13] MIPS: add initial Loongson-family documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-loongson/mach-loongson.dox | 5 +++++
 arch/mips/mach-mips.dox                   | 4 ++++
 2 files changed, 9 insertions(+)
 create mode 100644 arch/mips/mach-loongson/mach-loongson.dox

diff --git a/arch/mips/mach-loongson/mach-loongson.dox b/arch/mips/mach-loongson/mach-loongson.dox
new file mode 100644
index 0000000..628ae78
--- /dev/null
+++ b/arch/mips/mach-loongson/mach-loongson.dox
@@ -0,0 +1,5 @@
+/** @page dev_loongson_mach Loongson in barebox
+
+@section loongson_boards Loongson-based boards
+
+*/
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
index 750a451..1002b16 100644
--- a/arch/mips/mach-mips.dox
+++ b/arch/mips/mach-mips.dox
@@ -59,6 +59,10 @@ ISBN-13: 978-0120884216
 
 @li @subpage dev_bcm47xx_mach
 
+@subsection mach_loongson_info Loongson-based boards
+
+@li @subpage dev_loongson_mach
+
 @subsection mach_xburst_info XBurst-based boards
 
 @li @subpage dev_xburst_mach
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
