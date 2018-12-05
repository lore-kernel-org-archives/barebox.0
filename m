Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUX8G-0004Un-Fd
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:22:34 +0000
Received: by mail-lf1-x141.google.com with SMTP id e26so14716050lfc.2
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 05:22:18 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Dec 2018 16:21:58 +0300
Message-Id: <20181205132158.32337-5-antonynpavlov@gmail.com>
In-Reply-To: <20181205132158.32337-1-antonynpavlov@gmail.com>
References: <20181205132158.32337-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/4] checkpatch.pl: check for #if 0/#if 1
To: barebox@lists.infradead.org

The #if 0 or #if 1 is used to toggle features. Warn if #if 0 or #if 1
is present and suggest that they can be removed.

Based on 60f890105547f7a4 ("checkpatch: check for #if 0/#if 1")
Linux kernel commit.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index d1fe6659ce..4e17347a84 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2863,9 +2863,14 @@ sub process {
 
 # warn about #if 0
 		if ($line =~ /^.\s*\#\s*if\s+0\b/) {
-			CHK("REDUNDANT_CODE",
-			    "if this code is redundant consider removing it\n" .
-				$herecurr);
+			WARN("IF_0",
+			     "Consider removing the code enclosed by this #if 0 and its #endif\n" . $herecurr);
+		}
+
+# warn about #if 1
+		if ($line =~ /^.\s*\#\s*if\s+1\b/) {
+			WARN("IF_1",
+			     "Consider removing the #if 1 and its #endif\n" . $herecurr);
 		}
 
 # check for needless kfree() checks
-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
