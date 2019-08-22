Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zr-4P
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:56 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:39 +0200
Message-Id: <20190822061941.6093-4-ahmad@a3f.at>
In-Reply-To: <20190822061941.6093-1-ahmad@a3f.at>
References: <20190822061941.6093-1-ahmad@a3f.at>
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
Subject: [PATCH 3/5] common: add generic CONFIG_KASAN option
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

-fsanitize=[kernel-]address-sanitizer allows compile-time instrumentation
of memory accesses to detect some classes of runtime undefined behavior.

In preparation for allowing arches to provide infrastructure in support
of this feature, add the generic KASAN options.

These are only shown in the debug menu when the arch selects the
appropriate symbol. The option is named equally to their Linux counterparts.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 0db7b21a3b30..edbc4b3a160f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1316,6 +1316,13 @@ config UBSAN_NO_ALIGNMENT
 config UBSAN_ALIGNMENT
 	def_bool !UBSAN_NO_ALIGNMENT
 
+config KASAN
+	bool "KASAN: runtime memory debugger"
+	depends on HAVE_ARCH_KASAN
+	help
+	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
+
 endmenu
 
 config HAS_DEBUG_LL
@@ -1328,3 +1335,5 @@ config DDR_SPD
 config ARCH_HAS_UBSAN_SANITIZE_ALL
 	bool
 
+config HAVE_ARCH_KASAN
+	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
