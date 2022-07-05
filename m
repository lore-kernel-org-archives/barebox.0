Delivery-date: Tue, 05 Jul 2022 13:57:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hBT-006UI6-KR
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 13:57:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hBV-0004jn-K6
	for lore@pengutronix.de; Tue, 05 Jul 2022 13:57:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8hGPesyNMQIcy/6obQVD5ssR948Nmo+viF9zKlZah5g=; b=oI7/DP6w3CLeJHMKu8cmqR5eEM
	nnzll8NYf8YQJqGUIeXyRUUvkxM4UEoopCvu8SDQMxwxTcG4qfn4Uz4Brvcnd5Ii+QXgsG6d8gMET
	3vuKch9I7pSKybHsxEwOBvE7mxzAca6pzKAhrT8WMjWgal04rTAkpJbeokCvJAj/Wdvd8/XNmQsHV
	dhwkyUVIlOpvmirApwIAy0LudAsPjUKeFGQNflXVn3lSzVr1OKp7Y3QFJRl7BzIAxrIeIYIKLvwZU
	2W6avgAUiN14hD5xAFImjORFR8xhsgO2Yh02PFKEjewuq3aYAxXurXbzkY2LnhnG9R1g/k+pYNpl0
	+PPgavMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h9x-00HYQT-3z; Tue, 05 Jul 2022 11:56:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h9e-00HYIB-1i
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 11:55:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9Y-0004Cu-Hr; Tue, 05 Jul 2022 13:55:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9U-004YSr-72; Tue, 05 Jul 2022 13:55:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9X-00DiuZ-3U; Tue, 05 Jul 2022 13:55:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Jul 2022 13:55:36 +0200
Message-Id: <20220705115538.3248502-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_045546_106356_65C420B5 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] partitions: efi: register guid device parameter for disk GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already register an nt_signature parameter for MBR partitions.
Register an equivalent guid parameter for GPT partitions as well.
This is less critical because disk GUID isn't used for root=
Linux boot argument computation, as each partition has its own
PARTUUID. It's still useful to allow shell scripts to check
against it to detect e.g. a factory flash image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/partitions/efi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 848bed22610f..0f3f790539cd 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -446,6 +446,7 @@ static void efi_partition(void *buf, struct block_device *blk,
 	}
 
 	snprintf(blk->cdev.uuid, sizeof(blk->cdev.uuid), "%pUl", &gpt->disk_guid);
+	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.uuid);
 
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
 
-- 
2.30.2



