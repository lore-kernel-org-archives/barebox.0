Delivery-date: Mon, 04 Mar 2024 21:05:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEZC-008hOi-2Y
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:05:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEZC-0000Yq-8C
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:05:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ay3SbMdwjMInw3FInMRe3c1BE85n88DwpheLBk+rLUM=; b=cF+Yhy8FUp3rbGwSF0FtZykiA+
	1NaAipMcz64DivyxfPR3Jl9OgfJCEAO3hAg38cBX9fIKJHORXOapLFVaNZemEPhXGoGzNDQlBil5M
	8y9pq09FePZxPzn1ooyxlSgPSv9zhPkeM4gfFlSd4qYy+tPTtxCJWjBvkZJFK7QVJshAhhXVLgZD4
	GtLE1FcX+bsszKr/gu86URRN4O0Nu59rkwIXk9jefboH9iIQl/JOMTr5D+7vI8nZJeGykl7nVzplF
	sysgI0/7GjWYWUdf/erXaW70fGF4bxw9S+YpjblOtiKDs2y2CILKvFkSeh+8q/b8U98VGaYpuQj9d
	1vjS3ypg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEYu-0000000AWks-3HQe;
	Mon, 04 Mar 2024 20:05:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaE-0000000AIHN-1d5x
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-0005y1-5W; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaC-004PGJ-OB; Mon, 04 Mar 2024 20:02:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-0G;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:30 +0100
Message-Id: <20240304190038.3486881-46-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110242_622058_BA18E5BE 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 045/113] efi: payload: init: warn if /boot FS is unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initcall's only function is to open /boot/EFI/barebox/state.dtb
and to register it as barebox state description. If nothing is mounted
at /boot, this will fail anyway, so early exit in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 5f2cb085da90..592cf662d540 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -9,6 +9,8 @@
 #define DEBUG
 #endif
 
+#define pr_fmt(fmt) "efi-init: " fmt
+
 #include <linux/linkage.h>
 #include <common.h>
 #include <linux/sizes.h>
@@ -396,6 +398,11 @@ static int efi_late_init(void)
 	if (!IS_ENABLED(CONFIG_STATE))
 		return 0;
 
+	if (!get_mounted_path("/boot")) {
+		pr_warn("boot device couldn't be determined\n");
+		return 0;
+	}
+
 	fdt = read_file(state_desc, &size);
 	if (!fdt) {
 		pr_info("unable to read %s: %m\n", state_desc);
-- 
2.39.2



