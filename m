Delivery-date: Sun, 28 Feb 2021 20:10:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSH-0003V4-M0
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:13 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSG-00019Y-Rj
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZXh7ghy5n4e0s4wJc2xadUBx6wJ48eEcDjiciDm7EK4=; b=Mx1czgGycaCdPTsNk63UTGaTt
	kRBzYhrZGCNT34T47WHk5V5+2NatXJScdQTGQs3mpKrsdyavUUzhutg5wkay2czNNimh3l8h8igqc
	blgEFLxUBvbdXkMTQ6bEkW4fDWLzkZBtYeroyyYs8MkIYen6nXcDQaA6rA58qwuiqtttMaMgWesPy
	q5RproI7x1sURMTMQ7ERFIkFz5OE74vegxNJMlb0cc4eG8j7Jxvw4MiGfEDRjWn1d1cixt/ik8M/d
	N6aAQvpp8cOMM4RdTs8tkNEbCJwKwlLhrnJVjskaVi5X22kof13/MTNNJMAucr8wvD0ubTBYvbd8p
	EGDGDx8XA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRRB-0006DX-Ap; Sun, 28 Feb 2021 19:09:05 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQt-00067a-Lp
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:49 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 551156000E;
 Sun, 28 Feb 2021 19:08:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:36 +0100
Message-Id: <20210228190836.1451663-9-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140848_030532_AEBBE78C 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] virtio: virtio-pci: restrict MIPS support to MMU
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MMU-less MIPS doesn't play along nicely with VIRTIO_PCI.
e.g. Reading from a virtio-rng, will return clearly bogus data.
Document this in the Kconfig, so no one else trips over this.

Eventually, this should be fixed..

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/virtio/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
index ecf66987b3ed..91a89d3e1b89 100644
--- a/drivers/virtio/Kconfig
+++ b/drivers/virtio/Kconfig
@@ -28,6 +28,7 @@ config VIRTIO_MMIO
 config VIRTIO_PCI
 	tristate "PCI driver for virtio devices"
 	depends on PCI && HAS_DMA
+	depends on MMU && MIPS || !MIPS
 	select VIRTIO
 	help
 	  This driver provides support for virtio based paravirtual device
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

