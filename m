Delivery-date: Fri, 23 Oct 2026 22:06:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKLXT-002OQc-2j
	for lore@lore.pengutronix.de;
	Fri, 23 Oct 2026 22:06:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AAF8520294E
	for <lore@pengutronix.de>; Fri, 23 Oct 2026 22:06:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xhW+Zi3f;
	dkim=pass header.d=linux.dev header.s=key1 header.b=oJVNtd00;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792786016; a=rsa-sha256;
	cv=none;
	b=LnVWM8haLlh8qvemjSy90awOwXxUBbE7KWPLn8UtXKcyMgeV68aYo10wbBSyVUC4zgtc3T
	X/ZgDYa0bBSUDzmggJLSUgEsef/ISxX56BIRqUhAAt9AhVigXp2VopeAGbHwZUhQfrJmIX
	3oibnuuGQTFQzdzEpnrbypj2da5G4bIJ3GnA3l1nZ0ofDVAoP59ckkPgvAWQ/zisTaucCv
	Gx3wZxHZ24p3/GYFkMQzHxVHJgTPwsPSBycSg4i/rgQBsYSr1F3zKuAIgtmHG2Z4zZTnmL
	miqXl4XnzqoionT6H3a7ptU6le/cMexP/iZVDD7xtINt+EOkwJKBW+EuQ9oxqQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xhW+Zi3f;
	dkim=pass header.d=linux.dev header.s=key1 header.b=oJVNtd00;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792786016;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=EEnwMyN1Ized5x3/O6wnCagTQrLdx1E734EbBlWwj7w=;
	b=EzWVsHOhtH9whJMCIpniRyTBNkLfYTG9gL2IK2R+A4KEmqwBCdMYCz1nQ/MWxZIkOBrQ2G
	QeBYarv+Syf9ag227eiOzZsFqCflJ2piw3FD8jcRz7NaAP5R7bTzBBEPQjiqW7Q9K1SuVL
	Fo3F7Xlo43SFYopg8uuGSe7TlxhoarDRGhwTnFMxVvbRI8fVGoshrd4XjMIzNnmRtWxPJv
	HIjuFtZMiVxXfmdMRwB3DHDX//jmlEbQBy6EIQbrkDf9iWWymv34GKT7Bn7vLpgGQ0Ng6G
	+vA95X1phX9GBFC+851CAZwXf2b/qCyobJvfSmFk7fJTe9Oyyg62JAEraa2gFw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=EEnwMyN1Ized5x3/O6wnCagTQrLdx1E734EbBlWwj7w=; b=xhW+Zi3fbAf0W0
	CTOXx8NVYOE7tFfYeOm0sYeoiWbpI4V9iBVISL+korlsdY1EMVQnM/cDpBy5gPt0oar13su1zqKcM
	rb8ELJ408NWy4XJhdUntWWmu2ZRAY5/kU34HeXH07869iMBaMqS0bnwGs9vKJQ2rl8jZbiUY+cas7
	tfD8PjlLQ2YIOZsP9OIg3sE9Lxss4Trjp/T4djMFW418emNmOgL4gdkmggTIajdF77muJsgbgjFus
	/iAgL/mbslUbDlq1W4/KMvOu73+BUUfflwrB2DpZgqiyM6moo6jm76IafoP0xsXR5XncMOdDHk0zS
	Lpo0Rqakz0PLD6QwWLBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWH-0000000GuDW-1q15;
	Fri, 23 Oct 2026 20:05:41 +0000
