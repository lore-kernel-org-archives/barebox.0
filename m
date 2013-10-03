Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDt-0002DH-DS
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:25 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 105AF10550D1
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:21:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:56 +0200
Message-Id: <1380784920-30890-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] loadxy: use console_open/close
To: barebox@lists.infradead.org

so we can use non startup console

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadxy.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index b90d2fd..7cefba4 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -99,6 +99,13 @@ static int do_loady(int argc, char *argv[])
 		return -ENODEV;
 	}
 
+	rcode = console_open(cdev);
+	if (rcode) {
+		printf("%s: can not open console %s\n",
+		       argv[0], cname ? cname : "default");
+		return rcode;
+	}
+
 	current_baudrate = console_change_speed(cdev, load_baudrate);
 	printf("## Ready for binary (ymodem) download at %d bps...\n",
 	       load_baudrate ? load_baudrate : current_baudrate);
@@ -115,6 +122,8 @@ static int do_loady(int argc, char *argv[])
 
 	console_change_speed(cdev, current_baudrate);
 
+	console_close(cdev);
+
 	return rcode;
 }
 
@@ -167,6 +176,13 @@ static int do_loadx(int argc, char *argv[])
 		return -ENODEV;
 	}
 
+	rcode = console_open(cdev);
+	if (rcode) {
+		printf("%s: can not open console %s\n",
+		       argv[0], cname ? cname : "default");
+		return rcode;
+	}
+
 	/* Load Defaults */
 	if (!output_file)
 		output_file = DEF_FILE;
@@ -175,7 +191,8 @@ static int do_loadx(int argc, char *argv[])
 	ofd = open(output_file, open_mode);
 	if (ofd < 0) {
 		perror(argv[0]);
-		return 3;
+		rcode = 3;
+		goto err;
 	}
 	/* Seek to the right offset */
 	if (offset) {
@@ -184,7 +201,8 @@ static int do_loadx(int argc, char *argv[])
 			close(ofd);
 			ofd = 0;
 			perror(argv[0]);
-			return 4;
+			rcode = 4;
+			goto err;
 		}
 	}
 
@@ -199,6 +217,9 @@ static int do_loadx(int argc, char *argv[])
 	}
 	console_change_speed(cdev, current_baudrate);
 
+err:
+	console_close(cdev);
+
 	return rcode;
 }
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
