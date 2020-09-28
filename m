Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuLd-0006Ko-4f
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:41:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:41:46 +0200
Message-Id: <20200928144146.21931-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200928144146.21931-1-a.fatoum@pengutronix.de>
References: <20200928144146.21931-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] lib: kasan: migrate Kconfig option to Debugging menu
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

UBSAN and ASAN as well as other debugging aids are all in the
Debugging menu. Relocate KASAN to be there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 lib/Kconfig    | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 8b8b30db0fc7..9419977276b2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1379,6 +1379,7 @@ config PBL_BREAK
 	  on early pbl init. This option should be used only with JTAG debugger!
 
 source "lib/Kconfig.ubsan"
+source "lib/kasan/Kconfig"
 
 config ASAN
 	bool "ASAN: runtime memory debugger"
diff --git a/lib/Kconfig b/lib/Kconfig
index 6d909c1ac8f0..90552f3c2762 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -154,8 +154,6 @@ source "lib/logo/Kconfig"
 
 source "lib/bootstrap/Kconfig"
 
-source "lib/kasan/Kconfig"
-
 config PRINTF_UUID
 	bool
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
