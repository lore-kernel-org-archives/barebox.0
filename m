Delivery-date: Thu, 29 Jun 2023 08:57:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElbE-0087Iu-3M
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 08:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElbB-0003xq-PT
	for lore@pengutronix.de; Thu, 29 Jun 2023 08:57:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TtFch4iaUzxbZL3aD5VqNVWRPfuw94qVGsF4Fb2Kvp4=; b=pMhFj16ykw5elGK0x6ADl1/X+i
	E5dwPy6a0OuBWfr9szsT9d18eachmz06fuDY5sAnvRCiQJPK9muTHUndshWFCFwvOqCWWwbGveSuN
	OWrpgJ6YTkSKRTJZgZicOLN6PoJIEondXiuUJbMpytDsLg5RTfrQL1/LfFKxk0T+6ArHC6MX7Xo0G
	I4CFBmT5NeHiZsFKYWd4W+iW1tuhBXXKR6yXYSx64NVu2HLa7LBpmaLzOu+AwaMeA2e6Q836zBKCm
	a6CSnUaaC4bGTKPka87/fKz4wQBm2vsceBqGGKcojtdvaHF7DAnb7cyktycPM3rMrgwPEv+9RNq+4
	XSS8z5rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEla6-0009uR-0A;
	Thu, 29 Jun 2023 06:56:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEla3-0009tc-1s
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 06:56:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qEla2-0003t7-C7; Thu, 29 Jun 2023 08:56:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qEla1-00Aq6H-NE; Thu, 29 Jun 2023 08:56:37 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qEla1-004hH1-18;
	Thu, 29 Jun 2023 08:56:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Jun 2023 08:56:14 +0200
Message-Id: <20230629065612.1119622-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
References: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_235639_616803_57377E53 
X-CRM114-Status: GOOD (  12.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 2/2] boards: qemu-virt: support older QEMU with /soc/flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Qemu versions differ in whether the flash is top-level or under the /soc
node. As we apply a state fixup to the Qemu-passed DT, we need to know
where the flash at. Easiest way is just to move it for older Qemus to
the new location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change (besides renaming of_move_node -> of_reparent_node)
---
 common/boards/qemu-virt/board.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 4c6df5e30252..91d852ed72d2 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -52,7 +52,7 @@ BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
  */
 static int virt_board_driver_init(void)
 {
-	struct device_node *root = of_get_root_node();
+	struct device_node *soc, *root = of_get_root_node();
 	struct device_node *overlay, *pubkey;
 	const struct of_device_id *id;
 	void (*init)(void);
@@ -66,6 +66,11 @@ static int virt_board_driver_init(void)
 		init();
 	}
 
+	/* Rename older QEMU's /soc/flash@X to /flash@X */
+	soc = of_get_child_by_name(root, "soc");
+	if (soc)
+		of_reparent_node(root, of_find_node_by_name(soc, "flash"));
+
 	overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
 	of_overlay_apply_tree(root, overlay);
 
-- 
2.39.2



