Delivery-date: Mon, 14 Aug 2023 07:34:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDM-003Mrs-Sn
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:34:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDL-0006la-5A
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M8RhBYFLvuZXMbwMqgwTOqnDu6Bd2Ttpci1Er4/7fno=; b=kmingHxfnZKLxPhrJFSEOMicH8
	Y7T23Rqk6DYD2ow6EMiUui2bDTCZDGWG+QG9/+3O6WnRfqRgkdpwT1T+zDn45w9ti9GrnT5+l18VP
	Gr9rdC/PIX6HhEcX9xj8koEaUVlHP42rbtTI6IgSx+sPBH4aVan2nDNr7EDv5BKvjoQ8Kqf/KpSk/
	91WHhsOH5JxbUJ1aSH48FGyz6kP6Sa5Xg8NJPedUmlH4tYiQhteeE7v4LHul0OTnbCYzAU8QK+3v9
	N5SpXKs8ipBo58goJlwbQ9YxQR9vz3jeXcMuXl0XKoBZMXjw+gUlY125Ew0XiR0TqXwawcbrYNFZz
	s4MO8G6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQC3-00GCQZ-2F;
	Mon, 14 Aug 2023 05:32:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQBx-00GCNu-2b
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:32:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-0006XT-WF; Mon, 14 Aug 2023 07:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-000VUH-Bd; Mon, 14 Aug 2023 07:32:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBq-009hE8-27;
	Mon, 14 Aug 2023 07:32:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 14 Aug 2023 07:32:24 +0200
Message-Id: <20230814053229.2311097-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_223237_879026_6DA322CA 
X-CRM114-Status: UNSURE (   6.71  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] net: designware: eqos: fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v2:
- spelling fixes in the "initialize MAC address" patch

Oleksij Rempel (5):
  net: designware: eqos: initialize MAC address specific DMA channel
    configuration
  net: designware: eqos: fix non-working promisc mode when set before
    interface start
  net: designware: eqos: add comment about external clock dependencies
    for the soft reset
  net: designware: eqos: fix NULL pointer dereference on LLDP packets
  net: designware: eqos: do not receive pause frames

 drivers/net/designware_eqos.c | 78 +++++++++++++++++++++++++----------
 drivers/net/designware_eqos.h |  7 ++++
 2 files changed, 63 insertions(+), 22 deletions(-)

-- 
2.39.2



