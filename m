Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABX9-0004eM-8J
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:07:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 334EEA00443
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:51 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:06 +0100
Message-Id: <1480061167-21590-6-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 5/6] commands: ubi: ubiupdatevol: Open device with O_TRUNC
To: barebox@lists.infradead.org

Static ubi volumes should be opend with O_TRUNC as the device file
size equals the content.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 commands/ubi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 4c445d2..5e27584 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -42,7 +42,7 @@ static int do_ubiupdatevol(int argc, char *argv[])
 		return 1;
 	}
 
-	fd_vol = open(argv[optind], O_WRONLY);
+	fd_vol = open(argv[optind], O_WRONLY | O_TRUNC);
 	if (fd_vol < 0) {
 		perror("open volume");
 		ret = 1;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
