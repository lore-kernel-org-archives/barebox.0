Delivery-date: Thu, 18 Dec 2025 12:40:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMV-00CoTf-31
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLt-0001if-Ug
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uS1QD3s+dJOSR1B3kKH6YURAs6u33mqMsOItHmFh6dE=; b=dP3KVqXQBOlt/dDqXPbVFhmZXn
	GI8abVF5t8FkF5jEbefMklNJPL7yrzt5LxHPM8iXRdf9K3UjeYKDFBBF7UnBaET2etLnl8Wl/mkER
	FB0pax3BIkkyiopKn9Mi+ItZSL85RvZ3FsPgppkXOy7Cu68jTYGa/POu1SdL2sT1g9NeGV6H0xmWn
	5kgY2Re/kwwhbHndRI/hpD9gNYBCkv/WWIx3xC2t9dVojJz/fdKsnq7YeifAFfbn+AHx4PVHqfKGl
	O0KcXCjKf1ayPd6ItIvdyDbq/C+5/NOS+BeSM4fL//tb2RXwTIztxZdCv9klCOF4+YzfeNyMAkf1t
	b8kqbspg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJz-00000008KsC-1id2;
	Thu, 18 Dec 2025 11:37:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJX-00000008KN5-1J4z
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uS1QD3s+dJOSR1B3kKH6YURAs6u33mqMsOItHmFh6dE=; b=D9RoZbSc+sNjQOhe/wLyahlhNs
	rNsu/gG27Hji+nlBjJyTuxKKNCLcNS3cqP36+qh0Ke2sFOIhUJoodBAhyA20QWmx4sToTIxN5CH+M
	E2ySjGnZBhh6LfI3pJClpYxcoo2lC3oyXO0UKSH73SMhXPi95fK531hYCfk6Yi/0V9UtmH19cSN9q
	5o8ACLrqHJa0xuHhb7X2AbkL7MViZP//T4mWUqFC2AqI/ZEcCdgIlvdEgz1zalcMss3zK5kFpOzkn
	fc+S2gLuzjyTg9/2nOrdndMBmRUA+LTB0mVl89hjXgF974yIrUdhZVSF+Zur+CCX8ef9nKbCw5Be8
	sCw2S1Aw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRx-00000008fRV-0wm5
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008CW-Hb; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gvq-16;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-3abX;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:58 +0100
Message-ID: <20251218111242.1527495-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_306167_98F5B896 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 38/54] ARM: psci: client: register runtime service poweroff handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the infrastructure added to register runtime callbacks, let's add
PSCI poweroff on both ARM32 and ARM64 as the first to be provided by
barebox.

Given that the runtime poweroff callback is registered by the driver, we
can add new poweroff handlers in future without one conflicting with
another, maintaining our ability to target multiple SoCs and boards with
the same build or even the same image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-client.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 75cc3f59e0c1..17b021898884 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -12,8 +12,12 @@
 #include <poweroff.h>
 #include <restart.h>
 #include <linux/arm-smccc.h>
+#include <efi/types.h>
 
 static struct restart_handler restart;
+static struct poweroff_handler poweroff;
+
+static __efi_runtime_data u32 (*psci_invoke_fn)(ulong, ulong, ulong, ulong);
 
 static void __noreturn psci_invoke_noreturn(ulong function)
 {
@@ -37,6 +41,12 @@ static void __noreturn psci_restart(struct restart_handler *rst,
 	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_RESET);
 }
 
+static void __noreturn __efi_runtime rt_psci_poweroff(unsigned long flags)
+{
+	psci_invoke_fn(ARM_PSCI_0_2_FN_SYSTEM_OFF, 0, 0, 0);
+	__hang();
+}
+
 static u32 version;
 int psci_get_version(void)
 {
@@ -46,7 +56,6 @@ int psci_get_version(void)
 	return version;
 }
 
-static u32 (*psci_invoke_fn)(ulong, ulong, ulong, ulong);
 
 static int psci_xlate_error(s32 errnum)
 {
@@ -96,14 +105,14 @@ int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
 	return psci_xlate_error(ret);
 }
 
-static u32 invoke_psci_fn_hvc(ulong function, ulong arg0, ulong arg1, ulong arg2)
+static u32 __efi_runtime invoke_psci_fn_hvc(ulong function, ulong arg0, ulong arg1, ulong arg2)
 {
 	struct arm_smccc_res res;
 	arm_smccc_hvc(function, arg0, arg1, arg2, 0, 0, 0, 0, &res);
 	return res.a0;
 }
 
-static u32 invoke_psci_fn_smc(ulong function, ulong arg0, ulong arg1, ulong arg2)
+static u32 __efi_runtime invoke_psci_fn_smc(ulong function, ulong arg0, ulong arg1, ulong arg2)
 {
 	struct arm_smccc_res res;
 	arm_smccc_smc(function, arg0, arg1, arg2, 0, 0, 0, 0, &res);
@@ -165,7 +174,10 @@ static int __init psci_probe(struct device *dev)
 	if (actual_version != of_version)
 		of_register_fixup(of_psci_do_fixup, (void *)method);
 
-	ret = poweroff_handler_register_fn(psci_poweroff);
+	poweroff.name = "psci";
+	poweroff.poweroff = psci_poweroff;
+	poweroff.rt_poweroff = rt_psci_poweroff;
+	ret = poweroff_handler_register(&poweroff);
 	if (ret)
 		dev_warn(dev, "error registering poweroff handler: %pe\n",
 			 ERR_PTR(ret));
-- 
2.47.3



