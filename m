Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsPHh-0000nt-Qz
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 07:09:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Oct 2016 09:09:08 +0200
Message-Id: <20161007070908.14855-2-s.hauer@pengutronix.de>
In-Reply-To: <20161007070908.14855-1-s.hauer@pengutronix.de>
References: <20161007070908.14855-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] completion: Fix completion for devices with a dot in the
 name
To: Barebox List <barebox@lists.infradead.org>

Devices can have a dot in the name, so do not expect the full
device name before the first dot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/complete.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index aee21ea..2dab7d1 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -279,7 +279,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	struct env_context *c;
 	char *instr_param;
 	int len;
-	char end = '=';
+	char end = '=', *pos, *dot;
 	char *begin = "";
 
 	if (!instr)
@@ -290,7 +290,6 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 		end = ' ';
 	}
 
-	instr_param = strchr(instr, '.');
 	len = strlen(instr);
 
 	c = get_current_context();
@@ -312,20 +311,21 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 		c = c->parent;
 	}
 
-	if (instr_param) {
+	pos = instr;
+	while ((dot = strchr(pos, '.'))) {
 		char *devname;
 
-		len = (instr_param - instr);
-
-		devname = xstrndup(instr, len);
+		devname = xstrndup(instr, dot - instr);
 
 		instr_param++;
 
 		dev = get_device_by_name(devname);
 		free(devname);
+
 		if (dev)
-			device_param_complete(dev, sl, instr_param, eval);
-		return 0;
+			device_param_complete(dev, sl, dot + 1, eval);
+
+		pos = dot + 1;
 	}
 
 	len = strlen(instr);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
