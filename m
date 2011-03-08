Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwyD6-0003NV-9Q
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 14:48:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD4-0007pN-1k
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:26 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0003G3-U1
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  8 Mar 2011 15:48:24 +0100
Message-Id: <1299595704-11733-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
References: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/10] LINUX16: Fix warning
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/linux16.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/commands/linux16.c b/commands/linux16.c
index 0cdb673..8a1b5fe 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -260,7 +260,8 @@ static int do_linux16(struct command *cmdtp, int argc, char *argv[])
 	if (setup_sects >= 15) {
 		void *src = lh;
 		if (lh->kernel_version != 0)
-			printf("Kernel version: '%s'\n", src + lh->kernel_version + DISK_SECTOR_SIZE);
+			printf("Kernel version: '%s'\n",
+			       (char *)src + lh->kernel_version + DISK_SECTOR_SIZE);
 	}
 
 	/*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
