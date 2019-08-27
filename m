Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d6A-0008Cg-6c
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:34 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E0F0720001A
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:18 +0200
Message-Id: <20190827150918.16247-11-ahmad@a3f.at>
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
Subject: [PATCH v2 10/10] sandbox: support Address and UndefinedBehavior
 sanitizers
To: barebox@lists.infradead.org

For the hosted implementation, we just need to pass the appropriate
options at compile and link time. No further arch-specific
code needed.

Because we define our own handlers in lib/ubsan.c, linking against
libubsan isn't strictly required. We do it anyway on sandbox, so we can
use the backtrace functionality within.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig  |  2 ++
 arch/sandbox/Makefile | 12 +++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 1171e4b8f8e3..6ec71a99e53f 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -2,6 +2,8 @@ config SANDBOX
 	bool
 	select OFTREE
 	select GPIOLIB
+	select ARCH_HAS_UBSAN_SANITIZE_ALL
+	select HAVE_ARCH_KASAN
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 62f6be745a76..b127560a2b8c 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -47,9 +47,19 @@ ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
 FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
 endif
 
+ifeq ($(CONFIG_KASAN),y)
+CPPFLAGS += -fsanitize=address
+SANITIZER_LIBS += -fsanitize=address
+endif
+
+ifeq ($(CONFIG_UBSAN),y)
+SANITIZER_LIBS += -fsanitize=undefined
+endif
+
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
-	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS)
+	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
+	$(SANITIZER_LIBS)
 
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
