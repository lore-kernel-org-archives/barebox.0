Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBI-0008Mi-MU
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:24 +0200
Message-Id: <1376467885-29489-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
References: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] of_property command: allow to set phandles
To: barebox@lists.infradead.org

With this properties with phandles can be created. A phandle
is created when cells are parsed (in '<' '>') and a cell does
not begin with a digit.
The phandles can be specified either by alias or by full path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_property.c | 34 ++++++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index a544f71..4518c72 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -55,7 +55,36 @@ static int of_parse_prop_cells(char * const *newval, int count, char *data, int
 		}
 
 		cp = newp;
-		tmp = simple_strtoul(cp, &newp, 0);
+
+		if (isdigit(*cp)) {
+			tmp = simple_strtoul(cp, &newp, 0);
+		} else {
+			struct device_node *n;
+			char *str;
+			int len = 0;
+
+			str = cp;
+			while (*str && *str != '>' && *str != ' ') {
+				str++;
+				len++;
+			}
+
+			str = xzalloc(len + 1);
+			strncpy(str, cp, len);
+
+			n = of_find_node_by_path_or_alias(NULL, str);
+			if (!n)
+				printf("Cannot find node '%s'\n", str);
+
+			free(str);
+
+			if (!n)
+				return -EINVAL;
+
+			tmp = of_node_create_phandle(n);
+			newp += len;
+		}
+
 		*(__be32 *)data = __cpu_to_be32(tmp);
 		data  += 4;
 		*len += 4;
@@ -276,7 +305,8 @@ BAREBOX_CMD_HELP_USAGE("of_property [OPTIONS] [NODE] [PROPERTY] [VALUES]\n")
 BAREBOX_CMD_HELP_OPT  ("-s",  "set property to value\n")
 BAREBOX_CMD_HELP_OPT  ("-d",  "delete property\n")
 BAREBOX_CMD_HELP_TEXT ("\nvalid formats for values:\n")
-BAREBOX_CMD_HELP_TEXT ("<0x00112233 4 05> - an array of cells\n")
+BAREBOX_CMD_HELP_TEXT ("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are\n")
+BAREBOX_CMD_HELP_TEXT ("                    interpreted as node pathes and converted to phandles\n")
 BAREBOX_CMD_HELP_TEXT ("[00 11 22 .. nn]  - byte stream\n")
 BAREBOX_CMD_HELP_TEXT ("If the value does not start with '<' or '[' it is interpreted as strings\n")
 BAREBOX_CMD_HELP_END
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
