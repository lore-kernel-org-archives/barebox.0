Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwyD6-0003NP-9Z
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 14:48:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0007pF-TU
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0003Fl-Qe
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  8 Mar 2011 15:48:18 +0100
Message-Id: <1299595704-11733-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/10] x86 Generic platform: Fix some typos
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/boards/x86_generic/generic_pc.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index b9c31aa..e156e0d 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -58,7 +58,7 @@ extern uint16_t pers_env_size;
 extern uint8_t pers_env_drive;
 
 /**
- * Persistant environment "not used" marker.
+ * Persistent environment "not used" marker.
  * Note: Must be in accordance to the value the tool "setup_mbr" writes.
  */
 #define PATCH_AREA_PERS_SIZE_UNUSED 0x000
@@ -80,7 +80,7 @@ static int devices_init(void)
 				DEVFS_PARTITION_FIXED, "env0");
 		printf("Partition: %d\n", rc);
 	} else
-		printf("No persistant storage defined\n");
+		printf("No persistent storage defined\n");
 
         return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
