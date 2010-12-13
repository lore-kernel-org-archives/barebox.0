Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS1Sv-0000Ci-AP
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 06:00:54 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 13 Dec 2010 08:00:10 +0200
Message-Id: <13507e3e1f3a5dfa2e79be2ffcfbe6d7b9e84bb3.1292219932.git.baruch@tkos.co.il>
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
Subject: [PATCH] remove redundant .gitignore entries
To: barebox@lists.infradead.org

The ARCH and CROSS_COMPILE entries were introduced in commit cdfd8bdd, probably
by mistake.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 .gitignore |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index 6f04601..cdc4df0 100644
--- a/.gitignore
+++ b/.gitignore
@@ -34,8 +34,6 @@ barebox.netx
 barebox.map
 System.map
 Module.symvers
-ARCH
-CROSS_COMPILE
 barebox_default_env
 
 #
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
