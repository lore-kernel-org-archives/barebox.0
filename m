Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpij-0007XU-Ir
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:26:27 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:26:16 +0100
Message-Id: <1288599979-3905-3-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/5] sandbox: use devfs functions only if defined
To: barebox@lists.infradead.org

arch/sandbox/board/built-in.o: In function `hf_probe':
hostfile.c:(.text+0xac): undefined reference to `devfs_create'

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/sandbox/board/hostfile.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index ad625d7..38a52a8 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -79,7 +79,9 @@ static int hf_probe(struct device_d *dev)
 	priv->cdev.size = hf->size;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = hf;
+#ifdef CONFIG_FS_DEVFS
 	devfs_create(&priv->cdev);
+#endif
 
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
