Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGLPJ-0007T3-Dg
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 08:24:39 +0000
Date: Thu, 1 Jun 2017 10:24:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170601082415.zrkc6g75rpmjfjeo@pengutronix.de>
References: <cover.1496247033.git.aleksander@aleksander.es>
 <7499fda2a3c12627c05a66d1a6a9111646beb695.1496247033.git.aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7499fda2a3c12627c05a66d1a6a9111646beb695.1496247033.git.aleksander@aleksander.es>
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
Subject: Re: [PATCH 2/2] sandbox: --stdin and --stdout allow max one
 bidirectional console
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

Hi Aleksander,

On Wed, May 31, 2017 at 06:12:41PM +0200, Aleksander Morgado wrote:
> Allow up to one bidirectional FIFO/file based console in addition to
> the default stdin/stdout console that is always registered.
> 
> We avoid opening the FIFO files while parsing the options because the
> whole logic may block if e.g. trying to open the --stdout FIFO and
> there is no reader in the other end. So instead, we store the --stdout
> and --stdin file paths given, and we open both sequentially once all
> the options have been parsed. This also allows us to validate that at
> most a single pair of --stdin and --stdout paths has been given.
> e.g.:
>     term1 $ mkfifo /tmp/bbstdin
>     term1 $ mkfifo /tmp/bbstdout
>     term1 $ ./barebox -I /tmp/bbstdin -O /tmp/bbstdout
>        (blocks until a reader is available in the stdout FIFO)
> 
>     term2 $ cat /tmp/bbstdout & cat > /tmp/bbstdin
>        (starts reader and writer, which triggers barebox to continue)
> 
> If only one console is activated (CONFIG_CONSOLE_ACTIVATE_ALL=n), the
> default stdin/stdout console will be preferred instead of the new
> FIFO/file based, which would need to be activated explicitly later on.
> e.g.:
>     barebox@barebox sandbox:/ cs1.active=ioe
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  arch/sandbox/os/common.c | 48 +++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 37 insertions(+), 11 deletions(-)

The first patch is ok and I applied it. Before this patch though I'd like
to have the attached patch. It merely fixes what we already have: The -I
and -O options got broken over time, we ended up using the barebox
malloc pool before it was initialized.

So next we have to create a patch for what you want to do: Have an
option to create a bidirectional console in barebox. Can we have a
--file-console option that takes two path arguments instead of one, with
some separator in between?

Sascha

------------------------8<-----------------------------

From 8e5a534df784ab91ffde55ed5038e66e8dbb36c8 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 1 Jun 2017 10:08:31 +0200
Subject: [PATCH] sandbox: Fix registering file/fifo consoles

barebox_register_console() uses xzalloc which requires the malloc pool
to be initialized, so call it during the second option parsing when
this is already done.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/os/common.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 192917ac22..8cf0873130 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -359,24 +359,6 @@ int main(int argc, char *argv[])
 				exit(1);
 			}
 			break;
-		case 'O':
-			fd = open(optarg, O_WRONLY);
-			if (fd < 0) {
-				perror("open");
-				exit(1);
-			}
-
-			barebox_register_console(-1, fd);
-			break;
-		case 'I':
-			fd = open(optarg, O_RDWR);
-			if (fd < 0) {
-				perror("open");
-				exit(1);
-			}
-
-			barebox_register_console(fd, -1);
-			break;
 		case 'x':
 			sdl_xres = strtoul(optarg, NULL, 0);
 			break;
@@ -384,7 +366,7 @@ int main(int argc, char *argv[])
 			sdl_yres = strtoul(optarg, NULL, 0);
 			break;
 		default:
-			exit(1);
+			break;
 		}
 	}
 
@@ -421,6 +403,24 @@ int main(int argc, char *argv[])
 			if (ret)
 				exit(1);
 			break;
+		case 'O':
+			fd = open(optarg, O_WRONLY);
+			if (fd < 0) {
+				perror("open");
+				exit(1);
+			}
+
+			barebox_register_console(-1, fd);
+			break;
+		case 'I':
+			fd = open(optarg, O_RDWR);
+			if (fd < 0) {
+				perror("open");
+				exit(1);
+			}
+
+			barebox_register_console(fd, -1);
+			break;
 		default:
 			break;
 		}
-- 
2.11.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
