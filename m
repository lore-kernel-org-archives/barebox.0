Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22d.google.com ([2607:f8b0:400e:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdQn-0007sL-Ty
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:16 +0000
Received: by mail-pf0-x22d.google.com with SMTP id b17-v6so3576183pfi.0
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:43:58 -0700
Message-Id: <20180606184431.10348-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 05/38] Include our own include/dt-bindings
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
index 0cecb3d08..000000000
--- a/arch/mips/dts/include/dt-bindings
+++ /dev/null
@@ -1 +0,0 @@
-../../../../include/dt-bindings
\ No newline at end of file
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 272b5981e..3024b068e 100644
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
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
