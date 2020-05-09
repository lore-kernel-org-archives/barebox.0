Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXFlc-0001VG-Eu
 for barebox@lists.infradead.org; Sat, 09 May 2020 03:03:10 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat,  9 May 2020 12:02:39 +0900
Message-Id: <20200509030239.835689-2-masahiroy@kernel.org>
In-Reply-To: <20200509030239.835689-1-masahiroy@kernel.org>
References: <20200509030239.835689-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/2] kbuild: add -Wall to KBUILD_HOSTCXXFLAGS
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

[ Linux commit 735aab1e008b6d9ba8057caa647b6619bf73460f ]

Add -Wall to catch more warnings for C++ host programs.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a732e24d3..be9f2a211 100644
--- a/Makefile
+++ b/Makefile
@@ -198,7 +198,7 @@ HOSTCXX      = g++
 KBUILD_HOSTCFLAGS   := -Wall -Wstrict-prototypes -O2 \
 		-fomit-frame-pointer $(HOST_LFS_CFLAGS) \
 		$(HOSTCFLAGS)
-KBUILD_HOSTCXXFLAGS := -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
+KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
