Delivery-date: Wed, 19 Jan 2022 10:32:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nA7Kp-006VHF-FR
	for lore@lore.pengutronix.de; Wed, 19 Jan 2022 10:32:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nA7Ko-00022B-AP
	for lore@pengutronix.de; Wed, 19 Jan 2022 10:32:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPu0OvCvhjW9YsbSQyM7X7js/vCKkYbwdjvhjaqT26U=; b=SBJg4hsMtWHrjj
	Z6TrsUdDphaKQkkdkfdClcAoiMNQ2M+qCxTrgyxLLJ/H8KutylhB6FQQeeG6FSy7hK3If4108FSVm
	85K9ntqoHoopOY8YSyztd8bEjUg4b7nBVbVEbsyUCZz9nbCNXsZEP5nVa1uZOYjFkaUWUl/hDfmZK
	pkMkS3luI+Djh1RzA7kE/XyAyGx+PFnTcND0Ilau+OzoMs1vcBl0+XkLywT7Q/Lb5acM61ZpV/WnQ
	L0Ku+KSlBIqOxUoYVTYmKroeyeH2fh3OmMzP9OKIB8/4Pujsq8njjsXLVRCiRCyBLfAZNSknVF4Gb
	oPabc7K5YetzNyIY4SeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA7JT-004an6-L2; Wed, 19 Jan 2022 09:31:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA7JO-004alt-GG
 for barebox@lists.infradead.org; Wed, 19 Jan 2022 09:31:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nA7JN-0001wt-AB; Wed, 19 Jan 2022 10:31:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nA7JM-006CXo-RT; Wed, 19 Jan 2022 10:31:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Jan 2022 10:31:24 +0100
Message-Id: <20220119093124.1478127-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119092827.1476170-1-a.fatoum@pengutronix.de>
References: <20220119092827.1476170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_013126_560005_79E9F73F 
X-CRM114-Status: GOOD (  10.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! block: efi-block-io: add devinfo callback for media
 info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The heading could be made a tiny little bit more descriptive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Argh, missed to squash
---
 drivers/block/efi-block-io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index fc6832294b37..086afb378ab4 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -108,7 +108,7 @@ static void efi_bio_print_info(struct device_d *dev)
 	struct efi_block_io_media *media = priv->protocol->media;
 	u64 revision = priv->protocol->revision;
 
-	printf("Protocols:\n");
+	printf("Block I/O Media:\n");
 	printf("  revision: 0x%016llx\n", revision);
 	printf("  media_id: 0x%08x\n", media->media_id);
 	printf("  removable_media: %d\n", media->removable_media);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

