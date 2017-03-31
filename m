Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbd-0001ei-13
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:37 +0200
Message-Id: <20170331070346.26878-34-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/42] commands: state: allow loading state with -l
To: Barebox List <barebox@lists.infradead.org>

At least for testing purposes it's useful to be able to
manually load a state. Add -l option for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/state.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/commands/state.c b/commands/state.c
index 4b51759e3e..aded6e71e2 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -21,20 +21,23 @@ static int do_state(int argc, char *argv[])
 {
 	int opt, ret = 0;
 	struct state *state = NULL;
-	int do_save = 0;
+	int do_save = 0, do_load = 0;
 	const char *statename = "state";
 
-	while ((opt = getopt(argc, argv, "s")) > 0) {
+	while ((opt = getopt(argc, argv, "sl")) > 0) {
 		switch (opt) {
 		case 's':
 			do_save = 1;
 			break;
+		case 'l':
+			do_load = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	if (!do_save) {
+	if (!do_save && !do_load) {
 		state_info();
 		return 0;
 	}
@@ -48,7 +51,9 @@ static int do_state(int argc, char *argv[])
 		return -ENOENT;
 	}
 
-	if (do_save)
+	if (do_load)
+		ret = state_load(state);
+	else if (do_save)
 		ret = state_save(state);
 
 	return ret;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
