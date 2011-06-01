Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QRmmM-0005Nt-Vs
	for barebox@lists.infradead.org; Wed, 01 Jun 2011 14:52:15 +0000
Received: by wyb28 with SMTP id 28so5457974wyb.36
	for <barebox@lists.infradead.org>; Wed, 01 Jun 2011 07:52:12 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed,  1 Jun 2011 16:52:07 +0200
Message-Id: <1306939927-23675-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] scripts/getenv: delete backup files from enviroment directory
To: barebox@lists.infradead.org

Also add the '--no-run-if-empty' option to xargs to avoid an
error message when no files/folders were found.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 scripts/genenv |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/scripts/genenv b/scripts/genenv
index 65c074e..7b279c8 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -13,7 +13,8 @@ tempdir=$(mktemp -d)
 for i in $*; do
 	cp -r $i/* $tempdir
 done
-find $tempdir -name .svn |xargs rm -r
+
+find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
 
 $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
