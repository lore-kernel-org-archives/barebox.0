Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7n9-0006cA-2R
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:25 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001he-9o
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001uH-6z
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:11 +0100
Message-Id: <1294389316-6569-6-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/10] x86 Generic platform: Fix disk drive name
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/boards/x86_generic/generic_pc.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index e156e0d..bfa94b9 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -74,7 +74,7 @@ static int devices_init(void)
 	register_device(&bios_disk_dev);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
-		rc = devfs_add_partition("disk0",	/* FIXME */
+		rc = devfs_add_partition("biosdisk0",
 				pers_env_storage * 512,
 				(unsigned)pers_env_size * 512,
 				DEVFS_PARTITION_FIXED, "env0");
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
