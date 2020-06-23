Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnZHQ-0001he-9l
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 03:07:26 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 23 Jun 2020 12:07:00 +0900
Message-Id: <20200623030702.666462-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/3] kbuild: add -Wmissing-prototypes and -std=gnu89 to
 KBUILD_HOSTCFLAGS
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Align with Linux kernel.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index da01ca5b0..a4aac3db4 100644
--- a/Makefile
+++ b/Makefile
@@ -363,8 +363,8 @@ HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
 HOSTCC       = gcc
 HOSTCXX      = g++
-KBUILD_HOSTCFLAGS   := -Wall -Wstrict-prototypes -O2 \
-		-fomit-frame-pointer $(HOST_LFS_CFLAGS) \
+KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
+		-fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
 		$(HOSTCFLAGS)
 KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
