Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QOPrg-0001ct-7s
	for barebox@lists.infradead.org; Mon, 23 May 2011 07:47:49 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Mon, 23 May 2011 09:47:40 +0200
MIME-Version: 1.0
Message-ID: <201105230947.40484.tim.sander@hbm.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Re: [PATCH] fix genenv when using svn based enviroment
	directory
In-Reply-To: <20110523072159.GE20715@pengutronix.de>
To: barebox@lists.infradead.org

Hi Sascha
> >  $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
> > =

> > -rm -r $tempdir
> > +rm -rf $tempdir
> =

> Is this second change intended? If yes, why?
If the barebox environment managed with subversion there are some read only =

directories within this dir, which make rm wait for a confirmation, which i=
s =

more annoying when building with ptxdist.

But i made this change before the first one, i just checked that the -f opt=
ion =

is not needed anymore since the environment clobbering .svn directories hav=
e =

been removed earlier.

So the more minimalistic patch version is attached below.
Best Regards
Tim


Signed-of-by: Tim Sander <tim.sander@hbm.com>
---
 scripts/genenv |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/scripts/genenv b/scripts/genenv
index de8b4f1..65c074e 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -13,6 +13,8 @@ tempdir=3D$(mktemp -d)
 for i in $*; do
        cp -r $i/* $tempdir
 done
+find $tempdir -name .svn |xargs rm -r
+
 $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
 =

 rm -r $tempdir
-- =

1.7.0.4

PS: Forgot the list in reply, this is the manual forward.

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germ=
any | www.hbm.com =


Registered as GmbH (German limited liability corporation) in the commercial=
 register at the local court of Darmstadt, HRB 1147  =

Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the =
board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister d=
es Amtsgerichts Darmstadt unter HRB 1147 =

Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst |=
 Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for th=
e addressee. If you are not the intended recipient, please let me know and =
delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich f=
=FCr den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger =
sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
