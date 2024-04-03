Delivery-date: Wed, 03 Apr 2024 10:07:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvf3-005VF6-1G
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 10:07:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvf2-0000Hy-Gq
	for lore@pengutronix.de; Wed, 03 Apr 2024 10:07:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9UoqfyJ4r4iKbygOOJZBhoD4g77eAMqE9EP0SvE0ERo=; b=lR3slfmovH+2thzzkd38AaThNu
	xujftX4gW9HDQiGXH7GKMcrGtZdvwlwO4bXzdzk041i+76IIekhdp9uYhKi2mnr5yWtBEOFHXpYWV
	/sW5xs/4OOjSzjfylN6NFoVJoRC95UVRXNajd+ntNEE2QfnHOxeuWqaQRAiBBeCLB3FD0jI9ksKBm
	eL0VKnb/UK4HUWFsMjzXN41z4n21nQ4PWODld4yxPOvPISLNHZ2yaiBnTyM69cTeoM+JWbMPvkGZG
	ogmHK2J8EpZhtxyXEa6SwD/uMuOJeNrzEHIJ5hFDmpYS07m/cDTVf8kBy9nu6ASkesE8oMUl5LRMs
	18S/Ab5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrveQ-0000000Ek9j-0pqb;
	Wed, 03 Apr 2024 08:07:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrveJ-0000000Ek6x-3eJD
	for barebox@bombadil.infradead.org;
	Wed, 03 Apr 2024 08:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9UoqfyJ4r4iKbygOOJZBhoD4g77eAMqE9EP0SvE0ERo=; b=aJKoxcjceUP1VjcR9hRA3esFPI
	52iCfDGEUTBdc9sAGAEAiIi1EE/nZWYsgf6XwbRUDgs8ug7lzTGl4r93MNSyIf0LXAcwWf0str0r+
	AkUKIVKQgKXSbQL7F+Vho6w2Xr9ElHFnQYGsCrHleFCJ7YiPL3inTrKzE7JmybnobgxVcskMJFH2y
	wD1fSpqlcgwLXSk8c36x+HRco5mcdjHeLvLtyQk9LUKPbw92me4Dw/NMFcS+sN81f93DH6vkLeL4Z
	TyIS38SvrCl70y4pXMlR7rBUNdJZKKRJ36ISc2eaGzUCP42O7wno2zWElC7bf9c3G5/fUSTibAjjK
	2pQ1vgMQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrveG-000000055sD-3ESe
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 08:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveE-0008Ar-8z; Wed, 03 Apr 2024 10:07:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00A8Q1-TE; Wed, 03 Apr 2024 10:07:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00HCBb-2b;
	Wed, 03 Apr 2024 10:07:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Apr 2024 10:07:03 +0200
Message-Id: <20240403080703.4098404-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403080703.4098404-1-s.hauer@pengutronix.de>
References: <20240403080703.4098404-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_090708_831085_9C956361 
X-CRM114-Status: GOOD (  13.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] pci: ignore BAR when it doesn't fit into bus resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can happen that a BAR doesn't fit into the bus resource. In this case
just ignore the BAR instead of failing the device. This is what Linux
does as well.
This helps me on the Protonic MECSBC where a NVME drive offers a 1GiB
BAR which doesn't seem to be needed to make the driver work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index bc083270d9..e6370b5c7f 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -406,7 +406,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
 			if (ALIGN(*last_addr, size) + size > busres->end) {
 				pr_debug("BAR does not fit within bus %s res\n", kind);
-				return;
+				continue;
 			}
 
 			*last_addr = ALIGN(*last_addr, size);
-- 
2.39.2



