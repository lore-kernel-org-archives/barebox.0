Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQRyl-0000Mc-IO
 for barebox@lists.infradead.org; Tue, 15 Nov 2011 22:59:48 +0000
Received: by wwe32 with SMTP id 32so4166812wwe.18
 for <barebox@lists.infradead.org>; Tue, 15 Nov 2011 14:59:45 -0800 (PST)
From: franck.jullien@gmail.com
Date: Tue, 15 Nov 2011 23:46:28 +0100
Message-Id: <1321397188-32451-1-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <CAJfOKBx4y+6ViUTeZdktAcyYsNvTRaNxdLH3LcYjrE+qYfsGPw@mail.gmail.com>
References: <CAJfOKBx4y+6ViUTeZdktAcyYsNvTRaNxdLH3LcYjrE+qYfsGPw@mail.gmail.com>
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
Subject: [PATCH] fs/fat: Initialize local variable finfo
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

fat_stat in fs/fat.c declares finfo but doesn't initialize it.
When get_fileinfo is called, fno->lfname and fno->lfsize are
tested but haven't been zeroed...This can lead to a wrong
behavior.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 fs/fat/fat.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 4219801..8420f3a 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -354,6 +354,8 @@ static int fat_stat(struct device_d *dev, const char *filename, struct stat *s)
 	FILINFO finfo;
 	int ret;
 
+	memset(&finfo, 0, sizeof(FILINFO));
+
 	ret = f_stat(&priv->fat, filename, &finfo);
 	if (ret)
 		return ret;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
