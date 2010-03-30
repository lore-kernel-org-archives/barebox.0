Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S2-Kw
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:48 +0200
Message-Id: <1269947215-18214-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] go command: shutdown barebox before calling an
	application
To: barebox@lists.infradead.org

Also, do not allow to continue barebox after returning from the
application since we don't know anything about the state we are in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/go.c |   19 ++++++++++++-------
 1 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index 588d6fc..0262940 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -35,6 +35,7 @@ static int do_go(struct command *cmdtp, int argc, char *argv[])
 	void	*addr;
 	int     rcode = 1;
 	int	fd = -1;
+	int	(*func)(int argc, char *argv[]);
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -54,17 +55,21 @@ static int do_go(struct command *cmdtp, int argc, char *argv[])
 	} else
 		addr = (void *)simple_strtoul(argv[1], NULL, 16);
 
-	printf ("## Starting application at 0x%08lX ...\n", addr);
+	printf("## Starting application at 0x%08lX ...\n", addr);
 
 	console_flush();
 
-#ifdef ARCH_HAS_EXECUTE
-	rcode = arch_execute(addr, argc, &argv[1]);
-#else
-	rcode = ((ulong (*)(int, char *[]))addr) (--argc, &argv[1]);
-#endif
+	func = addr;
 
-	printf ("## Application terminated, rcode = 0x%lX\n", rcode);
+	shutdown_barebox();
+	func(argc - 1, &argv[1]);
+
+	/*
+	 * The application returned. Since we have shutdown barebox and
+	 * we know nothing about the state of the cpu/memory we can't
+	 * do anything here.
+	 */
+	while (1);
 out:
 	if (fd > 0)
 		close(fd);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
