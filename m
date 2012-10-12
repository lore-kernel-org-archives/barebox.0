Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMjAJ-00057O-0p
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 17:36:52 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so1890259wey.36
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 10:36:47 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Fri, 12 Oct 2012 19:38:12 +0200
Message-Id: <1350063493-3782-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] sandbox: move add_image for env in second getopt
To: barebox@lists.infradead.org

Function add_image needs a allocated malloc space.
This is only available in the second getopt loop.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/os/common.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 0dedfe1..8c7679a 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -311,11 +311,6 @@ int main(int argc, char *argv[])
 		case 'i':
 			break;
 		case 'e':
-			sprintf(str, "env%d", envno);
-			ret = add_image(optarg, str);
-			if (ret)
-				exit(1);
-			envno++;
 			break;
 		case 'O':
 			fd = open(optarg, O_WRONLY);
@@ -376,6 +371,13 @@ int main(int argc, char *argv[])
 				exit(1);
 			fdno++;
 			break;
+		case 'e':
+			sprintf(str, "env%d", envno);
+			ret = add_image(optarg, str);
+			if (ret)
+				exit(1);
+			envno++;
+			break;
 		default:
 			break;
 		}
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
