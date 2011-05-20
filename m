Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QNPK5-0006Si-52
	for barebox@lists.infradead.org; Fri, 20 May 2011 13:00:57 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Fri, 20 May 2011 15:00:50 +0200
MIME-Version: 1.0
Message-ID: <201105201500.50593.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix genenv when using svn based enviroment directory
To: barebox@lists.infradead.org

Hi

When setting the default env of barebox to a svn directory the build stops
with questions on removal and the barebox env is polluted with svn files.

The patch below fixes that.

Tested with 2011.03.1. Newer versions don't boot anymore on my pcm043 :-(.

Signed-off-by: Tim Sander <tim.sander@hbm.com>

---
 scripts/genenv |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/scripts/genenv b/scripts/genenv
index de8b4f1..c6bcd4b 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -13,7 +13,9 @@ tempdir=$(mktemp -d)
 for i in $*; do
        cp -r $i/* $tempdir
 done
+find $tempdir -name .svn |xargs rm -r
+
 $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
 
-rm -r $tempdir
+rm -rf $tempdir
 
-- 
1.7.0.4


Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 

Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
