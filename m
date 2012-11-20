Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Taumh-00071j-7E
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 20:51:08 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87zk2xuuds.fsf@free.fr> <87vcdlurvc.fsf@free.fr>
 <20121104225614.GU1641@pengutronix.de> <87lidwdmzh.fsf@free.fr>
Date: Tue, 20 Nov 2012 21:50:56 +0100
In-Reply-To: <87lidwdmzh.fsf@free.fr> (Robert Jarzmik's message of "Tue, 20
 Nov 2012 21:43:14 +0100")
Message-ID: <87haokdmmn.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Ramfs and NULL pointer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> diff --git a/commands/splash.c b/commands/splash.c
> index 65dd530..b0830fb 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -49,6 +49,8 @@ static int do_splash(int argc, char *argv[])
>  	}
>  	image_file = argv[optind];
>  
> +	memset(&sc, 0, sizeof(sc));
> +	memset(&s, 0, sizeof(s));
This last memset is misplaced actually, it should be far upper in the funciton.
So the correct patch would be :

----8>----
From ea8d7e02533bea9908d8a56ef6b59483f65a3530 Mon Sep 17 00:00:00 2001
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
index 65dd530..370c3a2 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -19,6 +19,7 @@ static int do_splash(int argc, char *argv[])
 	u32 bg_color = 0x00000000;
 	bool do_bg = false;
 
+	memset(&s, 0, sizeof(s));
 	s.x = -1;
 	s.y = -1;
 	s.width = -1;
@@ -49,6 +50,7 @@ static int do_splash(int argc, char *argv[])
 	}
 	image_file = argv[optind];
 
+	memset(&sc, 0, sizeof(sc));
 	fd = fb_open(fbdev, &sc, offscreen);
 	if (fd < 0) {
 		perror("fd_open");
-- 
1.7.10.4

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
