Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007wW-JF
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:32 +0200
Message-Id: <1276508921-3264-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] bootu: Allow passing in devices as parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 75c6519..a38c6bf 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -332,15 +332,21 @@ BAREBOX_CMD_END
 #ifdef CONFIG_CMD_BOOTU
 static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 {
-	void (*theKernel)(int zero, int arch, void *params);
+	void (*theKernel)(int zero, int arch, void *params) = NULL;
 	const char *commandline = getenv("bootargs");
+	int fd;
 
 	if (argc != 2) {
 		barebox_cmd_usage(cmdtp);
 		return 1;
 	}
 
-	theKernel = (void *)simple_strtoul(argv[1], NULL, 0);
+	fd = open(argv[1], O_RDONLY);
+	if (fd > 0)
+		theKernel = (void *)memmap(fd, PROT_READ);
+
+	if (!theKernel)
+		theKernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
 	setup_start_tag();
 	setup_memory_tags();
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
