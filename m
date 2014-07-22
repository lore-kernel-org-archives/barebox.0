Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Ux5-0006E4-B7
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:35 +0000
Received: by mail-wg0-f47.google.com with SMTP id b13so7479162wgh.6
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:12 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:48 +0200
Message-Id: <1406015809-20711-5-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 4/5] Documentation: change generated help lines
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

Someone

   loadx (load binary file over serial line (X-Modem))

looked more silly than

   loadx - load binary file over serial line (X-Modem)

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/gen_commands.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index eadea9e..b85e2e3 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -103,7 +103,7 @@ def gen_rst(name, cmd):
   out.append('.. _command_%s:' % name)
   out.append('')
   if 'c_desc' in cmd:
-    out.append("%s (%s)" % (name, ''.join(cmd['c_desc']).strip()))
+    out.append("%s - %s" % (name, ''.join(cmd['c_desc']).strip()))
   else:
     out.append("%s" % (name,))
   out.append('='*len(out[-1]))
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
