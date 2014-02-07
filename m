Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh6p-0007nv-BS
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:48:28 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id BF8DB18B4261
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:44 +0100
Message-Id: <1391762936-2747-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/14] commands: edit: properly propagate error code
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/edit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/edit.c b/commands/edit.c
index 295d0a7..6b34101 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -266,7 +266,7 @@ static int save_file(const char *path)
 	fd = open(path, O_WRONLY | O_TRUNC | O_CREAT);
 	if (fd < 0) {
 		printf("could not open file for writing: %s\n", errno_str());
-		return -1;
+		return fd;
 	}
 
 	line = buffer;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
