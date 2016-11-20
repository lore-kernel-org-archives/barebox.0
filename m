Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8Fgz-0000yv-LI
 for barebox@lists.infradead.org; Sun, 20 Nov 2016 00:09:11 +0000
Received: from localhost.localdomain ([84.133.23.249]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0Lvjn6-1covBu1aEG-017WoL for <barebox@lists.infradead.org>; Sun, 20 Nov 2016
 01:08:42 +0100
From: Moritz Warning <moritzwarning@web.de>
Date: Sun, 20 Nov 2016 01:09:10 +0100
Message-Id: <20161120000910.10503-1-moritzwarning@web.de>
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
Subject: [PATCH] docs: fix typos in memcmp help text
To: barebox@lists.infradead.org

Signed-off-by: Moritz Warning <moritzwarning@web.de>
---
 commands/memcmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/memcmp.c b/commands/memcmp.c
index ce044df..7be0033 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -130,8 +130,8 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(memcmp)
-BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with ADDR and ADDR2")
-BAREBOX_CMD_HELP_TEXT("of size COUNT bytes. If source is a file COUNT can")
+BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with ADDR1 and ADDR2")
+BAREBOX_CMD_HELP_TEXT("of size COUNT bytes. If source is a file, COUNT can")
 BAREBOX_CMD_HELP_TEXT("be left unspecified, in which case the whole file is")
 BAREBOX_CMD_HELP_TEXT("compared.")
 BAREBOX_CMD_HELP_TEXT("")
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
