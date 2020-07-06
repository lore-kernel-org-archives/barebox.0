Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKbv-0001SE-C6
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:28:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:28:06 +0200
Message-Id: <20200706062805.26278-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200706062805.26278-1-a.fatoum@pengutronix.de>
References: <20200706062805.26278-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] sandbox: reinstate cooked terminal mode on
 sanitizer-induced death
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

If we exit due to AddressSanitizer error, we remain in raw mode, which
is not best user experience. Currently every exit is an AddressSanitizer
death due to leaks. We want to encourage users to always have ASan
enabled, to catch more errors, thus call cookmode() on exit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/Makefile | 4 ++++
 arch/sandbox/os/common.c | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 1d32a197ead4..f307e6a828c1 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -6,6 +6,10 @@ KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
 KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
+ifeq ($(CONFIG_KASAN),y)
+KBUILD_CPPFLAGS += -DCONFIG_KASAN=1
+endif
+
 KBUILD_CFLAGS := -Wall
 NOSTDINC_FLAGS :=
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 534571c0e668..69fadb3b47a4 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -44,6 +44,8 @@
 #include <mach/linux.h>
 #include <mach/hostfile.h>
 
+void __sanitizer_set_death_callback(void (*callback)(void));
+
 int sdl_xres;
 int sdl_yres;
 
@@ -345,6 +347,10 @@ int main(int argc, char *argv[])
 	int fdno = 0, envno = 0, option_index = 0;
 	char *aux;
 
+#ifdef CONFIG_KASAN
+	__sanitizer_set_death_callback(cookmode);
+#endif
+
 	while (1) {
 		option_index = 0;
 		opt = getopt_long(argc, argv, optstring,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
