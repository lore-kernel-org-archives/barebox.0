Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025n-KB
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:10:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:41 +0200
Message-Id: <1301922585-8144-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] memcpy command: do not set read/write size
To: barebox@lists.infradead.org

The memcpy command can be much faster if we do not copy in byte
mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 73bf915..8df5f0a 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -418,7 +418,7 @@ static int do_mem_cp(struct command *cmdtp, int argc, char *argv[])
 	char *sourcefile = DEVMEM;
 	char *destfile = DEVMEM;
 	int sourcefd, destfd;
-	int mode = O_RWSIZE_1;
+	int mode = 0;
 	struct stat statbuf;
 	int ret = 0;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
