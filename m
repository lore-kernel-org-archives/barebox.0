Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFoC-0000kG-1o
 for barebox@lists.infradead.org; Wed, 20 May 2020 03:54:22 +0000
Received: by mail-qt1-x842.google.com with SMTP id a23so1584164qto.1
 for <barebox@lists.infradead.org>; Tue, 19 May 2020 20:54:19 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 19 May 2020 23:55:55 -0400
Message-Id: <20200520035555.84422-1-dgienda125@gmail.com>
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
Subject: [PATCH] password: Fix warning with empty default password
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

When CONFIG_PASSWORD_DEFAULT is unset, the default_passwd buffer is set
to the empty string. The read_default_passwd() function wants to read at
least two characters from that buffer, causing GCC to generate an array
bounds warning. Make the default_passwd buffer have at least 2 bytes so
this warning is not generated.

Since the read_default_passwd() function is only called when
default_passwd is not the empty string, this is not a functional change.

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index c14af692f..3b63e89ed 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -74,7 +74,7 @@ ifdef CONFIG_PASSWORD
 
 ifeq ($(CONFIG_PASSWORD_DEFAULT),"")
 define filechk_passwd
-	echo "static const char default_passwd[] = \"\";"
+	echo "static const char default_passwd[] = \"\\0\";"
 endef
 else
 define filechk_passwd
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
