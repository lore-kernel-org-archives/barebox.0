Delivery-date: Wed, 07 Oct 2026 13:01:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPOb-00AuJR-0o
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:01:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E19F7201EFE
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:01:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GePStLuw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KVLlBP2l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370872; a=rsa-sha256;
	cv=pass;
	b=YZmv2FIt9+QN3y4oxLBbxjrKejW1oUuwu611rbzCR0ESvK6m55uHniKj+84pPXObNj+lNB
	5JtWgwCLcxPOhdfa/waIrPJzSuiEp1gd831AR8jJWfO8k25AQpwAmXXFO+iHrFf/bxbakG
	vQ4OkrIHF6dxG3Bedvhr1FUqAbIZeWx1YPpH+WxVNU0WYP4yVdZF9S5diivO1PxEzUtGM3
	KpbYm9XuY3TqytVTk2bkpmI4Y0rTWjvUA2G//VoL72k97Tyk24euatM7azOyVcG98gFUiP
	Qmgp8MjbMiARB/TKlqMk/FfefUsiQUyiyY6Vj8Q3a44XTw0OkzLPofUU3eF2CQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GePStLuw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KVLlBP2l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370872;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=A2t19+7oldsJIeU7rZRwdM8lyIvOLK5FPLVqLmn/ozc=;
	b=M8jY0jUJA3UlGV0JVPFVBgehbzYEUfLbATuNxztzcE7ZLbZ1x+jvO3E97Sx3O2kWAObw0E
	3sqNGIYIR93uf7XTGPNeic48msD8huRPMDXYdgqb/K/h8O8KHs/kg3yV8BBpJJRF8UUJJo
	dPiYtifqRicQEDTdYS2n77Nnx7q7782x7yMW/OdPjYcLejI0hxrOv1V82Kz5JsUGVmBkKF
	hIcewR0EOn9j9+4GX5o8jZZLV7aLzUkZkYmSdvfO6okAt7HpLBvzBFO0f9PjLjlWfe+hmL
	WIxj4zCE5zXP78UbqnPQRfD4zbe528YqUBeLwql2Cn8tTEhlH/qbf5EyLyJ4XQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A2t19+7oldsJIeU7rZRwdM8lyIvOLK5FPLVqLmn/ozc=; b=GePStLuwstdkQ2fBJ72owmyY9A
	NVs5NtJ+xa9JgD0sqce2FSWiNuYrT0l9eY2ALPMjw9bqyXTWBFkABvaGPy4bKYYgCa5QakjnpRnfn
	pIpAeE9tmPuOuioJJiyoG5mP5ei2xt6S3rRrwXxdfuaWkXnY1HJfHkCmCut3dMdeUem6FGQi4ocPL
	j4nLTFQedt4GQZm86UT8vJL9wkrmDqsvIpHp9xp07jy5DKgRJPqByOuCXN+xPK5nlA75zrNdEYG+M
	8kupelYIbgidc71BneJjhj8djBu7Rl5oVsu/hBD6nrsmQNrvrS9aTFFgygaZ95VoI8zVoJwsl/yWD
	whjjpxHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJd-00000002FC4-371F;
	Wed, 07 Oct 2026 10:56:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJU-00000002F7m-0TTH
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 18D91202354;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A2t19+7oldsJIeU7rZRwdM8lyIvOLK5FPLVqLmn/ozc=;
	b=KVLlBP2lTsd6GEpmP8Z9MoZ4oyTru90ECRqOR1f5Db0AVnPjHBVjCVRYFQzi2UpksklLij
	elXtDyC5W7rvQCkXqgavg2D6oyNzpdkr/7TIm+wP/i7VJmRKkQ2P8LvFpjDjPOTr6iv8s2
	lHjxpnhdtt076M/HI31HwJ9r1AOjUb+sScpg/TlCBafDk56b8CdkPN+Cb5dloiDdGnMLRb
	foHnD6sg1s5lSlT8NSqZCe7EvOOhM44WFNg/N1ajqapcSMKDudWZA5B3JrmPvA5Z67i6Re
	uYtWCF4BtqLu4Fr6W8WYm9CWTvFmwvV40gQ4QZjyeRbYEb3sOn3cisShTMxEjA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=OoEfz2akrWjJhfeoANjGCsNRL/VFR5a/xokcVHnAmabZEhDO1njNfQ70f7ilQMSsYiqKH2
	X+TYVpCyI3VCxu5t70Cp9UOfkJM8tjTK9UU0f5VU+JQp6JKKq4SlGDwcD6u4UIxoAZjMpJ
	0iHgUJp9MxbdzRGZzbZBqHIMf1a6xqtUhivvAEpOJOzpXKLmNzExZxSaFdm9AlBhxDuvRu
	3rGMQclMDsoj0SkULFEmW1H8Ja6S2arGiMkOBplIut9UXucwAD/pmj5fJJ6QQ2LMSLj+s8
	6fkFmAmASHq0MKeyHSjSdInHmULP1G3iiBItt14wh2hNs6nXsE1jWHtdsN7Ptw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A2t19+7oldsJIeU7rZRwdM8lyIvOLK5FPLVqLmn/ozc=;
	b=PsAEZr/bF+nJo236Ig0V+vC9H59khp6ntKMZkWun2uTshd/satqYC3V/xL4mysxL7MF+bt
	uvEOX9QTbl7AtZnlmJlDzyaTGKoR0DlNFgePL6ZPPLoSNPgIQq5mczl/Ib6+GqsdnIvYaF
	EWqW8rOa4q6sbcY7/8QYz5j20TCzHXdLjO3Jzgb8gFC2SsCGfrc1HDFC8P34O/tcInJ2zJ
	K8QNaxMmC0/00c8/VpyGErT2XD5vMK0cWEQzPABOKQAU7Op++t5MShwdsWSEa+k03kjbnb
	p+TpKIbHxLbK7iw9aeap5ns7PiMUDC01mfSXGu/Mq7CZcPXBD0s6bJ8rhFA25A==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-3D;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:50 +0200
