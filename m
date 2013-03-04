Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UCS5f-0004ZZ-Kr
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:32 +0100
Message-Id: <1362390820-10333-30-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/37] of_* commands: print usage when insufficient arguments
 are given
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_node.c     |    3 +++
 commands/of_property.c |    3 +++
 2 files changed, 6 insertions(+)

diff --git a/commands/of_node.c b/commands/of_node.c
index 2f6ecae..171ea2c 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -54,6 +54,9 @@ static int do_of_node(int argc, char *argv[])
 		}
 	}
 
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
 	if (optind < argc) {
 		path = argv[optind];
 	}
diff --git a/commands/of_property.c b/commands/of_property.c
index 585522c..bd9ff72 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -192,6 +192,9 @@ static int do_of_property(int argc, char *argv[])
 		}
 	}
 
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
 	root = of_get_root_node();
 	if (!root) {
 		printf("root node not set\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
