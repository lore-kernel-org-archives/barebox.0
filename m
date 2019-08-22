Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zq-4N
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:55 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:40 +0200
Message-Id: <20190822061941.6093-5-ahmad@a3f.at>
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
Subject: [PATCH 4/5] sandbox: support Address and UndefinedBehavior sanitizers
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

For the hosted implementation, we just need to pass the appropriate
options at compile and link time. No further arch-specific
code needed.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig  |  2 ++
 arch/sandbox/Makefile | 13 ++++++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 5227cb624f2b..254ae9a5d30c 100644
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
index 85c70b5e8059..1504b2390ddd 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -45,9 +45,20 @@ ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
 FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
 endif
 
+ifeq ($(CONFIG_KASAN),y)
+SANITIZERS += -fsanitize=address
+endif
+
+ifeq ($(CONFIG_UBSAN),y)
+SANITIZERS += $(CFLAGS_UBSAN)
+endif
+
+CPPFLAGS += $(SANITIZERS)
+
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
-	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS)
+	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
+	$(SANITIZERS)
 
 common-y += $(BOARD) arch/sandbox/os/
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
