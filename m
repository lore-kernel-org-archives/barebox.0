Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXC-0003j1-7x
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:12 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xM-5q
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000Aw-HQ
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:46 +0100
Message-Id: <20181129113048.31857-14-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 13/15] scripts: link-barebox: close thin archives
 --whole-archives option
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.13 patch : 1328a1ae0e9048ff4b7f6b60c497db7a2799e1b1

    kbuild: thin archives final link close --whole-archives option

    Close the --whole-archives option with --no-whole-archive. Some
    architectures end up including additional .o and files multiple
    times after this, and they get duplicate symbols when they are
    brought under the --whole-archives option.

    This matches more closely with the incremental final link.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index 6a134d2dd198..9e2bc2afd04b 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -80,7 +80,7 @@ barebox_link()
 	local objects
 
 	if [ -n "${CONFIG_THIN_ARCHIVES}" ]; then
-		objects="--whole-archive built-in.o ${1}"
+		objects="--whole-archive built-in.o --no-whole-archive ${1}"
 	else
 		objects="--start-group ${BAREBOX_COMMON} --end-group ${1}"
 	fi
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
