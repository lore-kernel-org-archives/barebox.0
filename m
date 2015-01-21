Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDiik-000742-Hj
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 00:00:31 +0000
Received: by mail-lb0-f174.google.com with SMTP id 10so36425782lbg.5
 for <barebox@lists.infradead.org>; Tue, 20 Jan 2015 16:00:07 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 21 Jan 2015 04:02:39 +0400
Message-Id: <1421798559-2438-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] sandbox: get malloc_size from .config
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/os/Makefile | 2 ++
 arch/sandbox/os/common.c | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 2e65be5..537f848 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -8,6 +8,8 @@ else
 CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
+CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
+
 CFLAGS := -Wall
 NOSTDINC_FLAGS :=
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 4123938..0854fb5 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -285,7 +285,7 @@ int main(int argc, char *argv[])
 {
 	void *ram;
 	int opt, ret, fd;
-	int malloc_size = 8 * 1024 * 1024;
+	int malloc_size = CONFIG_MALLOC_SIZE;
 	char str[6];
 	int fdno = 0, envno = 0, option_index = 0;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
