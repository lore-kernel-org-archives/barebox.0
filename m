Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXC-0003j2-Ac
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:13 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xK-3t
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000As-Fm
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:45 +0100
Message-Id: <20181129113048.31857-13-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 12/15] scripts: link-barebox: minor improvement for thin
 archives build
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.10 patch: abac4c89731c02f28820d3e1bc66e85bca4baa20

    kbuild: minor improvement for thin archives build

    The root built-in.o archive is currently generated before all object
    files are built for the final link, due to final build of init/ after
    version update. In practice it seems like it doesn't matter because
    the archive symbol table does not change, but it is more logical to
    create the final archive as the last step.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Michal Marek <mmarek@suse.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index 34fa1944002c..6a134d2dd198 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -169,9 +169,6 @@ case "${KCONFIG_CONFIG}" in
 		. "./${KCONFIG_CONFIG}"
 esac
 
-archive_builtin
-archive_builtin_pbl
-
 # Update version
 info GEN .version
 if [ ! -r .version ]; then
@@ -182,6 +179,9 @@ else
 	expr 0$(cat .old_version) + 1 >.version;
 fi;
 
+archive_builtin
+archive_builtin_pbl
+
 kallsymso=""
 kallsyms_barebox=""
 if [ -n "${CONFIG_KALLSYMS}" ]; then
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
