Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9ci-00028R-C9
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:17 +0000
Received: by weyu50 with SMTP id u50so2289596wey.36
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:15 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:33 +0200
Message-Id: <1348973437-31132-6-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 5/9] add gitignore file
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 scripts/kconfig/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index 624f650..9cd5120 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -3,6 +3,7 @@
 #
 config*
 lex.*.c
+*.lex.c
 *.tab.c
 *.tab.h
 zconf.hash.c
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
