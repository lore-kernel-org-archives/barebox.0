Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaufG-0006TP-QT
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 20:43:28 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87zk2xuuds.fsf@free.fr> <87vcdlurvc.fsf@free.fr>
 <20121104225614.GU1641@pengutronix.de>
Date: Tue, 20 Nov 2012 21:43:14 +0100
In-Reply-To: <20121104225614.GU1641@pengutronix.de> (Sascha Hauer's message of
 "Sun, 4 Nov 2012 23:56:14 +0100")
Message-ID: <87lidwdmzh.fsf@free.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Ramfs and NULL pointer
To: Sascha Hauer <s.hauer@pengutronix.de>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--=-=-=

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Sun, Nov 04, 2012 at 07:48:07PM +0100, Robert Jarzmik wrote:
>> Robert Jarzmik <robert.jarzmik@free.fr> writes:
>> 
>> > Hi there,
>> >
>> > Lately, I see null pointer dereferences in barebox.
>> > I traced the culprit to ramfs ...
>> 
>> Ah and if I take back v2012.09.0, the problem disappears. 
>> I'm not fully in the mood for a bisection of 544 commits ... any idea ?
>
> sha@dude:~/dude/barebox/barebox git lg v2012.09.0..origin/master fs/ramfs.c
> 77322aa Treewide: remove address of the Free Software Foundation
> ad6c28a ramfs: add symlink and readlink support
>
> Both look harmless, so I don't think that the culprit is ramfs itself.
>
> Sorry, no idea. The good news is that due to my compile tests all 544
> commits at least should compile ;)
>
> Do you have some specific command sequence to provoke this?
One part of the problem is a memory corruption from recent commits on
splash/bmp.

Please have a look at the attached patch. I joined Jean-Christophe, as he is the
original author AFAICS, and he might think of another regression along this
patchset which could lighten my debugging sessions.

My board still doesn't boot correctly, so there's probably another regression.

Cheers.

--
Robert


--=-=-=
Content-Type: text/x-diff
Content-Disposition: inline; filename=0001-splash-fix-splash-breakage.patch

From bc2f570bf4bd20c7ce2ead6c35d7cd7274ed1594 Mon Sep 17 00:00:00 2001
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 20 Nov 2012 21:33:49 +0100
Subject: [PATCH] splash: fix splash breakage

Commit 3fa8d74a introduced structures screen and surface.
Unfortunately, these structures are allocated on the stack,
and not initialized.

As a consequence, sc->offscreen might contain a random
value, which is used later for memcpy operations, corrupting
memory.

Fix it by initializing the structures.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 commands/splash.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/splash.c b/commands/splash.c
index 65dd530..b0830fb 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -49,6 +49,8 @@ static int do_splash(int argc, char *argv[])
 	}
 	image_file = argv[optind];
 
+	memset(&sc, 0, sizeof(sc));
+	memset(&s, 0, sizeof(s));
 	fd = fb_open(fbdev, &sc, offscreen);
 	if (fd < 0) {
 		perror("fd_open");
-- 
1.7.10.4


--=-=-=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--=-=-=--
