Delivery-date: Tue, 27 Oct 2026 08:40:50 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbnd-003pI5-2W
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:40:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 95714202845
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:40:49 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HdXqRHQL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086849; a=rsa-sha256;
	cv=none;
	b=MP+uNHzegiMGGxzLE4tmUk/oHsX0WCcKcS+zAn/Jk53+1jNoV3pMzRX34LawRtwhEbFccw
	vecg1xomUVafORnx0/BLjuAv0Ll+EjDd45dTGNu1SNDT3tg1RwjKsQqQoWUKEu+GVO6A4X
	MTQi1xFXUUq0URP/Kk69T3P0v7uuahJBCBptOsU7KNfX0e8+GL/0R6dEeXDuLr45wwYDU7
	1ohNe+FL6v8Jp7ZhFBm9l+GpzfnTiHyAici5LjgrQMAKCkvtD8t16HtS32xmoN2ZSxucf8
	tJwH0G8pag5aXkRiEefnlm/qDIVJeU2WYn1YKQRYq/d2rVUFnPkwcIcc7lweCA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HdXqRHQL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086849;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+Aft0PEW3gLVgkxPV7cWBV955aMkzs3dOjDtozdMJo8=;
	b=VOj0Y9b3wkmXwvsQ2Ofex8aqo9MBJIyabs3pRfYEHVFs7tcwDi+W6PTAnUp9zftcOpzAsk
	S2/YLoMQad8uHwbpGIDjtoIphhjikpZVLgZEp4eWjr6q2BDaXl3DDfc58jGAsEfkFAn5NN
	t0XnqVHCKE0vnhUw21Vfh/DX7S7kwLy7Qk+8T3aXqwo9F/jzSzxg5vC3rAF6Dnqlw5D7yB
	T4DgwpQEm/DCZDNZQnwFckp/bKYBJV+1fEklQcxRGP452VcDoKtn9R5equAoh3enP2mJet
	/Sy/ZR2/K7uGp2q6SffYvtVFwAq5HVRLBNK8was6am1jbMG5N6Jrc3CErwT1gQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=+Aft0PEW3gLVgkxPV7cWBV955aMkzs3dOjDtozdMJo8=; b=HdXqRHQL/b5ae6
	WXhJejbGyodiinrm47Dd9WeE38KYLo4PPCo93ZDrSDoIXizpxtnwd4sxw3JYWVQhQrpw7ALcUFqAB
	IcwJbd9vhrMJ/FlU0UaWycKz8HSIYu1n3dI1QjylsDdhFyByYIQJTzkx7NEDXT2gJ7zPlwRBmC9Iw
	oaMwZlKwPBaYholiQCKO4Bn6bhpZ9eTxPh4sbAi9tg/ebixXlG/7sUAPQ/ImNjbO9HZEMZ/NsaJU4
	uZOX3/gPCzMcG7T/fFt6SzIP896T5A4l4AJHnzk9eRUdfjrncXqh+aO6vTHVgvcPVIGkqu16bbBHp
	2aYDDuIxF1IV0iYaaVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnG-00000003uzW-3dhB;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uty-1KQz
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn6-0003zV-Ow; Tue, 27 Oct 2026 08:40:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 04/17] PBL: add SoC type declaration and handoff support
Date: Tue, 27 Oct 2026 08:24:37 +0100
Message-ID: <20261027074014.3280396-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_551913_5F08BAD6 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A PBL often supports multiple SoC variants, but barebox proper
    has no cheap way to find out which one it's running on before the device
   tree is available. Let's add an enum soc_type, which the upcoming entry point
    framework will declare per entry point and hand off to barebox proper, where
    barebox_soc_type() returns it. Images not built for a particular [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 95714202845
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: qzptm1997956fgei4jsdjj4atejaiejr

A PBL often supports multiple SoC variants, but barebox proper has no
cheap way to find out which one it's running on before the device tree
is available.

Let's add an enum soc_type, which the upcoming entry point framework
will declare per entry point and hand off to barebox proper, where
barebox_soc_type() returns it. Images not built for a particular SoC,
like barebox-dt-2nd.img, use the SOC_TYPE_GENERIC_DT/EFI pseudo types.

A PBL that only detects the SoC at runtime can still update the type
with pbl_set_soc_type() and barebox proper complains if an entry point
forgot to set it.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/pbl/handoff-data.h |  15 ++++
 include/pbl/soc-type.h     | 170 +++++++++++++++++++++++++++++++++++++
 pbl/Makefile               |   1 +
 pbl/handoff-data.c         |   2 +
 pbl/soc-type.c             |  71 ++++++++++++++++
 5 files changed, 259 insertions(+)
 create mode 100644 include/pbl/soc-type.h
 create mode 100644 pbl/soc-type.c

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 81cb0880ad4a..4b9ed31ed94b 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -15,6 +15,7 @@ struct handoff_data {
 #define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
 #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
 #define HANDOFF_DATA_TEE_DT_OVL		HANDOFF_DATA_BAREBOX(5)
+#define HANDOFF_DATA_SOC_TYPE		HANDOFF_DATA_BAREBOX(6)
 
 #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
 
@@ -66,4 +67,18 @@ static inline void *handoff_data_get_entry(unsigned int cookie, size_t *size)
 #endif
 void handoff_data_add_dt(void *fdt);
 
+#ifdef __PBL__
+/*
+ * The stage dispatch hands off the type declared in the board info. An
+ * image running on more than one SoC may still override it later.
+ */
+void pbl_set_soc_type(unsigned int type);
+unsigned int pbl_get_soc_type(void);
+void pbl_handoff_soc_type(void);
+#elif defined(CONFIG_PBL_IMAGE)
+unsigned int barebox_soc_type(void);
+#else
+static inline unsigned int barebox_soc_type(void) { return 0; }
+#endif
+
 #endif /* __PBL_HANDOFF_DATA_H */
diff --git a/include/pbl/soc-type.h b/include/pbl/soc-type.h
new file mode 100644
index 000000000000..be71cdd4338a
--- /dev/null
+++ b/include/pbl/soc-type.h
@@ -0,0 +1,170 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#if !defined(__PBL_SOC_TYPE_H) || defined(SOC_TYPE)
+#define __PBL_SOC_TYPE_H
+
+#ifndef SOC_TYPE
+#define __PBL_SOC_TYPE_ENUM
+enum soc_type {
+#define SOC_TYPE(t)	SOC_TYPE_##t,
+#endif
+
+/*
+ * List of SoCs an image can be built for. Images not built for
+ * a particular SoC declare one of the generic pseudo types instead.
+ */
+
+SOC_TYPE(UNKNOWN)
+
+/* pseudo SoC types of the generic images */
+SOC_TYPE(GENERIC_DT)
+SOC_TYPE(GENERIC_EFI)
+
+/* Allwinner */
+SOC_TYPE(SUN20I_D1)
+SOC_TYPE(SUN50I_A64)
+
+/* Altera/Intel SoCFPGA */
+SOC_TYPE(CYCLONE5)
+SOC_TYPE(ARRIA10)
+SOC_TYPE(AGILEX5)
+
+/* Arm development platforms */
+SOC_TYPE(VERSATILEPB)
+SOC_TYPE(VEXPRESS_CA9)
+SOC_TYPE(VEXPRESS_CA15)
+
+/* Broadcom */
+SOC_TYPE(BCM2835)
+SOC_TYPE(BCM2836)
+SOC_TYPE(BCM2837)
+SOC_TYPE(BCM2711)
+SOC_TYPE(BCM2712)
+SOC_TYPE(BCM47XX)
+
+/* Cirrus Logic */
+SOC_TYPE(CLPS711X)
+
+/* Ingenic */
+SOC_TYPE(JZ4755)
+SOC_TYPE(JZ4780)
+
+/* Loongson */
+SOC_TYPE(LS1B)
+
+/* Marvell */
+SOC_TYPE(ARMADA_370)
+SOC_TYPE(ARMADA_38X)
+SOC_TYPE(ARMADA_XP)
+SOC_TYPE(DOVE)
+SOC_TYPE(KIRKWOOD)
+SOC_TYPE(PXA300)
+SOC_TYPE(PXA310)
+
+/* Microchip/Atmel */
+SOC_TYPE(AT91RM9200)
+SOC_TYPE(AT91SAM9260)
+SOC_TYPE(AT91SAM9261)
+SOC_TYPE(AT91SAM9263)
+SOC_TYPE(AT91SAM9G10)
+SOC_TYPE(AT91SAM9G20)
+SOC_TYPE(AT91SAM9G45)
+SOC_TYPE(AT91SAM9N12)
+SOC_TYPE(AT91SAM9X5)
+SOC_TYPE(SAM9X60)
+SOC_TYPE(SAMA5D2)
+SOC_TYPE(SAMA5D3)
+SOC_TYPE(SAMA5D4)
+SOC_TYPE(SAMA7G5)
+
+/* MIPS Technologies */
+SOC_TYPE(MALTA)
+
+/* NVIDIA */
+SOC_TYPE(TEGRA20)
+SOC_TYPE(TEGRA30)
+SOC_TYPE(TEGRA124)
+
+/* NXP i.MX */
+SOC_TYPE(IMX1)
+SOC_TYPE(IMX21)
+SOC_TYPE(IMX23)
+SOC_TYPE(IMX25)
+SOC_TYPE(IMX27)
+SOC_TYPE(IMX28)
+SOC_TYPE(IMX31)
+SOC_TYPE(IMX35)
+SOC_TYPE(IMX50)
+SOC_TYPE(IMX51)
+SOC_TYPE(IMX53)
+SOC_TYPE(IMX6QD)
+SOC_TYPE(IMX6SDL)
+SOC_TYPE(IMX6SL)
+SOC_TYPE(IMX6SX)
+SOC_TYPE(IMX6UL)
+SOC_TYPE(IMX6ULL)
+SOC_TYPE(IMX7)
+SOC_TYPE(IMX8MM)
+SOC_TYPE(IMX8MN)
+SOC_TYPE(IMX8MP)
+SOC_TYPE(IMX8MQ)
+SOC_TYPE(IMX93)
+SOC_TYPE(VF610)
+
+/* NXP Layerscape */
+SOC_TYPE(LS1021A)
+SOC_TYPE(LS1028A)
+SOC_TYPE(LS1046A)
+
+/* Qualcomm Atheros */
+SOC_TYPE(AR231X)
+SOC_TYPE(AR9331)
+SOC_TYPE(AR9344)
+SOC_TYPE(QCA4531)
+
+/* Rockchip */
+SOC_TYPE(RK3188)
+SOC_TYPE(RK3288)
+SOC_TYPE(RK3562)
+SOC_TYPE(RK3568)
+SOC_TYPE(RK3576)
+SOC_TYPE(RK3588)
+
+/* Samsung */
+SOC_TYPE(EXYNOS8895)
+SOC_TYPE(EXYNOS990)
+
+/* SiFive */
+SOC_TYPE(FU540)
+SOC_TYPE(FU740)
+
+/* StarFive */
+SOC_TYPE(JH7100)
+
+/* STMicroelectronics */
+SOC_TYPE(STM32MP13)
+SOC_TYPE(STM32MP15)
+
+/* Texas Instruments */
+SOC_TYPE(AM33XX)
+SOC_TYPE(AM35XX)
+SOC_TYPE(AM62X)
+SOC_TYPE(AM62LX)
+SOC_TYPE(OMAP3)
+SOC_TYPE(OMAP4)
+
+/* Xilinx/AMD */
+SOC_TYPE(ZYNQ)
+SOC_TYPE(ZYNQMP)
+
+/* FPGA soft SoCs */
+SOC_TYPE(ERIZO)
+SOC_TYPE(LITEX)
+
+
+#ifdef __PBL_SOC_TYPE_ENUM
+#undef SOC_TYPE
+};
+#undef __PBL_SOC_TYPE_ENUM
+#endif
+
+#endif /* __PBL_SOC_TYPE_H */
diff --git a/pbl/Makefile b/pbl/Makefile
index 140781bfd906..5d7c9b06015d 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -13,5 +13,6 @@ pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
 obj-pbl-y += handoff-data.o
 obj-pbl-$(CONFIG_PBL_IMAGE_ELF) += layout.o
+obj-pbl-y += soc-type.o
 obj-pbl-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_PBL_IMAGE_ELF) += barebox-proper.o
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index f45f4d7a78ce..3bdd36716b4e 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -205,6 +205,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
 		return "ARM machine number";
 	case HANDOFF_DATA_TEE_DT_OVL:
 		return "handoff TEE FDTO";
+	case HANDOFF_DATA_SOC_TYPE:
+		return "handoff SoC type";
 	default:
 		sprintf(name, "handoff %08x", hde->cookie);
 		return name;
diff --git a/pbl/soc-type.c b/pbl/soc-type.c
new file mode 100644
index 000000000000..4b035a3cecbd
--- /dev/null
+++ b/pbl/soc-type.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <init.h>
+#include <linux/printk.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <pbl/soc-type.h>
+#include <pbl/handoff-data.h>
+
+#ifdef __PBL__
+
+static unsigned int __pbl_soc_type __section(.data);
+
+void pbl_set_soc_type(unsigned int type)
+{
+	__pbl_soc_type = type;
+}
+
+unsigned int pbl_get_soc_type(void)
+{
+	return __pbl_soc_type;
+}
+
+/*
+ * The handoff entry references the variable itself, so pbl_set_soc_type()
+ * still takes effect until the handoff data is moved out of the PBL.
+ */
+void pbl_handoff_soc_type(void)
+{
+	size_t size;
+
+	/* Firmware returning into the PBL could add the entry twice */
+	if (handoff_data_get_entry(HANDOFF_DATA_SOC_TYPE, &size))
+		return;
+
+	handoff_data_add(HANDOFF_DATA_SOC_TYPE,
+			 &__pbl_soc_type, sizeof(__pbl_soc_type));
+}
+
+#else /* barebox proper */
+
+unsigned int barebox_soc_type(void)
+{
+	unsigned int *type;
+	size_t size;
+
+	type = handoff_data_get_entry(HANDOFF_DATA_SOC_TYPE, &size);
+	if (!type)
+		return 0;
+
+	return *type;
+}
+
+/*
+ * A missing entry means an ENTRY_FUNCTION() entry point, which declares
+ * no SoC; an entry left at SOC_TYPE_UNKNOWN is a board info that forgot.
+ */
+static int soc_type_check(void)
+{
+	unsigned int *type;
+	size_t size;
+
+	type = handoff_data_get_entry(HANDOFF_DATA_SOC_TYPE, &size);
+	if (type && *type == SOC_TYPE_UNKNOWN)
+		pr_err("PBL entry point must declare SoC type\n");
+
+	return 0;
+}
+postcore_initcall(soc_type_check);
+
+#endif
-- 
2.47.3



