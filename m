Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMjAI-00057P-UW
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 17:36:51 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so1890267wey.36
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 10:36:48 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Fri, 12 Oct 2012 19:38:13 +0200
Message-Id: <1350063493-3782-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1350063493-3782-1-git-send-email-alex.aring@gmail.com>
References: <1350063493-3782-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] sandbox: fix malloc argument string
To: barebox@lists.infradead.org

Fix malloc argument string.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/os/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 8c7679a..db347e2 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -403,7 +403,7 @@ static void print_usage(const char *prgname)
 "Usage: %s [OPTIONS]\n"
 "Start barebox.\n\n"
 "Options:\n\n"
-"  -m, "
+"  -m, --malloc=<size>	Start sandbox with a specified malloc-space size in bytes.\n"
 "  -i, --image=<file>   Map an image file to barebox. This option can be given\n"
 "                       multiple times. The files will show up as\n"
 "                       /dev/fd0 ... /dev/fdx under barebox.\n"
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
