Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d69-0008BM-AW
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:33 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7A0B5200018
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:17 +0200
Message-Id: <20190827150918.16247-10-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 09/10] common: add generic CONFIG_KASAN option
To: barebox@lists.infradead.org

-fsanitize=[kernel-]address-sanitizer allows compile-time instrumentation
of memory accesses to detect some classes of runtime undefined behavior.

In preparation for allowing arches to provide infrastructure in support
of this feature, add the generic KASAN options.

These are only shown in the debug menu when the arch selects the
appropriate symbol. The option is named equally to their Linux counterparts.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 16a2aef7c568..cafaadb3d46f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1297,6 +1297,13 @@ config PBL_BREAK
 
 source "lib/Kconfig.ubsan"
 
+config KASAN
+	bool "KASAN: runtime memory debugger"
+	depends on HAVE_ARCH_KASAN
+	help
+	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
+
 endmenu
 
 config HAS_DEBUG_LL
@@ -1305,3 +1312,6 @@ config HAS_DEBUG_LL
 config DDR_SPD
 	bool
 	select CRC_ITU_T
+
+config HAVE_ARCH_KASAN
+	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
