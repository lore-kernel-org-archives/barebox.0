Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcIMy-0003F7-MO
 for barebox@lists.infradead.org; Sat, 23 May 2020 00:50:34 +0000
Received: by mail-qt1-x841.google.com with SMTP id d7so9750111qtn.11
 for <barebox@lists.infradead.org>; Fri, 22 May 2020 17:50:31 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Fri, 22 May 2020 20:51:56 -0400
Message-Id: <20200523005156.148504-1-dgienda125@gmail.com>
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
Subject: [PATCH v2] password: Fix warning with empty default password
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

When CONFIG_PASSWORD_DEFAULT is unset, the default_passwd buffer is set
to the empty string. The read_default_passwd() function wants to read at
least two characters from that buffer, causing GCC to generate an array
bounds warning:

barebox/common/password.c: In function 'login':
barebox/common/password.c:173:5: warning: array subscript [1, 2147483647] is outside array bounds of 'const char[1]' [-Warray-bounds]
In file included from barebox/common/password.c:30:
include/generated/passwd.h:1:19: note: while referencing 'default_passwd'

Add an ARRAY_SIZE check to default_passwd so that the loop is optimized
away and the warning is no longer generated. Since the
read_default_passwd() function is only called when default_passwd is not
the empty string, this is not a functional change.

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
Changes since v1:
  - Added warning output to commit message
  - Rework fix in read_default_passwd() instead of hacking with the makefile

 common/password.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/password.c b/common/password.c
index a2a9c4cd6..3a0547b9a 100644
--- a/common/password.c
+++ b/common/password.c
@@ -161,6 +161,9 @@ static int read_default_passwd(unsigned char *sum, size_t length)
 	unsigned char *buf = (unsigned char *)default_passwd;
 	unsigned char c;
 
+	if (ARRAY_SIZE(default_passwd) == 1)
+		return -ENOSYS;
+
 	if (!sum || length < 1)
 		return -EINVAL;
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
