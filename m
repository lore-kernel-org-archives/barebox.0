Delivery-date: Mon, 14 Aug 2023 07:34:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDT-003Mts-Qq
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:34:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDR-0006oF-S1
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cjWL/qioIRyiw2gfsYEzOMGAJkidV0rrlwrzqFTYknw=; b=0CGu74+4utGNUAb55ftdTQjq6N
	pjqO6RSf3Yhp3kDxs0hhSfM2BwS3SQZZlNmiuOTC8jHQZc+hI89XcHkIIF2ZSOVtcDHqWqQYNyobh
	Wtn7dmXKPfDywHwX66QXEe8uiAHLBQx+is4bpmv+8EP9koFJ4X0iwQ6iJELp1oRytysYlCQgbnIsY
	mOYw2rnzyo6cUMYJccCH2fhPa6gnbKdtH9WeVVtygVp+zDY+WIO/0NqTxFtoGkAiLHpqaJ9IHgIFb
	4zZ5AbTsZ0rc/4RiqixY+Ro5oOekMiXYmrWtNTyY2ci/IHDqqDmwl3DMVPm0SVO14LKoKF1XgJw2v
	GKt6unNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQC4-00GCQq-2n;
	Mon, 14 Aug 2023 05:32:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQBx-00GCNx-2a
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBs-0006XX-4Y; Mon, 14 Aug 2023 07:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-000VUN-GD; Mon, 14 Aug 2023 07:32:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBq-009hER-2J;
	Mon, 14 Aug 2023 07:32:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 14 Aug 2023 07:32:29 +0200
Message-Id: <20230814053229.2311097-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230814053229.2311097-1-o.rempel@pengutronix.de>
References: <20230814053229.2311097-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_223237_879618_E798E627 
X-CRM114-Status: GOOD (  12.20  )
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
Subject: [PATCH v2 5/5] net: designware: eqos: do not receive pause frames
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Normally we need to care only about packets with not local MAC address
destination. It is needed to support HW setups with multiple MAC
addresses forwarded over one MAC. For example systems using DSA switch
as port multiplexer. In this case one single MAC should handle packets
with different MAC address destinations.

This functionality is provided by the EQOS_MAC_PACKET_FILTER_PR.
EQOS_MAC_PACKET_FILTER_PCF on other hand allow to capture ethernet
control frames like pause frames which are not handled by barebox.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 825c8e0140..ccce51b6af 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -377,7 +377,7 @@ static int eqos_set_promisc(struct eth_device *edev, bool enable)
 	if (!eqos->is_started)
 		return 0;
 
-	mask = EQOS_MAC_PACKET_FILTER_PR | EQOS_MAC_PACKET_FILTER_PCF;
+	mask = EQOS_MAC_PACKET_FILTER_PR;
 
 	if (enable)
 		setbits_le32(&eqos->mac_regs->packet_filter, mask);
-- 
2.39.2



