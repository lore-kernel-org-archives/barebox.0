Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IO-0005Jn-6k
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:17 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:05:57 +0100
Message-Id: <20210222070605.589180-2-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 1/8] kbuild: add include/uapi to path
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

Import the necessary bits out of the Linux Makefile, so include/uapi
goes into the path. This allows importing Linux headers without changing
the includes too much. Like with Linux <linux/*.h> is first searched
in include/, then include/uapi. Code that explicitly needs the uapi
header can include <uapi/linux/*.h>.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index f3c85cff9430..67efcc11f2e1 100644
--- a/Makefile
+++ b/Makefile
@@ -408,13 +408,21 @@ LDFLAGS_MODULE  = -T common/module.lds
 # even be read-only.
 export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_versions
 
+# Use USERINCLUDE when you must reference the UAPI directories only.
+USERINCLUDE    := \
+		-I$(srctree)/arch/$(SRCARCH)/include/uapi \
+		-I$(objtree)/arch/$(SRCARCH)/include/generated/uapi \
+		-I$(srctree)/include/uapi \
+		-I$(objtree)/include/generated/uapi \
+                -include $(srctree)/include/linux/kconfig.h
+
 # Use LINUXINCLUDE when you must reference the include/ directory.
 # Needed to be compatible with the O= option
 LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
                    $(if $(building_out_of_srctree), -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(SRCARCH)/include \
 		   -I$(objtree)/arch/$(SRCARCH)/include \
-                   -include $(srctree)/include/linux/kconfig.h
+		   $(USERINCLUDE)
 
 KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
