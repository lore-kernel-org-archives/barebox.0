Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJeHa-0002ii-R6
 for barebox@lists.infradead.org; Sat, 19 Sep 2020 14:56:13 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 467252400FC
 for <barebox@lists.infradead.org>; Sat, 19 Sep 2020 16:56:07 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4Btv0Q6TjQz9rxP
 for <barebox@lists.infradead.org>; Sat, 19 Sep 2020 16:56:06 +0200 (CEST)
From: Robert Karszniewicz <avoidr@posteo.de>
Date: Sat, 19 Sep 2020 16:55:58 +0200
Message-Id: <20200919145558.12274-1-avoidr@posteo.de>
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
Subject: [PATCH] README: add some commas for clarity
To: barebox@lists.infradead.org

Signed-off-by: Robert Karszniewicz <avoidr@posteo.de>
---
 README | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/README b/README
index d8077d21b..0a837b2de 100644
--- a/README
+++ b/README
@@ -114,7 +114,7 @@ in board/sandbox/env:
 
   # ./scripts/bareboxenv -s -p 0x10000 arch/sandbox/board/env env.bin
 
-To get some files to play with you can generate a cramfs image:
+To get some files to play with, you can generate a cramfs image:
   # mkcramfs somedir/ cramfs.bin
 
 The barebox image is a normal Linux executable, so it can be started
@@ -133,14 +133,14 @@ given with '-i' will appear as /dev/fd[n].
 
 If barebox finds a valid configuration sector on /dev/env0 it will
 load it to /env. It then executes /env/init if it exists. If you have
-loaded the example environment barebox will show you a menu asking for
+loaded the example environment, barebox will show you a menu asking for
 your settings.
 
-If you have started barebox as root you will find a new tap device on your
+If you have started barebox as root, you will find a new tap device on your
 host which you can configure using ifconfig. Once you configured bareboxs
-network settings accordingly you can do a ping or tftpboot.
+network settings accordingly, you can do a ping or tftpboot.
 
-If you have mapped a cramfs image try mounting it with
+If you have mapped a cramfs image, try mounting it with
 
   # mkdir /cram
   # mount /dev/fd0 cramfs /cram
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
