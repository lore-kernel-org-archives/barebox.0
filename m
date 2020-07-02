Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqzYD-0008C4-2X
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 13:46:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 15:46:50 +0200
Message-Id: <20200702134650.19767-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master] sandbox: fix generation of broken binaries
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

Code under arch/sandbox/os is meant to link against the libc primitives
of the OS, not the barebox counterparts (e.g. for malloc).

54d47eb7e912 ("sandbox: support forcing 32-bit x86") broke this
rendering the sandbox architecture unusable. Fix this.

Reported-by: Peter Mamonov <pmamonov@gmail.com>
Fixes: 54d47eb7e912 ("sandbox: support forcing 32-bit x86")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

ARCH=sandbox is runtime-broken in master. Please add this patch there
to fix this.

Cheers,
Ahmad
---
 arch/sandbox/os/Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index ed921443e0fd..b2f95087dcc4 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -6,9 +6,13 @@ KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
 KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
-KBUILD_CFLAGS += -Wall
+KBUILD_CFLAGS := -Wall
 NOSTDINC_FLAGS :=
 
+ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
+KBUILD_CFLAGS += -m32
+endif
+
 obj-y = common.o tap.o
 
 CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
