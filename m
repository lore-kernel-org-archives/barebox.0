Delivery-date: Thu, 29 Feb 2024 08:18:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfah0-00ExeL-0Q
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:18:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfagz-00072f-Iy
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:18:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PWzK5izWyXnapv5fx/T6R4Jq10NHQyBkOMPtoXvygVk=; b=j9oQTzE8l9jcG6pQmfCb+etGUW
	z0Dwp86bKRcXjO8+WBSmi930xGIyEC4abQGLbzxYJfDCABT3q9iyZdBGCilieXRi2HclmAhFjH0XG
	kD1JoBoFB7li1C+pRxyv4BeN/pYTkCGu+208TXVyjFjDXGLrcwoYzbBTlWhkM7Uf5Wekng5KhGUhF
	eAiqX4cXt4xoHYDc1n5Pbg8LfpkS78/Blz/9m7HrKa2d6koQUVDl/x9WCSgE57lA7Cz0Gn/wFuuiq
	DsjaFohAn21VbSB/Tv7ssdUgiJdObmLMMByQC2EAzMAh1RMTzTPvcDTO+s3g0Kqmqn4bxA2PWNWSA
	V2q72/xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaga-0000000CRDh-1myd;
	Thu, 29 Feb 2024 07:18:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfagW-0000000CRCS-3lPk
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:18:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-0006um-Ol; Thu, 29 Feb 2024 08:18:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-003Xli-CL; Thu, 29 Feb 2024 08:18:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-006oaN-0t;
	Thu, 29 Feb 2024 08:18:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 29 Feb 2024 08:18:24 +0100
Message-Id: <20240229071825.1624411-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_231828_946173_D12508E9 
X-CRM114-Status: GOOD (  11.62  )
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
Subject: [PATCH v2 1/2] partitions: efi: change first partition number from 1 to 0
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



