Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YNJmQ-0007As-I1
 for barebox@lists.infradead.org; Mon, 16 Feb 2015 11:23:59 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Mon, 16 Feb 2015 12:23:31 +0100
Message-Id: <1424085811-32526-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] defaultenv-2: init: don't call timeout again if the user
 intervened
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

With autoboot_timeout=0 the second 'timeout' might not get another
character even if the user keeps a key pressed. So just reuse the key from
the first call.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 defaultenv/defaultenv-2-base/bin/init | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 34807bcf585d..30651e55d277 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -37,6 +37,7 @@ fi
 # allow to stop the boot before execute the /env/init/*
 # but without waiting
 timeout -s -a -v key 0
+autoboot="$?"
 
 if [ "${key}" = "q" ]; then
 	${login_cmd}
@@ -57,8 +58,10 @@ fi
 
 [ -n ${login_cmd} ] && global.console.input_allow=1
 
-timeout -a $global.autoboot_timeout -v key
-autoboot="$?"
+if [ "$autoboot" = 0 ]; then
+	timeout -a $global.autoboot_timeout -v key
+	autoboot="$?"
+fi
 
 [ -n ${login_cmd} ] && global.console.input_allow=0
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
