Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNAd-0001lj-U2
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 12:10:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 14:10:15 +0200
Message-Id: <20190923121018.31574-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190923121018.31574-1-a.fatoum@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/6] scripts/dtc: git rm old files as part of update process
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

To avoid keeping stale files in the scripts/dtc directory, care had to
be taken to delete all files except for the ones native to barebox.
Make this less error-prone by having careupdate-dtc-source.sh delete
these files as part of the update process.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/dtc/update-dtc-source.sh | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
index fc644c5ada26..0a098df710c3 100755
--- a/scripts/dtc/update-dtc-source.sh
+++ b/scripts/dtc/update-dtc-source.sh
@@ -44,6 +44,9 @@ get_last_dtc_version() {
 last_dtc_ver=$(get_last_dtc_version)
 
 # Build DTC
+cd $DTC_LINUX_PATH
+git ls-files . | grep -vE '^(update-dtc-source\.sh|Makefile|\.gitignore)$' | xargs git rm
+mkdir libfdt
 cd $DTC_UPSTREAM_PATH
 make clean
 make check
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
