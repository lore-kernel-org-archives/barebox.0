Delivery-date: Wed, 06 Aug 2025 16:02:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujeim-007evu-0N
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:02:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujeil-0003Ri-I8
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=trGwosZaR4Q+hOHV2UpBMxc8mTOONE/ALs4svJlbQWc=; b=djxK6NXKRlNJcHjI1PngF96UKa
	H2C9A2QH/hVcAnaIBgt/II1x2n9hUuxNKlO+oB6fTSLs+jPpYo2+E8SncjHDS1TH/MZdzj/XBR5oM
	PdZNavLi5VbZKIgrAR2DbfYXK0OM+/62piUooQOstMnwqxCpjX7ShwX9J8MBBTF0F9z79ONb/+qcP
	sgWSXevbm7yMqIrEPRV94J4J8Gd6+tILyCVDNJ0Cy1TcVaxgr4eTsvYeQuxlISC8FhbxFEqz51nHB
	V+YgqF7fpi63kKoUR/r/YU6Uf5Ml3B8a9FmLOj8gS7DzNgIr8ZQY9qS09taK/o1L+hz+JP7a78Mck
	u6FmA+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeiG-0000000FND7-12y9;
	Wed, 06 Aug 2025 14:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujedI-0000000FMIq-2UVO
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:56:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujedH-0002JL-0t; Wed, 06 Aug 2025 15:56:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:56:42 +0200
Message-Id: <20250806135642.2864366-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_065644_636927_4DB868F8 
X-CRM114-Status: UNSURE (   7.61  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] bootm: ignore global.bootm.initrd if unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootm.initrd* variables are only available if CONFIG_BOOTM_INITRD is
enabled, but we were saving and attempting to restore them
unconditionally.

Fix that to avoid confusing warnings on systems without initrd support
compiled in.

Fixes: 926985a74ee0 ("bootm: don't clobber global.bootm. variables after script boot fails")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 95211011fe8b..3a2eb262b26a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -61,8 +61,10 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->tee_file = getenv_nonempty("global.bootm.tee");
 	data->os_file = getenv_nonempty("global.bootm.image");
 	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
-	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
-	data->initrd_file = getenv_nonempty("global.bootm.initrd");
+	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
+		getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
+		data->initrd_file = getenv_nonempty("global.bootm.initrd");
+	}
 	data->root_dev = getenv_nonempty("global.bootm.root_dev");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
@@ -78,8 +80,10 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 	globalvar_set("bootm.tee", data->tee_file);
 	globalvar_set("bootm.image", data->os_file);
 	pr_setenv("global.bootm.image.loadaddr", "0x%lx", data->os_address);
-	pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
-	globalvar_set("bootm.initrd", data->initrd_file);
+	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
+		pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
+		globalvar_set("bootm.initrd", data->initrd_file);
+	}
 	globalvar_set("bootm.root_dev", data->root_dev);
 	bootm_set_verify_mode(data->verify);
 	bootm_appendroot = data->appendroot;
-- 
2.39.5



