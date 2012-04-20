Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXe-0004YK-2c
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0006Va-8e
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0003sU-5h
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:15 +0200
Message-Id: <1334927177-13912-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/6] netX: add more common permissions
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 scripts/gen_netx_image.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/gen_netx_image.c b/scripts/gen_netx_image.c
index 5c2207c..18e10bc 100644
--- a/scripts/gen_netx_image.c
+++ b/scripts/gen_netx_image.c
@@ -218,7 +218,8 @@ int main(int argc, char *argv[])
 		checksum += *ptr++;
 	nb->boot_checksum = -1 * checksum;
 
-	fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
+	fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR |
+			S_IRGRP | S_IWGRP | S_IROTH);
 	if(fd < 0) {
 		perror("open");
 		exit(1);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
