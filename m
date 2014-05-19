Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FK-Px
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:39 +0200
Message-Id: <1400533184-668-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] complete: Fix completion after options
To: barebox@lists.infradead.org

the command specific complete callbacks only work when no
option is typed already. For example "devinfo <tab><tab>"
correctly completes the devices, but "devinfo -x <tab><tab>"
does nothing. That is because the options are passed to
the input string of the completion handlers. Skip the option
string by finding the last space in the input string. This
is not perfect since "devinfo -f<tab><tab>" still does not
work, but it's better than what we have now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/complete.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/complete.c b/common/complete.c
index 9206ef0..368321f 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -277,11 +277,16 @@ static char* cmd_complete_lookup(struct string_list *sl, char *instr)
 	int len;
 	int ret = COMPLETE_END;
 	char *res = NULL;
+	char *t;
 
 	for_each_command(cmdtp) {
 		len = strlen(cmdtp->name);
 		if (!strncmp(instr, cmdtp->name, len) && instr[len] == ' ') {
 			instr += len + 1;
+			t = strrchr(instr, ' ');
+			if (t)
+				instr = t + 1;
+
 			if (cmdtp->complete) {
 				ret = cmdtp->complete(sl, instr);
 				res = instr;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
