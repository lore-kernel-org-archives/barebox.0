Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpI-0004Yu-8r
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id i4-v6so11292971pgq.9
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:37 -0700
Message-Id: <20181016191552.16690-8-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 07/22] aiodev: Don't try to use DT node name as aiodev->name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't try to use DT node name as aiodev->name in aiodev_regster()
since, for some devices (e. g. tempmon) than name would already be
taken by parent platform device.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/aiodev/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index 79f935d71..90df8a6e7 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -106,8 +106,6 @@ int aiodevice_register(struct aiodevice *aiodev)
 		aiodev->dev.id = DEVICE_ID_SINGLE;
 
 		aiodev->name = of_alias_get(aiodev->hwdev->device_node);
-		if (!aiodev->name)
-			aiodev->name = aiodev->hwdev->device_node->name;
 	}
 
 	if (!aiodev->name) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