Received: from out-192.mta0.migadu.com ([2001:41d0:1004:224b::c0] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLVx-0000000Gu9y-2h2y
	for barebox@lists.infradead.org;
	Fri, 23 Oct 2026 20:05:39 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=5EDptfMxYrJ/zyxuRH9ikaJTBiNtGU7ug67kRQ85wh8=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792785919; v=1; x=1793390719;
 b=oJVNtd00fuCxbqc+mxvZojtH5P4eMDE3YU1hPHHYHx0kEIOOO+1c8S/ui99zFNiI6DnEy5Oo
 kRnKfYWxeye0ddcICyteXx66AozaAOqKpKgvjxtzUtl+bXpjvVRoR04n0iK/CFNlHY9S3qMYITx
 RGL9uGGryZSXGJJ7zic7BR9U=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id f6e83e07e3474a0e;
	Fri, 23 Oct 2026 20:05:18 +0000
X-Mizu-Trace-ID: f6e83e07e3474a0e
X-Migadu-Flow: FLOW_OUT
From: clement.leger@linux.dev
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@linux.dev>
Subject: [PATCH 1/5] drivers: soc: remove KVX support
Date: Fri, 23 Oct 2026 22:05:03 +0200
Message-ID: <20261023200507.63716-2-clement.leger@linux.dev>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_130534_210783_A3B8FFFE 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Clément Léger <clement.leger@linux.dev> Remove the
    kvx SoC info driver. Signed-off-by: Clément Léger <clement.leger@linux.dev>
    --- Documentation/gen_magicvars.py | 19 ---- drivers/soc/Kconfig | 1 - drivers/soc/Makefile
    | 1 - drivers/soc/kvx/Kconfig | 10 -- drivers/soc/k [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AAF8520294E
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DKIM_TRACE(0.00)[lists.infradead.org:+,linux.dev:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de]
X-Rspamd-Action: no action
X-Stat-Signature: z3jmy4hw3gn1rik8fijwhent653qj7o8

From: Clément Léger <clement.leger@linux.dev>

Remove the kvx SoC info driver.

Signed-off-by: Clément Léger <clement.leger@linux.dev>
---
 Documentation/gen_magicvars.py |  19 ----
 drivers/soc/Kconfig            |   1 -
 drivers/soc/Makefile           |   1 -
 drivers/soc/kvx/Kconfig        |  10 --
 drivers/soc/kvx/Makefile       |   1 -
 drivers/soc/kvx/kvx_socinfo.c  | 178 ---------------------------------
 6 files changed, 210 deletions(-)
 delete mode 100644 drivers/soc/kvx/Kconfig
 delete mode 100644 drivers/soc/kvx/Makefile
 delete mode 100644 drivers/soc/kvx/kvx_socinfo.c

diff --git a/Documentation/gen_magicvars.py b/Documentation/gen_magicvars.py
index e2bb020360..142e770c10 100755
--- a/Documentation/gen_magicvars.py
+++ b/Documentation/gen_magicvars.py
@@ -13,12 +13,6 @@ MAGICVAR_CONT = re.compile(r'(.*?)"\s*\)')
 
 UNESCAPE = re.compile(r'''\\(["\\])''')
 
-# Global override dictionary to map directories to specific arch or board
-DIRECTORY_OVERRIDES = {
-    'drivers/soc/kvx': {'arch': 'kvx'},
-}
-
-
 def string_unescape(s):
     return re.sub(UNESCAPE, r'\1', s.replace(r'\t', '').replace(r'\n', ''))
 
@@ -81,19 +75,6 @@ def categorize_file(filepath):
     arch = None
     board = None
     
-    # Check for directory overrides first
-    for override_path, override_spec in DIRECTORY_OVERRIDES.items():
-        override_parts = override_path.split('/')
-        # Check if the filepath starts with the override path
-        if len(parts) >= len(override_parts):
-            if all(parts[i] == override_parts[i] for i in range(len(override_parts))):
-                # This file matches the override path
-                if 'arch' in override_spec:
-                    arch = override_spec['arch']
-                if 'board' in override_spec:
-                    board = override_spec['board']
-                return arch, board
-
     # Check for arch
     if 'arch' in parts:
         arch_idx = parts.index('arch')
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index cbde3c35a4..1fc0efbb3b 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -1,7 +1,6 @@
 menu "SoC drivers"
 
 source "drivers/soc/imx/Kconfig"
-source "drivers/soc/kvx/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
 source "drivers/soc/ti/Kconfig"
 
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 975304cd50..abe9c38d03 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-$(CONFIG_ARCH_IMX)		+= imx/
-obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
diff --git a/drivers/soc/kvx/Kconfig b/drivers/soc/kvx/Kconfig
deleted file mode 100644
index 18dcb8ba14..0000000000
--- a/drivers/soc/kvx/Kconfig
+++ /dev/null
@@ -1,10 +0,0 @@
-menu "KVX SoC drivers"
-
-config KVX_SOCINFO
-        bool "KVX SoC Info driver"
-	depends on KVX
-	select NVMEM
-	select KVX_OTP_NV
-	default y
-
-endmenu
diff --git a/drivers/soc/kvx/Makefile b/drivers/soc/kvx/Makefile
deleted file mode 100644
index cacfef21a1..0000000000
--- a/drivers/soc/kvx/Makefile
+++ /dev/null
@@ -1 +0,0 @@
-obj-$(CONFIG_KVX_SOCINFO) += kvx_socinfo.o
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
deleted file mode 100644
index 9b85af6464..0000000000
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ /dev/null
@@ -1,178 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2020 Kalray Inc., Clément Léger
- */
-
-#define pr_fmt(fmt) "kvx_socinfo: " fmt
-
-#include <init.h>
-#include <driver.h>
-#include <globalvar.h>
-#include <magicvar.h>
-#include <command.h>
-#include <libfile.h>
-#include <getopt.h>
-#include <common.h>
-#include <fs.h>
-
-#include <asm/sfr.h>
-
-#include <linux/kernel.h>
-#include <linux/nvmem-consumer.h>
-
-#define LOT_ID_STR_LEN	8
-
-#define EWS_LOT_ID_MASK		0x3ffffffffffULL
-#define EWS_WAFER_ID_SHIFT	42
-#define EWS_WAFER_ID_MASK	0x1fULL
-
-#define FT_COM_AP_SHIFT		16
-#define FT_COM_AP_MASK		0x3f
-#define FT_DEVICE_ID_SHIFT	22
-#define FT_DEVICE_ID_MASK	0x1ff
-
-static char *kvx_mppa_id;
-static char *kvx_arch_rev;
-static char *kvx_board_sn;
-
-BAREBOX_MAGICVAR(global.kvx.arch_rev, "KVX architecture revision");
-BAREBOX_MAGICVAR(global.kvx.mppa_id, "KVX MPPA chip id");
-BAREBOX_MAGICVAR(global.kvx.board_sn, "KVX board sn");
-
-static void kvx_soc_info_read_revision(void)
-{
-	u64 pcr = kvx_sfr_get(PCR);
-	u8 sv = kvx_sfr_field_val(pcr, PCR, SV);
-	u8 car = kvx_sfr_field_val(pcr, PCR, CAR);
-	const char *car_str = "", *ver_str = "";
-
-	switch (sv) {
-	case 0:
-	case 1:
-		car_str = "kv3";
-		break;
-	}
-
-	switch (car) {
-	case 0:
-		ver_str = "1";
-		break;
-	case 1:
-		ver_str = "2";
-		break;
-	}
-
-	kvx_arch_rev = basprintf("%s-%s", car_str, ver_str);
-
-	globalvar_add_simple_string("kvx.arch_rev", &kvx_arch_rev);
-}
-
-static int base38_decode(char *s, u64 val, int nb_char)
-{
-	int i;
-	const char alphabet[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_";
-	const int base = sizeof(alphabet);
-
-	if (s == NULL)
-		return -1;
-
-	for (i = 0; i < nb_char; i++) {
-		s[i] = alphabet[val % base];
-		val /= base;
-	}
-
-	return 0;
-}
-
-static int kvx_read_mppa_id(struct device_node *socinfo)
-{
-	char lot_id[LOT_ID_STR_LEN + 1] = "";
-	char com_ap;
-	u64 *cell_val64;
-	u64 ews_val;
-	u32 *cell_val32;
-	u32 ft_val;
-	u8 wafer_id;
-	u16 device_id;
-
-	cell_val64 = (u64 *) nvmem_cell_get_and_read(socinfo, "ews_fuse", 8);
-	if (IS_ERR(cell_val64)) {
-		pr_debug("Fail to read ews_fuse\n");
-		return PTR_ERR(cell_val64);
-	}
-
-	ews_val = *cell_val64;
-#ifdef CONFIG_ARCH_COOLIDGE_V1
-	/* On kv3-1, 32b regs on traceability are written in reverse order */
-	ews_val = (ews_val >> 32) | (ews_val << 32);
-#endif
-	wafer_id = (ews_val >> EWS_WAFER_ID_SHIFT) & EWS_WAFER_ID_MASK;
-	base38_decode(lot_id, ews_val & EWS_LOT_ID_MASK, LOT_ID_STR_LEN);
-	free(cell_val64);
-
-	cell_val32 = (u32 *) nvmem_cell_get_and_read(socinfo, "ft_fuse", 4);
-	if (IS_ERR(cell_val32)) {
-		pr_debug("Fail to read ft_fuse\n");
-		return PTR_ERR(cell_val32);
-	}
-
-	ft_val = *cell_val32;
-	device_id = (ft_val >> FT_DEVICE_ID_SHIFT) & FT_DEVICE_ID_MASK;
-	base38_decode(&com_ap, (ft_val >> FT_COM_AP_SHIFT) & FT_COM_AP_MASK, 1);
-	free(cell_val32);
-
-	kvx_mppa_id = basprintf("%sA-%dE-%03d", lot_id, wafer_id, device_id);
-
-	globalvar_add_simple_string("kvx.mppa_id", &kvx_mppa_id);
-
-	return 0;
-}
-
-static int kvx_read_board_sn(struct device_node *socinfo)
-{
-	struct nvmem_cell *cell;
-	size_t len;
-	char *sn;
-
-	cell = of_nvmem_cell_get(socinfo, "board_sn");
-	if (IS_ERR(cell)) {
-		pr_debug("Fail to get board_sn cell\n");
-		return PTR_ERR(cell);
-	}
-
-	sn = nvmem_cell_read(cell, &len);
-	nvmem_cell_put(cell);
-	if (IS_ERR(sn)) {
-		pr_debug("Fail to read board_sn\n");
-		return PTR_ERR(sn);
-	}
-
-	kvx_board_sn = xzalloc(len + 1);
-	memcpy(kvx_board_sn, sn, len);
-	globalvar_add_simple_string("kvx.board_sn", &kvx_board_sn);
-	free(sn);
-
-	return 0;
-}
-
-static int kvx_socinfo_probe(struct device *dev)
-{
-	kvx_soc_info_read_revision();
-
-	kvx_read_board_sn(dev->device_node);
-
-	return kvx_read_mppa_id(dev->device_node);
-}
-
-static const struct of_device_id kvx_socinfo_dt_ids[] = {
-	{ .compatible = "kalray,kvx-socinfo" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, kvx_socinfo_dt_ids);
-
-static struct driver kvx_socinfo_driver = {
-	.name = "kvx-socinfo",
-	.probe = kvx_socinfo_probe,
-	.of_compatible = DRV_OF_COMPAT(kvx_socinfo_dt_ids),
-};
-coredevice_platform_driver(kvx_socinfo_driver);
-- 
2.55.0



