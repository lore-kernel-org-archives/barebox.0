Delivery-date: Thu, 02 Jun 2022 11:03:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgji-000NsQ-4u
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjg-00073u-M8
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWAheKnrXBpVf7w2lGokwEfmrIUqMMm0LMEWsmuxoyE=; b=bjfDcWi8wjIUJL
	NxM0nXm9FSZunWA+Fz8M6m0B8RoCee1N0oIaq2WPnPNvuK7YncV67Oh6NaMlJRYMS72HBwXGBoQrX
	NfzQEbwF5STZ8g1AaBrQESBaRe3SZ3UcVlQ2TZPfRjBB5XGKp5fyVOTCc8F5eWGlseP2HcYdb5X5j
	Cff8YUSlfFbs65+d90f9BWOur9vBNTVMZ88SvFVpMgGdnkwLnMaQYCTU1RQcsLTwXm/otusRheWiK
	0qxYqQ8lvNBPKh8bQrCgUL6fDEDIEJKKwN+EEJKT5Mv2960TA4Ka2nVekZ+9q070qERIfyq2gSo2w
	1FKGTS0LHtFFHvPoNLLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiQ-002Kv1-6g; Thu, 02 Jun 2022 09:02:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi8-002Klf-6u
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi4-0006a7-OI; Thu, 02 Jun 2022 11:01:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-005zkn-BZ; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi2-00DOLT-VY; Thu, 02 Jun 2022 11:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:29 +0200
Message-Id: <20220602090133.3190450-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020144_321055_F9B7B441 
X-CRM114-Status: GOOD (  16.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] bbu: add flag for enabling eMMC boot ack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bbu_mmcboot_handler() already takes care to switch $mmc.boot to the
freshly read inactive partition. On some SoCs like the STM32MP1, this is
not enough, but the boot ack bit must be set as well, so the BootROM can
communicate with the eMMC.

Have this happen as part of the eMMC boot switch after a successful
update if bbu_data::flags has BBU_FLAG_MMC_BOOT_ACK set.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c  | 17 ++++++++++++++++-
 include/bbu.h |  1 +
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 4d92d70ff9e3..26b997c02ed1 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -310,7 +310,7 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 {
 	struct bbu_data _data = *data;
 	int ret;
-	char *devicefile = NULL, *bootpartvar = NULL;
+	char *devicefile = NULL, *bootpartvar = NULL, *bootackvar = NULL;
 	const char *bootpart;
 	const char *devname = devpath_to_name(data->devicefile);
 
@@ -346,10 +346,25 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 	if (ret < 0)
 		goto out;
 
+	/*
+	 * This flag can be set in the chained handler or by
+	 * bbu_mmcboot_handler's caller
+	 */
+	if ((_data.flags | data->flags) & BBU_FLAG_MMC_BOOT_ACK) {
+		ret = asprintf(&bootackvar, "%s.boot_ack", devname);
+		if (ret < 0)
+			goto out;
+
+		ret = setenv(bootackvar, "1");
+		if (ret)
+			goto out;
+	}
+
 	/* on success switch boot source */
 	ret = setenv(bootpartvar, bootpart);
 
 out:
+	free(bootackvar);
 	free(devicefile);
 	free(bootpartvar);
 
diff --git a/include/bbu.h b/include/bbu.h
index bf5f2158df72..bd19fa187faf 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -10,6 +10,7 @@
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
 #define BBU_FLAG_YES	(1 << 1)
+#define BBU_FLAG_MMC_BOOT_ACK	(1 << 2)
 	unsigned long flags;
 	int force;
 	const void *image;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

