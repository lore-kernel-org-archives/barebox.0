Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O3DTZ-0007Zk-WF
	for barebox@lists.infradead.org; Sat, 17 Apr 2010 19:14:47 +0000
Date: Sat, 17 Apr 2010 21:14:43 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100417191443.GB31753@pengutronix.de>
References: <1271232366.10496.16.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271232366.10496.16.camel@lws-weitzel>
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
Subject: Re: [PATCH] tftp return value
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hello Jan,

On Wed, Apr 14, 2010 at 10:06:06AM +0200, Jan Weitzel wrote:
> tftp returns transfered bytes on success and 1 in error case. Bad for
> scripting. Change to 0 on success
> =

> Signed-off-by: Jan Weitzel <J.Weitzel@phytec.de>
> ---
> Index: barebox-2010.04.0/net/tftp.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- barebox-2010.04.0.orig/net/tftp.c	2010-04-14 09:41:37.489858785
> +0200
> +++ barebox-2010.04.0/net/tftp.c	2010-04-14 09:43:33.899445811 +0200
> @@ -281,8 +281,7 @@
>  =

>  	TftpStart(remotefile);
>  =

> -	rcode =3D NetLoop();
> -	if (rcode < 0) {
> +	if (NetLoop() < 0) {
>  		rcode =3D 1;
>  		goto out;
>  	}
Some time ago I created a patch that had the same effect.  (I changed
the return code of NetLoop() instead of its interpretation, but that
shouldn't matter much---I didn't (re)verify it though.)

But I had an additional hunk to let tftp return 1 if initializing the netwo=
rk failed.

Below is my complete patch.

Best regards
Uwe

---------------------->8-----------------------
From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Date: Fri, 26 Mar 2010 12:55:37 +0100
Subject: net/tftp: let tftp return 0 on success and 1 on failure

Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
---
 net/net.c  |    2 +-
 net/tftp.c |    4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 4554d49..e73ee31 100644
--- a/net/net.c
+++ b/net/net.c
@@ -316,7 +316,7 @@ int NetLoop(void)
 				setenv("filesize", buf);
 			}
 			eth_halt();
-			return NetBootFileXferSize;
+			return 0;
 =

 		case NETLOOP_FAIL:
 			eth_halt();
diff --git a/net/tftp.c b/net/tftp.c
index 26f0c43..bcb3793 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -276,8 +276,10 @@ static int do_tftpb(struct command *cmdtp, int argc, c=
har *argv[])
 		return 1;
 	}
 =

-	if (NetLoopInit(TFTP) < 0)
+	if (NetLoopInit(TFTP) < 0) {
+		rcode =3D 1;
 		goto out;
+	}
 =

 	TftpStart(remotefile);
 =

-- =

1.7.0



-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
