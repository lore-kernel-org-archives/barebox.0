Delivery-date: Mon, 11 Sep 2023 18:23:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjhb-00BghH-Dy
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 18:23:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjhY-0007Jg-OX
	for lore@pengutronix.de; Mon, 11 Sep 2023 18:23:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SWnwD9ff6K2tV4bvaUUo4t7kn1mRCOD4GCks8nRmi8M=; b=SdFy0EBxNM5lA/vQp7fG5rWI3j
	6qTKKPNxKs+ho+mneNs5VRgPXuoMh2DDwBNsEdFC5vlb9raoIpQLy3PakyBc+XXTEeoZtUiVcdyft
	neWRFTslg+A0U+VJ9GwQMAlM72HpdnQEBgRm0GaL0zyDwRbKzQ8La0m9GMKsvRDqBCUUURord9ivf
	KjgaMmVn8BMLoNUO1XsO+6yaL1kWHrg2SWS8q4ANW3OEBZCWSmepzMIRA4e00kpkUQdwQRCqdNPec
	jOIyCKpWxySBOHBi7O7UC8ueY2/Gn9extV1JqCyLvxkFGFSFb+dyghOxWbwnPMwIubybgONAIuw1/
	RIMmybrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjgR-000zZE-1d;
	Mon, 11 Sep 2023 16:22:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjgO-000zYo-06
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 16:22:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjgM-00079w-Lr; Mon, 11 Sep 2023 18:22:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjgM-005akG-9i; Mon, 11 Sep 2023 18:22:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjgM-00Fvpj-09;
	Mon, 11 Sep 2023 18:22:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 18:22:37 +0200
Message-Id: <20230911162237.3797218-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_092240_072735_ECDB348D 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] boards: qemu-virt: rescan aliases after merging DT fragment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox now compiles an initially empty device tree that's combined with
the device tree passed by Qemu. That device tree can hold the FIT public
key or if CONFIG_EXTERNAL_DTS_FRAGMENTS is enabled, device tree nodes
passed at build time. If this device tree fragment adds an alias, it
won't be registered, which can be surprising. Therefore call
of_alias_scan after merging the device trees.

Fixes: 484a0d281408 ("boards: qemu-virt: support passing in FIT public key")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index b9df129834d9..4f2f7374c56a 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -80,6 +80,9 @@ static int virt_board_driver_init(void)
 	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
 	of_merge_nodes(root, pubkey);
 
+	/* fragment may have added aliases to the DT */
+	of_alias_scan();
+
 	/* of_probe() will happen later at of_populate_initcall */
 
 	return 0;
-- 
2.39.2



