Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFNEN-0000W7-F2
 for barebox@lists.infradead.org; Sun, 25 Jan 2015 13:28:00 +0000
Received: by mail-lb0-f177.google.com with SMTP id p9so4038816lbv.8
 for <barebox@lists.infradead.org>; Sun, 25 Jan 2015 05:27:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 25 Jan 2015 16:22:13 +0300
Message-Id: <1422192133-17906-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/splash: fix '-y' option handling
To: barebox@lists.infradead.org

The '-y' and '-o' options are independent,
so just add missing 'break'.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/splash.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/splash.c b/commands/splash.c
index 9bd84fb..077c0e4 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -41,6 +41,7 @@ static int do_splash(int argc, char *argv[])
 			break;
 		case 'y':
 			s.y = simple_strtoul(optarg, NULL, 0);
+			break;
 		case 'o':
 			offscreen = 1;
 		}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
