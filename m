Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMkNN-0007zQ-6w
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 18:54:26 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so92496wib.0
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 11:54:23 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Fri, 12 Oct 2012 20:55:57 +0200
Message-Id: <1350068157-601-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] documentation: add sandbox malloc argument
To: barebox@lists.infradead.org

Add malloc argument in doxygen comment.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/os/common.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index db347e2..36c8d62 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -436,6 +436,10 @@ static void print_usage(const char *prgname)
  *
  * Options can be:
  *
+ * -m, --malloc=\<size\>
+ *
+ * Start sandbox with a specified malloc-space \<size\> in bytes.
+ *
  * -i \<file\>
  *
  * Map a \<file\> to barebox. This option can be given multiple times. The \<file\>s
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
