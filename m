Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ2o-0004Hx-2B
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:29:55 +0000
Received: by wibhq4 with SMTP id hq4so2297563wib.0
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:29:52 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:30:45 +0200
Message-Id: <1347341445-2476-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
References: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/3] sandbox: add missed case statement
To: barebox@lists.infradead.org

Add missed case statement to ignore 'i' parameter
in first getopt loop.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/os/common.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index e296574..d2aea38 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -306,6 +306,8 @@ int main(int argc, char *argv[])
 		case 'm':
 			malloc_size = strtoul(optarg, NULL, 0);
 			break;
+		case 'i':
+			break;
 		case 'e':
 			sprintf(str, "env%d", envno);
 			ret = add_image(optarg, str);
@@ -343,7 +345,11 @@ int main(int argc, char *argv[])
 	}
 	mem_malloc_init(ram, ram + malloc_size - 1);
 
-	/* reset getopt */
+	/*
+	 * Reset getopt.
+	 * We need to run a second getopt to count -i parameters.
+	 * This is for /dev/fd# devices.
+	 */
 	optind = 1;
 
 	while (1) {
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
