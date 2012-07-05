Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmgHG-0007g1-0p
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:15:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 09:14:57 +0200
Message-Id: <1341472497-2356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mem md: bail out without arguments
To: barebox@lists.infradead.org
Cc: rsc@pengutronix.de

Without arguments the 'md' command defaults to show address 0 which
likely results in a NULL pointer exception, so only three keystrokes
are necessary to crash barebox. Show usage instead if 'md' is invoked
without arguments, so that it at least requires an address to be given
to crash barebox. This increases the stability of barebox by 66%. Hurray!

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/mem.c b/commands/mem.c
index c1a3a54..5322def 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -180,6 +180,8 @@ static int do_mem_md(int argc, char *argv[])
 		}
 		if (size == ~0)
 			size = 0x100;
+	} else {
+		return COMMAND_ERROR_USAGE;
 	}
 
 	fd = open_and_lseek(filename, mode | O_RDONLY, start);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
