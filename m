Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001Dz-RC
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:52 +0200
Message-Id: <1369644775-29887-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mci: set name of mci device to same name as the filename
To: barebox@lists.infradead.org

We already have the possibility to register a mci with a certain
filename to get persistent names. However, the device needed to
find the probe parameter still has the name 'mcix'. This patch
changes this by registering the mci device with the same name
as the filename.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1aa98db..4a463d5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1608,8 +1608,14 @@ int mci_register(struct mci_host *host)
 	mci = xzalloc(sizeof(*mci));
 	mci->host = host;
 
-	strcpy(mci->dev.name, "mci");
-	mci->dev.id = DEVICE_ID_DYNAMIC;
+	if (host->devname) {
+		strcpy(mci->dev.name, host->devname);
+		mci->dev.id = DEVICE_ID_SINGLE;
+	} else {
+		strcpy(mci->dev.name, "mci");
+		mci->dev.id = DEVICE_ID_DYNAMIC;
+	}
+
 	mci->dev.platform_data = host;
 	mci->dev.parent = host->hw_dev;
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
