Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWB-0006t4-Mm
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id l17-v6so8875915pff.2
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:21:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:10 -0700
Message-Id: <20181015022125.24020-8-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 07/22] aiodev: Don't try to use DT node name as aiodev->name
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
