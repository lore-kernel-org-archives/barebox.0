Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwS8-0007vr-Jo
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:25:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:25:27 +0200
Message-Id: <20200508062530.23241-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200508062530.23241-1-a.fatoum@pengutronix.de>
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] common: introduce COMPILE_TEST option for build-testing
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Compile-time analysis may help us catch latent bugs in barebox. For this
to be most effective, we need an easy way to compile as much of barebox
as possible. Giving all driver options prompts would do this, but at the
cost of making user experience worse, by asking them about drivers for HW
that's clearly not relevant to the platform they selected.

Do as Linux does and provide a default-off COMPILE_TEST option, which we
can use to make extra drivers selectable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 97f609d84b0f..4bb0b80ebd58 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1332,6 +1332,19 @@ config KASAN
 	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
 
+config COMPILE_TEST
+	bool "compile-test drivers of other platforms"
+	default n
+	help
+	  Some drivers can be compiled on a different platform than they are
+	  intended to be run on. Despite they cannot be used there due to
+	  missing HW support, developers still, opposing to users, might want
+	  to build such drivers to compile-test them.
+
+	  If you are a developer and want to build as much as currently possible,
+	  say Y here. If you are a user, say N here to avoid being prompted for
+	  inclusion of unrelated drivers.
+
 endmenu
 
 config HAS_DEBUG_LL
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
