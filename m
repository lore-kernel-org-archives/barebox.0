Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUEWZ-0008Gm-IT
	for barebox@lists.infradead.org; Thu, 01 Jul 2010 07:49:32 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu,  1 Jul 2010 10:49:02 +0300
Message-Id: <c35d1dea198c8447bd4eedd83bb0a8f5d7236365.1277970465.git.baruch@tkos.co.il>
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
Subject: [PATCH] setlocalversion: detect unannotated tags
To: barebox@lists.infradead.org

'git describe' shows:

v2009.12.0-178-gdc882c3

I.e. git doesn't find the more recent v2010.06.0 unannotated tag. The top-level
Makefile then takes the '-178-gdc882c3' part and attaches it to '2010.06.0'
(the current version string), making the output of the 'version' command:

barebox 2010.06.0-00178-gcc827a1 (Jul  1 2010 - 09:02:45)

which is plain wrong. Add the --tags option to make 'git describe' look for
unannotated tags as well.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 scripts/setlocalversion |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/setlocalversion b/scripts/setlocalversion
index 83b7512..4f9dafe 100755
--- a/scripts/setlocalversion
+++ b/scripts/setlocalversion
@@ -12,7 +12,7 @@ cd "${1:-.}" || usage
 if head=`git rev-parse --verify HEAD 2>/dev/null`; then
 	# Do we have an untagged version?
 	if git name-rev --tags HEAD | grep -E '^HEAD[[:space:]]+(.*~[0-9]*|undefined)$' > /dev/null; then
-		if tag=`git describe 2>/dev/null`; then
+		if tag=`git describe --tags 2>/dev/null`; then
 			echo $tag | awk -F- '{printf("-%05d-%s", $(NF-1),$(NF))}'
 		fi
 	fi
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
