Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uY-5E
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-8r
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:56 +0100
Message-Id: <1415094176-26435-10-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 10/10] efi: mount efivarfs by default if enabled
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/startup.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index ceb597b0ebba..14d669a4ff42 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -50,6 +50,12 @@ static int mount_root(void)
 	mount("none", "ramfs", "/", NULL);
 	mkdir("/dev", 0);
 	mount("none", "devfs", "/dev", NULL);
+
+	if (IS_ENABLED(CONFIG_FS_EFIVARFS)) {
+		mkdir("/efivars", 0);
+		mount("none", "efivarfs", "/efivars", NULL);
+	}
+
 	return 0;
 }
 fs_initcall(mount_root);
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
