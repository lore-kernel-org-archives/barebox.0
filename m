Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9qTP-0003Ht-DM
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 14:28:10 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de
 (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
 by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id
 11AERSTA736622
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Wed, 10 Feb 2021 15:27:28 +0100
Received: from reddoxx.intern.sigma-chemnitz.de
 (reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
 by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id
 11AERQZ11819526
 for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de;
 Wed, 10 Feb 2021 15:27:26 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 10 Feb 2021 15:27:04 +0100
Message-Id: <20210210142704.1855761-3-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
References: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] nvmem: avoid false positive in of_nvmem_find() and simplify it
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

of_nvmem_find() compared only the node names which can return the
wrong device in setups like

|  &i2c1 {
|      eeprom@50 {
|      };
|  };
|  &i2c2 {
|      eeprom@50 {
|      };
|  };

Instead of checking the complete path ('full_name' attribute), the
patch compares the device_node pointers directly.

This is done in other places (e.g. of_find_i2c_adapter_by_node()) and
in the linux kernel too.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/nvmem/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 06e1414769aa..02d0af6e1de0 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -129,7 +129,7 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
 		return NULL;
 
 	list_for_each_entry(dev, &nvmem_devs, node)
-		if (dev->dev.device_node->name && !strcmp(dev->dev.device_node->name, nvmem_np->name))
+		if (dev->dev.device_node == nvmem_np)
 			return dev;
 
 	return NULL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
