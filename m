Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQnso-0005Rm-7G
 for barebox@lists.infradead.org; Sat, 05 May 2012 22:55:22 +0000
Received: by lbbgg6 with SMTP id gg6so3481380lbb.36
 for <barebox@lists.infradead.org>; Sat, 05 May 2012 15:55:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  6 May 2012 02:55:10 +0400
Message-Id: <1336258510-22036-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] README: fix some typos
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 README |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 5662a1c..c875b7d 100644
--- a/README
+++ b/README
@@ -56,7 +56,7 @@ Features
   'eth0.ip=192.168.0.7' or 'echo $eth0.ip'
 
 - initcalls
-  hooks in the startup process can be archieved with *_initcall() directives
+  hooks in the startup process can be achieved with *_initcall() directives
   in each file.
 
 - getopt
@@ -95,7 +95,7 @@ This command starts a menu box and lets you select all the different
 options available for your architecture. Once the configuration was
 finished (you can simulate this by using the standard demo config file
 with 'make sandbox_defconfig'), there is a .config file in the toplevel
-directory of the sourcode.
+directory of the source code.
 
 Once barebox is configured, we can start the compilation
 
@@ -106,7 +106,7 @@ If everything goes well, the result is a file called barebox:
   # ls -l barebox
     -rwxr-xr-x 1 rsc ptx 114073 Jun 26 22:34 barebox
 
-Barebox usually needs an environment for storing the configuation data.
+Barebox usually needs an environment for storing the configuration data.
 You can generate an environment using the example environment contained
 in board/sandbox/env:
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
