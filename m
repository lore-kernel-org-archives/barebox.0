Delivery-date: Wed, 05 Feb 2025 10:49:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1k-008kXT-1i
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1j-0004ed-WA
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nPNU0hipXJ61MkNni0jglBwKRGjG76313UGFdxLhjR4=; b=zv8WXnrUujnIZm3aae6Uc/4IJv
	aA85EdW9bw8hHEpr1vcKyMwIhYpUUFMUakaVtD+O1M1+BswGMA3HhqDvKeblxUH/5ficXLBeKYopv
	fQFsIBj5btGdeJzpZUkhh193zFJO6P1CS6uEUOw80NqFrmCFjQAiSEiLpoZYF13awr68ZffzwVaCO
	H9ACNH5YWRye3fIx84zZZQdn9z5lhYntek8Ta9jt92HKcJ0uxk6HIhOtoTc8KZ1wfQhjA5ezZjYaq
	ZLyM7CGAWxIQeRn98dD5pDSouUNiCzZwymDpXVT44JzR8w6Oy4eztXKfQpd7QIS+BJGKP09lEOVZ0
	en8HMvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1C-00000002kKX-0807;
	Wed, 05 Feb 2025 09:48:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc18-00000002kHv-4C3E
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048L-RP; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2d-1F;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0t;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-2-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1740;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZbCEd5ftPMYmzOxrrGD9jrahKCJul0PztwO6atJtGL8=;
 b=KIoU2SQnF91Dz1QV3mcd5Qipf4nRtsAdDedt0DfvPZLL6i1YoYZUK+vKK+mRna8oaMZdUyUZq
 TPEG4NJ3gZiD1K5zQHPpr0+7Em/Qyzjeh/ad/bKghvHg6gVnoYszvGD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014823_045388_BB1E9BDF 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: k3: add function to detect eMMC boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Booting from eMMC on K3 SoCs requires some special handling. With SD
card boot we put the environment in the boot FAT partition whereas with
eMMC boot we want to put it into the raw eMMC device. Also with eMMC
boot we have to load the subsequent stages from the eMMC boot partitions
and from the boot FAT otherwise. Add a function to detect eMMC boot
to base these decisions on.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 13 +++++++++++++
 include/mach/k3/common.h  |  1 +
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index c779e873c9..7ded1f3f04 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -162,6 +162,19 @@ void am625_get_bootsource(enum bootsource *src, int *instance)
 	k3_get_bootsource(devstat, src, instance);
 }
 
+bool k3_boot_is_emmc(void)
+{
+	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
+	u32 devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
+
+	if (bootmode != K3_PRIMARY_BOOTMODE)
+		return false;
+	if (FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat) != BOOT_DEVICE_EMMC)
+		return false;
+
+	return true;
+}
+
 static void of_delete_node_path(struct device_node *root, const char *path)
 {
 	struct device_node *np;
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 3377dc8895..7f0796f7f4 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -4,6 +4,7 @@
 #include <bootsource.h>
 
 void am625_get_bootsource(enum bootsource *src, int *instance);
+bool k3_boot_is_emmc(void);
 u64 am625_sdram_size(void);
 void am625_register_dram(void);
 void am625_enable_32k_crystal(void);

-- 
2.39.5



