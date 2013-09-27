Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEy-0000iz-Ge
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:29 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 412F3DC2078
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:15 +0200
Message-Id: <1380266058-18501-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] loadbxy: use console_open/close
To: barebox@lists.infradead.org

so we can use non startup console

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadxy.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index fe1b5f5..33f923d 100644
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
