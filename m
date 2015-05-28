Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9c-00066D-Dz
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:38 +0200
Message-Id: <1432809284-17362-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
References: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] mem commands: suppport parsing 'q' option
To: Barebox List <barebox@lists.infradead.org>

Add 64bit ('q', for quad) support to mem_parse_options

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/mem.c b/commands/mem.c
index 568050d..23c703f 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -84,6 +84,9 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		case 'l':
 			*mode = O_RWSIZE_4;
 			break;
+		case 'q':
+			*mode = O_RWSIZE_8;
+			break;
 		case 's':
 			*sourcefile = optarg;
 			break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
