Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1bYj-0003K9-DJ
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:55:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYi-0002Nd-4l
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:32 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYh-0002aD-Pk
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:55:28 +0100
Message-Id: <20210118205528.9797-4-m.felsch@pengutronix.de>
In-Reply-To: <20210118205528.9797-1-m.felsch@pengutronix.de>
References: <20210118205528.9797-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 4/4] nvmem: make id optional for of_nvmem_device_get()
To: barebox@lists.infradead.org

Port upstream linux commit
8<----------------------------------------------------------------------
commit d4e7fef1a9a5d2bf3f859ba9f50f4d5409a09ab0
Author: Alban Bedel <albeu@free.fr>
Date:   Mon Jan 28 15:55:03 2019 +0000

    nvmem: core: Properly handle connection ID in of_nvmem_device_get()

    of_nvmem_device_get() would crash if NULL was passed as a connection
    ID. Rework this to use the usual sementic of assuming the first
    connection when no connection ID is given.

    Furthermore of_nvmem_device_get() would return -EINVAL when it failed
    to resolve the connection, making it impossible to properly implement
    an optional connection. Return -ENOENT instead to let the caller know
    that the connection doesn't exists.

    Signed-off-by: Alban Bedel <albeu@free.fr>
    Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
8<----------------------------------------------------------------------

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index b9af31f4b5..9b55f47b4c 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -284,13 +284,14 @@ struct nvmem_device *of_nvmem_device_get(struct device_node *np, const char *id)
 {
 
 	struct device_node *nvmem_np;
-	int index;
+	int index = 0;
 
-	index = of_property_match_string(np, "nvmem-names", id);
+	if (id)
+		index = of_property_match_string(np, "nvmem-names", id);
 
 	nvmem_np = of_parse_phandle(np, "nvmem", index);
 	if (!nvmem_np)
-		return ERR_PTR(-EINVAL);
+		return ERR_PTR(-ENOENT);
 
 	return __nvmem_device_get(nvmem_np, NULL, NULL);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
