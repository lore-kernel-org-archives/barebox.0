Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuXt-00089n-Nn
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:11 +0000
Received: by mail-pf0-x231.google.com with SMTP id b74-v6so4895381pfl.5
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:21 -0700
Message-Id: <20180607130108.5339-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 05/52] Include our own include/dt-bindings
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
