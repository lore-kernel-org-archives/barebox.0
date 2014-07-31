Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCnlh-0002aV-C2
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 10:39:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XCnlJ-0001QN-4t
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <jbe@pengutronix.de>)
 id 1XCnlJ-0005GR-3X
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 31 Jul 2014 12:39:01 +0200
Message-Id: <1406803143-27630-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
References: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/4] envfs: provide an intentional way to ignore an existing
 external environment
To: barebox@lists.infradead.org

Add a simple flag to envfs to be able to mark an external environment as
"not to be used".
This change should not affect existing systems, because the current envfs
implementation ensures the 'flags' member in the envfs master block is always
zeroed.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/environment.c | 13 +++++++++++++
 include/envfs.h      |  1 +
 2 files changed, 14 insertions(+)

diff --git a/common/environment.c b/common/environment.c
index 2d1edf8..613342c 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -447,6 +447,19 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	if (ret)
 		goto out;
 
+	if (super.flags & ENVFS_FLAGS_FORCE_BUILT_IN) {
+#ifdef __BAREBOX__
+		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
+			ret = defaultenv_load("/env", 0);
+			if (ret)
+				perror("envfs: forced built-in default environment");
+			else
+				printf("envfs: force built-in default environment\n");
+			goto out;
+		}
+#endif
+	}
+
 	buf = xmalloc(size);
 
 	rbuf = buf;
diff --git a/include/envfs.h b/include/envfs.h
index 9b86398..beae38a 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -43,6 +43,7 @@ struct envfs_super {
 	uint8_t minor;			/* minor */
 	uint16_t future;		/* reserved for future use */
 	uint32_t flags;			/* feature flags */
+#define ENVFS_FLAGS_FORCE_BUILT_IN	(1 << 0)
 	uint32_t sb_crc;		/* crc for the superblock */
 };
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
