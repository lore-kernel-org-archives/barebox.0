Delivery-date: Thu, 30 Jun 2022 14:26:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tFd-0020Oe-96
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 14:26:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tFf-00066k-Hx
	for lore@pengutronix.de; Thu, 30 Jun 2022 14:26:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kmUCwhdXxj4niIozIF/h9qMRW1fnmJJfgg5wBz6/jhI=; b=mVvhbSXdPFTvKvbqzZmKGn7GtU
	XQeJAolh1+XmLWVWyu1qG3nJn8BfU5Qj9XsapHPoCrIFED8Ov9oldw2b1fHkuqEiKEJny7NLkH6Tb
	5SQvrTV1FvLK/L2shzMJI2as3uewP71QXYpKrIh08iqmgzzLM2BxQWeQlqgIF00UIy2OEgTd3ZbgL
	/JUloHgl083oX9eoOox89u2WH16yaUbsrek5QLEPS/sxRj1qdT571TdDs7DhxtxFt8YHMOZ4s7EpB
	K+sxl8hqR5GCAeZTP9PQKEO3RKcHPvN/TVvbdlZf8qwVv7DkY1mmSQkpmnD0m/hT8XAyFcXz98ivq
	y0f52+0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6tEI-00H4S8-RV; Thu, 30 Jun 2022 12:25:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6tEE-00H4Q1-Nh
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 12:25:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tEB-0005j4-5D; Thu, 30 Jun 2022 14:24:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tE6-003aRn-UR; Thu, 30 Jun 2022 14:24:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tE9-00Gp9e-Sn; Thu, 30 Jun 2022 14:24:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: has@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jun 2022 14:24:56 +0200
Message-Id: <20220630122457.4009827-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_052502_808842_1CA327E1 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] partitions: efi: register guid device parameter for disk GUID
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



