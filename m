Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRZO-00088p-EK
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:30:03 +0200
Message-Id: <1380263404-23104-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
References: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] bootm: Replace getenv_loadaddr with getenv_ul
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index a4004df..ae6b5f3 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -109,8 +109,8 @@ static int do_bootm(int argc, char *argv[])
 
 	oftree = getenv("global.bootm.oftree");
 	os_file = getenv("global.bootm.image");
-	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
-	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
+	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
+	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
 		initrd_file = getenv("global.bootm.initrd");
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
