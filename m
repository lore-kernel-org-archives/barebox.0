Delivery-date: Thu, 29 Feb 2024 08:11:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaZx-00Ewue-2S
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:11:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaZx-000693-6I
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:11:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PWzK5izWyXnapv5fx/T6R4Jq10NHQyBkOMPtoXvygVk=; b=D9XeCwNn/mTKZ7dDSDGNxy0wSU
	j1/DbmvVKfMhkP9NQvdl4E2L+6sXYRkkN3UGCurDbq+iQxH8UHNe0tucGV1bxGY4VdKN4YsXa1BPk
	G3M4TINvs2gDAsqpC0NUnWjZ2Puk7W0W4Gb1CYMsqz8q5Y7FZE5kK5JdSmBfTgmWiYBq6iC8u7oVs
	FXHmAFhEqoTjV/dsSkZpamanR1AJ9JcCyts7TIpfGgo74bVvWRfsGGJs/aHlrBfLK5nW3I6tiqH5H
	XJLGLvmU+nnzq5WjQ1dEqWCd2kWmUjKBdbBDhFYte7jYOc5Rr0BOrP/rqI1FR6rhXL/4PPuHS9Lmn
	TAo6ZYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaZP-0000000CPqj-0yqh;
	Thu, 29 Feb 2024 07:11:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaZK-0000000CPpP-0C3G
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:11:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-00061g-RE; Thu, 29 Feb 2024 08:10:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-003XRz-Ek; Thu, 29 Feb 2024 08:10:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-006oSr-17;
	Thu, 29 Feb 2024 08:10:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 29 Feb 2024 08:10:57 +0100
Message-Id: <20240229071058.1623945-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_231102_122603_C71B4D76 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] partitions: efi: change first partition number from 1 to 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Traditionally barebox starts partition numbers at 0. This was changed
in bdc3cb54dc to start at 1. This was done to make the parted numbering
consistent to the Linux tool. This breaks boot scripts though which
assume 0 to be the first partition, so change it back.

Fixes: bdc3cb54dc ("partitions: efi: implement partition manipulation support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 51e92f65c5..703d23c715 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -504,7 +504,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		part_set_efi_name(&ptes[i], pentry->name);
 		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pentry->typeuuid = ptes[i].partition_type_guid;
-		pentry->num = i + 1;
+		pentry->num = i;
 		list_add_tail(&pentry->list, &epd->pd.partitions);
 	}
 out:
-- 
2.39.2



