Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXE-0003j7-Th
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:14 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKX3-00024z-I6
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:57 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000Af-8V
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:41 +0100
Message-Id: <20181129113048.31857-9-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 08/15] scripts: link-barebox: fix bash-ism
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.1 patch: ab160dbbc4ba71a4e339382d37b31ea44fd43e86

    scripts: fix link-vmlinux.sh bash-ism

    While building linux with dash shell:
      LINK    vmlinux
    trap: SIGHUP: bad trap
    /src/linux-4.0/Makefile:933: recipe for target 'vmlinux' failed
    make[1]: *** [vmlinux] Error 1

    See the following document for behavior of posix shell trap instruction:
    http://pubs.opengroup.org/onlinepubs/000095399/utilities/trap.html

    Cc: Ingo Molnar <mingo@kernel.org>
    Signed-off-by: Sylvain BERTRAND <sylvain.bertrand@gmail.com>
    Signed-off-by: Michal Marek <mmarek@suse.cz>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index 2d920bc44b8e..bff2363a19d5 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -107,7 +107,6 @@ mksysmap()
 }
 
 # Delete output files in case of error
-trap cleanup SIGHUP SIGINT SIGQUIT SIGTERM ERR
 cleanup()
 {
 	rm -f include/generated/barebox_default_env.h
@@ -122,6 +121,20 @@ cleanup()
 	rm -f barebox
 }
 
+on_exit()
+{
+	if [ $? -ne 0 ]; then
+		cleanup
+	fi
+}
+trap on_exit EXIT
+
+on_signals()
+{
+	exit 1
+}
+trap on_signals HUP INT QUIT TERM
+
 #
 #
 # Use "make V=1" to debug this script
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
