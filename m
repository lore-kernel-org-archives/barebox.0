Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gQ-Ar
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:37 +0100
Message-Id: <20180319091146.4112-6-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] Include our own include/dt-bindings
To: Barebox List <barebox@lists.infradead.org>

Allow to use dt-bindings files that are not yet upstreamed. They can
be put into include/dt-bindings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/dts/include/dt-bindings | 1 -
 scripts/Makefile.lib              | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 delete mode 120000 arch/mips/dts/include/dt-bindings

diff --git a/arch/mips/dts/include/dt-bindings b/arch/mips/dts/include/dt-bindings
deleted file mode 120000
index 0cecb3d080..0000000000
--- a/arch/mips/dts/include/dt-bindings
+++ /dev/null
@@ -1 +0,0 @@
-../../../../include/dt-bindings
\ No newline at end of file
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 272b5981e9..3024b068ee 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -154,6 +154,7 @@ ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
 		 -I$(srctree)/dts/include                                \
+		 -I$(srctree)/include                                    \
 		 -I$(srctree)/dts/src/                                   \
 		 -undef -D__DTS__
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
