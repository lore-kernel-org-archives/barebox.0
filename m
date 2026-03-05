Delivery-date: Thu, 05 Mar 2026 07:55:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2cB-008FOo-2G
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 07:55:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2cB-0002nO-SY
	for lore@pengutronix.de; Thu, 05 Mar 2026 07:55:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C7vGD/Lv/o5ita88RY8LpG09ngoTX8+i4qkFbhFUSTQ=; b=uNl7NZe7oOQ+mDZM1pfdd38kLk
	+vxL0R1bsnIMg952mYWvDv3ogFXv8GyDyjg01M1ECckvJoBSqzXlZuOPRHqEFVdr3IfGsiv4YgVYu
	BHwAf4PusjUyGdHhZiyJcyxW1B2jcB6FewCQgu4/iHxrQYxM6pJnZAVxmOqTu1J0X5S7MLVW+kQ+m
	0/GMQqTIKO1rs7s9o0ZXwxI6lEWC0pu79xDonCqDygTJsjrenycBHKcV/y4EJ5HKREs4VA4CxRPDw
	iky6s5R6+7g+LAsoL7CXydB3DLpvu9TdxPtcejvSF4DP2sZ3IryHVUxaVd+x/WV8v50hMSsnFM9HV
	3PI6T9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2bo-0000000139E-40SV;
	Thu, 05 Mar 2026 06:54:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2bn-00000001388-0LPm
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 06:54:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2bl-0002hc-JD; Thu, 05 Mar 2026 07:54:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2bk-003q6j-0B;
	Thu, 05 Mar 2026 07:54:53 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2bl-0000000EKwc-1GD6;
	Thu, 05 Mar 2026 07:54:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Mar 2026 07:54:52 +0100
Message-ID: <20260305065452.3417093-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_225455_122976_5C14C7BE 
X-CRM114-Status: GOOD (  18.91  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tee: optee: use RPMB probe capability to select enumeration path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE TAs can be used adhoc when barebox needs them (which is what we
do with the AVB TA) or be registered as devices (which is what we do
with the OP-TEE RNG). For the latter to work with TAs that need
the RPMB we have to announce to OP-TEE when the RPMB is available.

OP-TEE enumerates the TAs in three different stages. With
PTA_CMD_GET_DEVICES all TAs without dependencies are enumerated.
With PTA_CMD_GET_DEVICES_SUPP all TAs are enumerated that need a
supplicant and with PTA_CMD_GET_DEVICES_RPMB all TAs that need a
RPMB.

In barebox we have a supplicant, but it's only used for accessing the
RPMB, so for us PTA_CMD_GET_DEVICES_SUPP and PTA_CMD_GET_DEVICES_RPMB
are equivalent and we can call them together.

This adds a hook from the MCI core to call OP-TEE on the appearance of
a RPMB and when both OP-TEE and a RPMB are available we call into
OP-TEE to enumarate the TAs that need the RPMB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c            |  4 ++++
 drivers/tee/optee/device.c        | 31 ++++++++++++++++++++++++++++++-
 drivers/tee/optee/optee_private.h |  5 ++++-
 drivers/tee/optee/optee_smc.h     |  2 ++
 drivers/tee/optee/smc_abi.c       |  2 --
 include/tee/optee.h               |  6 ++++++
 6 files changed, 46 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 37d864b3d0..2e72fe7ab5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -23,6 +23,7 @@
 #include <linux/log2.h>
 #include <linux/sizes.h>
 #include <dma.h>
+#include <tee/optee.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
@@ -3106,6 +3107,9 @@ int mci_register(struct mci_host *host)
 
 	class_add_device(&mmc_class, &mci->dev);
 
+	if (mci->rpmb_part)
+		optee_rpmb_detected();
+
 	return 0;
 
 err_free:
diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
index 5176989a50..f5e03630b1 100644
--- a/drivers/tee/optee/device.c
+++ b/drivers/tee/optee/device.c
@@ -155,9 +155,38 @@ static int __optee_enumerate_devices(u32 func)
 	return rc;
 }
 
+static bool optee_ready;
+static bool rpmb_available;
+
+static void optee_scan_bus_rpmb(void)
+{
+	if (!optee_ready)
+		return;
+	if (!rpmb_available)
+		return;
+
+	__optee_enumerate_devices(PTA_CMD_GET_DEVICES_SUPP);
+	__optee_enumerate_devices(PTA_CMD_GET_DEVICES_RPMB);
+}
+
 int optee_enumerate_devices(u32 func)
 {
-	return  __optee_enumerate_devices(func);
+	int ret;
+
+	ret = __optee_enumerate_devices(func);
+	if (ret)
+		return ret;
+
+	optee_ready = true;
+	optee_scan_bus_rpmb();
+
+	return 0;
+}
+
+void optee_rpmb_detected(void)
+{
+	rpmb_available = true;
+	optee_scan_bus_rpmb();
 }
 
 static int __optee_unregister_device(struct device *dev, void *data)
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index bb9ac1b068..9752e0ea93 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -123,9 +123,12 @@ int optee_invoke_func(struct tee_context *ctx, struct tee_ioctl_invoke_arg *arg,
 		      struct tee_param *param);
 
 #define PTA_CMD_GET_DEVICES		0x0
-#define PTA_CMD_GET_DEVICES_SUPP	0x1
+#define PTA_CMD_GET_DEVICES_SUPP 0x1
+#define PTA_CMD_GET_DEVICES_RPMB	0x2
 int optee_enumerate_devices(u32 func);
 void optee_unregister_devices(void);
+void optee_set_ready(void);
+void optee_rpmb_detected(void);
 
 int optee_open(struct tee_context *ctx, bool cap_memref_null);
 void optee_release(struct tee_context *ctx);
diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
index b8e886b7e3..a1478e91e9 100644
--- a/drivers/tee/optee/optee_smc.h
+++ b/drivers/tee/optee/optee_smc.h
@@ -215,6 +215,8 @@ struct optee_smc_get_shm_config_result {
 #define OPTEE_SMC_SEC_CAP_DYNAMIC_SHM		BIT(2)
 /* Secure world supports Shared Memory with a NULL reference */
 #define OPTEE_SMC_SEC_CAP_MEMREF_NULL		BIT(4)
+/* Secure world supports RPMB probing via RPC */
+#define OPTEE_SMC_SEC_CAP_RPMB_PROBE		BIT(7)
 
 #define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES	9
 #define OPTEE_SMC_EXCHANGE_CAPABILITIES \
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index 56af3b1b2b..5bbf29c720 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -720,8 +720,6 @@ static int optee_probe(struct device *dev)
 		goto err_close_ctx;
 
 	rc = optee_enumerate_devices(PTA_CMD_GET_DEVICES);
-	if (!rc)
-		rc = optee_enumerate_devices(PTA_CMD_GET_DEVICES_SUPP);
 	if (rc)
 		goto err_optee_unregister_devices;
 
diff --git a/include/tee/optee.h b/include/tee/optee.h
index c25a9922e3..b7c1d65f84 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -104,4 +104,10 @@ static inline int of_optee_fixup(struct device_node *root, void *fixup_data)
 #endif
 
 
+#ifdef CONFIG_OPTEE
+void optee_rpmb_detected(void);
+#else
+static inline void optee_rpmb_detected(void) {}
+#endif
+
 #endif /* _OPTEE_H */
-- 
2.47.3



