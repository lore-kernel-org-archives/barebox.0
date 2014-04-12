Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00071q-By
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:10:58 +0400
Message-Id: <1397290265-21273-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 05/12] commands/mount: Return real error code if "mount" fail
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/mount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index 691bc29..77efe71 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -115,7 +115,7 @@ static int do_mount(int argc, char *argv[])
 
 	if ((ret = mount(dev, type, mountpoint, fsoptions))) {
 		perror("mount");
-		return 1;
+		return ret;
 	}
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
