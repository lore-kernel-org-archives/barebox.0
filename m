Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7nC-0006cF-3y
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:28 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001hm-Dx
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001uW-9h
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:16 +0100
Message-Id: <1294389316-6569-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
References: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
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
index ba8db7c..6616dfd 100644
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
