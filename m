Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXXwJ-0002Qt-OL
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 12:46:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0108CA30A1
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 13:51:43 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 5 Dec 2011 13:46:24 +0100
Message-Id: <1323089184-22563-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] crc exit with COMMAND_ERROR_USAGE
To: barebox@lists.infradead.org

If parameter -v without a crc is used, you got a notice but the crc is
calculated and exit status is 0.
With wrong parameters we should quite with COMMAND_ERROR_USAGE.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/crc.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index 01fedd7..8ce97da 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -108,6 +108,8 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 			verify = 1;
 			vcrc = simple_strtoul(optarg, NULL, 0);
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
