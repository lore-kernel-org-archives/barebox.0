Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edYt7-0001vF-Bl
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 09:59:38 +0000
Received: by mail-lf0-x242.google.com with SMTP id o89so9814094lfg.10
 for <barebox@lists.infradead.org>; Mon, 22 Jan 2018 01:59:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Jan 2018 12:59:16 +0300
Message-Id: <20180122095918.11721-2-antonynpavlov@gmail.com>
In-Reply-To: <20180122095918.11721-1-antonynpavlov@gmail.com>
References: <20180122095918.11721-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 1/3] sandbox: avoid symbol conflict for {open, read,
 close}dir
To: barebox@lists.infradead.org

This fixes libusb's /dev/bus/usb directory scan.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 8155a790eb..9d545c3b71 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -21,7 +21,9 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dfputs=barebox_fputs -Dsetenv=barebox_setenv \
 		-Dgetenv=barebox_getenv -Dprintf=barebox_printf \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
-		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat
+		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
+		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
+		-Dclosedir=barebox_closedir
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