Subject: [PATCH 05/11] arm: socfpga: agilex5: add bl33 xload support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-5-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035557_805150_3DCEDB8A 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The size of the FSBL on Agilex 5 is limited by the size of
    the available SRAM (512k), but there are additional limits imposed by the
    tooling which limit the possible size of the FSBL to about 256k. Add xload
    support to the Agilex 5 PBL to optionally xload a barebox image as bl33 from
    another boot medium. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E19F7201EFE
X-Stat-Signature: ygo4bjqzs6eg31mh5y3qskje375485ga

The size of the FSBL on Agilex 5 is limited by the size of the available
SRAM (512k), but there are additional limits imposed by the tooling
which limit the possible size of the FSBL to about 256k.

Add xload support to the Agilex 5 PBL to optionally xload a barebox
image as bl33 from another boot medium.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig         | 11 ++++++
 arch/arm/mach-socfpga/Makefile        |  3 ++
 arch/arm/mach-socfpga/agilex5-xload.c | 74 +++++++++++++++++++++++++++++++++++
 include/mach/socfpga/generic.h        | 15 +++++++
 4 files changed, 103 insertions(+)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index a836711e6c40..55d7b12200c9 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -92,4 +92,15 @@ config ARCH_SOCFPGA_XLOAD
 	depends on ARCH_SOCFPGA_CYCLONE5
 	prompt "Build SoCFPGA preloader image"
 
+config SOCFPGA_AGILEX5_XLOAD
+	bool
+	depends on ARCH_SOCFPGA_AGILEX5
+	prompt "Support SSBL xloading on Agilex 5"
+	help
+	  On Agilex 5, the FSBL binary is limited to a size of ~256k. Enable
+	  XLOAD support to load the SSBL from a separate medium and allow
+	  larger bootloader images.
+
+	  Note that the SSBL loading has to be configured in the board code.
+
 endmenu
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index 6a8117874136..f061d82f01dd 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -22,6 +22,9 @@ pbl-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += soc64-system-manager.o \
 				agilex5-secreg.o \
 				agilex5-clock-manager.o \
 				atf.o
+ifdef CONFIG_SOCFPGA_AGILEX5_XLOAD
+pbl-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += agilex5-xload.o
+endif
 
 obj-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += secure_reg_helper.o \
 				      smc_api.o
diff --git a/arch/arm/mach-socfpga/agilex5-xload.c b/arch/arm/mach-socfpga/agilex5-xload.c
new file mode 100644
index 000000000000..9e55252c04cc
--- /dev/null
+++ b/arch/arm/mach-socfpga/agilex5-xload.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <filetype.h>
+#include <linux/sizes.h>
+#include <mach/socfpga/generic.h>
+#include <pbl/bio.h>
+
+static inline u32 barebox_arm_size(const char *head)
+{
+	return *(u32 *)(head + ARM_HEAD_SIZE_OFFSET);
+}
+
+const struct socfpga_barebox_part *barebox_part;
+
+void agilex5_set_barebox_part(struct socfpga_barebox_part *part)
+{
+	barebox_part = part;
+}
+
+static ssize_t agilex5_bl33_read(struct pbl_bio *bio, void *bl33,
+			     off_t offs, size_t max)
+{
+	const off_t step = ARM_HEAD_SIZE;
+	u32 size = 0;
+	int ret;
+
+	ret = pbl_bio_read(bio, offs, bl33, step);
+	if (ret < 0)
+		return ret;
+	if (is_barebox_arm_head(bl33))
+		size = barebox_arm_size(bl33);
+	if (size == 0) {
+		pr_err("cannot find bl33 at offset 0x%08lx)\n", offs);
+		return -EIO;
+	}
+	if (size > max) {
+		pr_err("bl33 size (%u) larger than partition\n", size);
+		return -EINVAL;
+	}
+
+	pr_info("bl33 found at 0x%08lx, size %u\n", offs, size);
+
+	ret = pbl_bio_read(bio, offs + step, bl33 + step, size - step);
+	if (ret < size - step) {
+		pr_warn("failed to read bl33 from flash: %d\n", ret);
+		return ret;
+	}
+
+	pr_debug("read bl33 to %p from %lx (%u bytes)\n", bl33, offs, size);
+
+	return size;
+}
+
+int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
+{
+	ssize_t size;
+
+	if (!bio) {
+		pr_warn("source device for SSBL is not configured\n");
+		return -ENODEV;
+	}
+	if (!barebox_part) {
+		pr_warn("source partition for SSBL is not configured\n");
+		return -ENODEV;
+	}
+	size = agilex5_bl33_read(bio, bl33,
+				 barebox_part->nor_offset,
+				 barebox_part->nor_size);
+	if (size < 0)
+		return size;
+
+	return 0;
+}
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 6c99a17e81f1..16e117f4206c 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -134,4 +134,19 @@ struct socfpga_barebox_part {
 /* Partition/device for xloader to load main bootloader from */
 extern const struct socfpga_barebox_part *barebox_part;
 
+struct pbl_bio;
+#ifdef CONFIG_SOCFPGA_AGILEX5_XLOAD
+void agilex5_set_barebox_part(struct socfpga_barebox_part *part);
+int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33);
+#else
+static inline void agilex5_set_barebox_part(struct socfpga_barebox_part *part)
+{
+}
+
+static inline int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
+{
+	return -ENODEV;
+}
+#endif
+
 #endif /* __MACH_SOCFPGA_GENERIC_H */

-- 
2.47.3



