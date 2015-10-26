Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqmEb-0004ou-II
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 18:11:06 +0000
Received: by wicll6 with SMTP id ll6so126505025wic.0
 for <barebox@lists.infradead.org>; Mon, 26 Oct 2015 11:10:43 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Mon, 26 Oct 2015 19:10:28 +0100
Message-Id: <1445883029-23173-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
References: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/3] checkpatch: fix left brace warning
To: barebox@lists.infradead.org

Running checkpatch with perl version 5.22 occur the following warnings:

Unescaped left brace in regex is deprecated, ... checkpatch.pl line 2017.
Unescaped left brace in regex is deprecated, ... checkpatch.pl line 2267.
Unescaped left brace in regex is deprecated, ... checkpatch.pl line 2268.
...
lot of weird things
...
)\(.*\).*\s{ <-- HERE / at ./scripts/checkpatch.pl line 2016.

This patch fix these warning, an similar commit was done in linux kernel
commit: 4e5d56bdf892e18832a6540b63ebf709966bce2a ("checkpatch: fix left
brace warning").

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 scripts/checkpatch.pl | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 8d96434..f3fd339 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2013,8 +2013,8 @@ sub process {
 
 # function brace can't be on same line, except for #defines of do while,
 # or if closed on same line
-		if (($line=~/$Type\s*$Ident\(.*\).*\s{/) and
-		    !($line=~/\#\s*define.*do\s{/) and !($line=~/}/)) {
+		if (($line=~/$Type\s*$Ident\(.*\).*\s\{/) and
+		    !($line=~/\#\s*define.*do\s\{/) and !($line=~/}/)) {
 			ERROR("open brace '{' following function declarations go on the next line\n" . $herecurr);
 		}
 
@@ -2264,8 +2264,8 @@ sub process {
 ## 		}
 
 #need space before brace following if, while, etc
-		if (($line =~ /\(.*\){/ && $line !~ /\($Type\){/) ||
-		    $line =~ /do{/) {
+		if (($line =~ /\(.*\)\{/ && $line !~ /\($Type\){/) ||
+		    $line =~ /do\{/) {
 			ERROR("space required before the open brace '{'\n" . $herecurr);
 		}
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
