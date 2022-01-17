Delivery-date: Mon, 17 Jan 2022 23:21:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNu-004zJZ-9z
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNt-0005Tq-02
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FvE+xbZYAx5vFcbXqs3+XqDLDSdfWiDcMGm8Gk5X88=; b=z3YEXTlhwFoL8B
	vDzbCaURtvWJclllCdxLc27Tpkh1hqfgTl2vbwFSQw5DIUi6LjNOsY79G5KSaqg+pVxX40BU9UCgt
	43LjcKFg3kD9NXQP5KaR3QwxQaOy2uQp7yRkpASZwG8FSS1s8+MOMtMVDugCgTtFLiqXly8TjF/MJ
	pgr2aT+VoyxyqKgFdyLS7UhWapSTQb6Y8k1lRND9ExznWynAzvDilDjTeMovvlPIEuZ5bwPuTiUx9
	HKALzWOq9alTYqa/jebJwDMh1RX/A8hUembvpqBVtixgbmmA2jfJuTYj+chT2YkzyC8fZbOJj73r2
	Vxw3UQh2yFcksapkv2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMd-00GTM5-5b; Mon, 17 Jan 2022 22:20:35 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6p-AO
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id CEE3A3ACE08
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:57 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 872E93ACE21;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <5af0.61e5eb8c.14131.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx601.security-mail.net (Postfix) with ESMTPS id 163EE3ACDC0;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id E843227E03F8;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CE5CA27E0401;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu CE5CA27E0401
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=sQDn5t3Ay54v2xqOGnlQBXjgksVKDkPBwEAC8qHdWEY=;
 h=From:To:Date:Message-Id;
 b=icmP7DDLfWPt7t67ONcFPZEVbWGV2fTmtB0dR9nNF+W3O2beVkOdvN7EENotMsAWM
 SYd5QeeMrWBuMW/k48pJ9FitZVmgVjsqlIHO/cSo3wK7glzV1Wvy5k9YIiU4Ev+1FV
 IK4s/xgHUjkR/xzqrurO7CKp6gozXRoHa3jxmIoc=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id MTEU1GhHvI62; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B4CCB27E03F8;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:11 +0100
Message-Id: <20220117221917.26970-6-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_705423_E07C509C 
X-CRM114-Status: GOOD (  13.01  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/11] kvx: enable FITIMAGE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <clement.leger@bootlin.com>

Enable FITIMAGE support in kvx defconfig and add code to handle fit boot
from bootm command. This is rather a simple addition and it allow to boot
a fit image containing an ELF file as the kernel.

Signed-off-by: Clement Leger <clement.leger@bootlin.com>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/Kconfig     |  1 +
 arch/kvx/lib/bootm.c | 32 +++++++++++++++++++++++++++++++-
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 0934440880..100a945761 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -10,6 +10,7 @@ config KVX
 	select COMMON_CLK_OF_PROVIDER
 	select ELF
 	select FLEXIBLE_BOOTARGS
+	select FITIMAGE
 	select GENERIC_FIND_NEXT_BIT
 	select HAS_ARCH_SJLJ
 	select HAS_CACHE
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 3e9772c458..4c77f676ec 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -94,7 +94,7 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 		goto err_free_fdt;
 	}
 
-	entry = (boot_func_entry) data->os_address;
+	entry = (boot_func_entry) elf->entry;
 
 	ret = do_boot_entry(data, entry, fdt);
 
@@ -104,6 +104,27 @@ err_free_fdt:
 	return ret;
 }
 
+static int do_bootm_fit(struct image_data *data)
+{
+	int ret;
+	struct elf_image *elf;
+
+	elf = elf_open_binary((void *) data->fit_kernel);
+	if (IS_ERR(elf))
+		return PTR_ERR(data->elf);
+
+	ret = elf_load(elf);
+	if (ret)
+		goto close_elf;
+
+	ret = do_boot_elf(data, elf);
+
+close_elf:
+	elf_close(elf);
+
+	return ret;
+}
+
 static int do_bootm_elf(struct image_data *data)
 {
 	int ret;
@@ -121,6 +142,12 @@ static struct image_handler elf_handler = {
 	.filetype = filetype_elf,
 };
 
+static struct image_handler fit_handler = {
+	.name = "FIT",
+	.bootm = do_bootm_fit,
+	.filetype = filetype_oftree,
+};
+
 static struct binfmt_hook binfmt_elf_hook = {
 	.type = filetype_elf,
 	.exec = "bootm",
@@ -130,6 +157,9 @@ static int kvx_register_image_handler(void)
 {
 	register_image_handler(&elf_handler);
 
+	if (IS_ENABLED(CONFIG_FITIMAGE))
+		register_image_handler(&fit_handler);
+
 	binfmt_register(&binfmt_elf_hook);
 
 	return 0;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

