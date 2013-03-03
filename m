Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBxdj-0006yX-Bw
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 01:23:00 +0000
Message-Id: <28f540ae79d36bfa1bad21e4a29523fdf8261f5c.1362273612.git.joshc@eso.teric.us>
In-Reply-To: <cover.1362273612.git.joshc@eso.teric.us>
References: <cover.1362273612.git.joshc@eso.teric.us>
From: Josh Cartwright <joshc@eso.teric.us>
Date: Sat, 2 Mar 2013 18:48:26 -0600
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
Subject: [PATCH 2/5] defaultenv: fixed mismatched braces in bin/boot
To: barebox@lists.infradead.org
Cc: Michal Simek <monstr@monstr.eu>

Commit 91b563613e5c831998210a2c500ec4d2492a650b ("dhcp: switch to global var
support") introduced global dhcp variables, but there was a typo in the
boot script, with a forgotten open brace.  Fix it.

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 defaultenv/bin/boot | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index c17ccdb..746d30c 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -50,7 +50,7 @@ if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 		if [ x${global.dhcp.bootfile} != x ]; then
 			kernelimage=${global.dhcp.bootfile}
 		fi
-		if [ x$global.dhcp.oftree_file} != x ]; then
+		if [ x${global.dhcp.oftree_file} != x ]; then
 			oftreeimage=${global.dhcp.oftree_file}
 		fi
 	fi
-- 
1.8.1.2



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
