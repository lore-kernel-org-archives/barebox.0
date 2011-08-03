Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVkI-00052E-Q8
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:20:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Aug 2011 09:19:58 +0200
Message-Id: <1312355999-19496-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312355999-19496-1-git-send-email-s.hauer@pengutronix.de>
References: <1312355999-19496-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] memcpy command: allow to interrupt
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index a5eea36..88af55c 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -483,6 +483,9 @@ static int do_mem_cp(struct command *cmdtp, int argc, char *argv[])
 		}
 
 		count -= r;
+
+		if (ctrlc())
+			goto out;
 	}
 
 	if (count) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
