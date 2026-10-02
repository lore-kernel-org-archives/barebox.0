Delivery-date: Fri, 02 Oct 2026 13:37:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbZi-008pCG-1v
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:37:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 87BEC202304
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:37:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=q9QbuFWI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dHauj8sF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941033; a=rsa-sha256;
	cv=pass;
	b=MSYT31n8Ra5c/ltMI615bC15ndw68lbglIN1zPYTL0oAvYhoWbDGUw/dCAfyLSFT2ih7jG
	wlLSWTeq2fHy9QWS0lrQ7NB2OKjqK3ggKsGpjkcv1uTPc4du4w2v+zapeFYdbJjviUIW4x
	pwwHl+voKz5c+abLF9rpyOTlJdUnNisUdNKkT59PGwv1jOGYOs5D3gn9bIDk/kGgBostpB
	fCvh9+ieJh4T4ALnWavao3GkrAfFTYt9ZzsJr6tWOG59/g1soX3EboS91B7QTEueiHdOwR
	6CjCb3zpj4iO2JJ5zLgivJXSPtyqFlKF1/X+cQMC4kTkuOZo0IRIKP9OkIVRUA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=q9QbuFWI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dHauj8sF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941033;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=y+iY7r1gWS7tfZ8gIrAnz+lGOJqMuSX2iTdvwPeGRgY=;
	b=bOxxSF+aPHEa4Te8AugwDWFaxE4Z46tNPTUVnZP46CS7psgBni2X/OmYtuBMB8gCiAwDJ3
	7xeyWyUzx8Fk+GvkiUNLuibD2VUfxxwESWT7dzwmN+ud1y4OxIhlGqnGfrwZ49I8ezrrAF
	lK/HYKCeSNFJYpyVKtdfvR7evl0UGPFpOgVfQbmzSWdqlDpZPcAtUXXnudZ2YKem+Wp/A4
	8lEvfDymsUMNyonJpzYBqnY/jgzrnRzjXi71ylj/d4CIOKrj+gOYcdm0O5Ttw9tUFOm+jh
	rGgaQH/qJI3nKXPWCUo5DKvV6tYS+Ws/dI1GYntr4KGKk3/dESzVzjPp1Z3gYA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y+iY7r1gWS7tfZ8gIrAnz+lGOJqMuSX2iTdvwPeGRgY=; b=q9QbuFWIJN295msgcRsgsRAQWB
	okNKCFHDMelLUZ5tGdJP8W7NtNbUanqyKq7GcMbqsU46oHXzu8BwHiEqUWdv29Nhw77Kxy9198A6d
	cCAaK90F8pQBdzWRO5EQVHn2irjDw57U7Ya4RoopcrD7v0iv4Rd5/9h5QA2khmNEYj3cPFVCeEF8D
	vddrPDhrgoyfxWOQqkdrtjIpAWWKOiEDO23qUb1ep/Q9H/10OfxlzuScNV9hAhP16jYlDr7tlyWST
	HiKu9RnhCE+4MkzWufLlpwwEmHbmQ7YYcyp9O0A7EzJVg2fEBD9jtnwlq5IkYPxjaqwJADkI+IPKj
	Ehi46Q3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYY-0000000BUQ0-1IbX;
	Fri, 02 Oct 2026 11:36:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYS-0000000BUN5-47SB
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:36:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 32179200758;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y+iY7r1gWS7tfZ8gIrAnz+lGOJqMuSX2iTdvwPeGRgY=;
	b=dHauj8sFQS7uUcTGcl9n1ZKH3vhfTs2zyKbzmt5+YQe/0lMSNOYTCxrFrVzSxapbqAXSQU
	9Wbyq7Ffk0Ho/JHEu2TzeXEqUak4lFjjhY7j5NT5xgw6h6cqjU9a0b7ZVhhYPW91sqXm5K
	QNoo41hoPFutfAOatjqNtlTixk3UQazTz0qPv8Frkwe/fVyecbcrCViG/d+9CIbXU1wUl1
	hHM/LS9Yq27VodszoHk7gX6onjLcEOeXjkbhQMKy7gArpklO30ELciW8K3UwXz11fvGol0
	wqSQuOTV9cbHgSI5J+K9tKJ3mF2j/7CCXlgKAM+1jf2fpJVs46oNlHBEuCZB5Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940955; a=rsa-sha256;
	cv=none;
	b=QpBYbM5ciDlVV73cR1iPrkLR8xq7CMHO9AZEMD0fk1Sl4d5fGNXBEQWd69ICyGK9vNFAhS
	zK0yMi6qyFGyhX9M5e6Ff1GYpayuv8TbikqYJwr2wv0l8z0aUDV8FC55gNvdjl3UJcVlZ9
	iuL+WiAz8HqbL5t/cyfzVpDDpvsMzpKR65Def90gMhbfBn7iZJBMvRJLhAqSRhdhlqkied
	lYfRpXVtPqMzz8W7jMjgWTlUzodW7q1L4DWQn3d26A3r9sTkEnizjKhXaV4dyiz+vUXA2K
	MuwoTmkIh75txo2XjodjLmhzToNMhNYhiP8sSUOPsWE6VtXbirP7nnrE5EHlWA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y+iY7r1gWS7tfZ8gIrAnz+lGOJqMuSX2iTdvwPeGRgY=;
	b=abcECnOkVrp3mykglgn8FZb/OIqqWyGavE/oPbtWCQIs34EC4gQWPmFc8ty60R5i6c6Gvw
	wD8Eh/uCByvNGeaXM6y3mldSKBgh1JMXhfo6RDdSG2KrJcFBuee3Fagw7O6LbVX9AOVjf7
	3j+Oqh3Pki9OavReBxZSvjt6QzsZNT+AG1KnFj7jJyRnHSIzV5i2yGl1wGYpcynRbj0rFz
	mAw4O5bivhj3+M2c7Hx3mn1zCXUmE+yR8DBcqgBl/eIq55tn/PPGyuUJwsOHnIbQYp5q2l
	AynZMDSmbxe6ipPI2xH/d2b4qgoaMwA/32OuY12iBFig5pxCmVdeSVnrZgVK8A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 14D067415A1;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 3/5] ARM: i.MX8M: feed A53 cores from ARM PLL via CORE_SEL_CFG in early clock init
Date: Fri,  2 Oct 2026 13:35:48 +0200
Message-ID: <20261002113554.2902941-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
References: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_043558_319187_8D4B2090 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox runs the Cortex-A53 cores off the ARM PLL through
   the A53 root slice, as the ROM does, but at 1.2GHz instead of the ROM's 1GHz.
    The i.MX8MM, i.MX8MN and i.MX8MP reference manuals all list 1000MHz as the
    maximum for ARM_A53_CLK_ROOT in Table 5-1, so the slice runs out of spec
   until barebox proper applies the upstream device tre [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 87BEC202304
X-Stat-Signature: cz6w7nxfnawje4grrf1bme8px6ktnzzg

barebox runs the Cortex-A53 cores off the ARM PLL through the A53 root
slice, as the ROM does, but at 1.2GHz instead of the ROM's 1GHz.

The i.MX8MM, i.MX8MN and i.MX8MP reference manuals all list 1000MHz as
the maximum for ARM_A53_CLK_ROOT in Table 5-1, so the slice runs out of
spec until barebox proper applies the upstream device tree's
assigned-clock-parents: A53_SRC to sys_pll1_800m first, dropping the
cores to 800MHz, then A53_CORE to arm_pll_out.

U-Boot's clock_init() instead writes the A53 root slice in full, i.e.
sys_pll2_500m with all dividers cleared, and switches CORE_SEL_CFG to
arm_pll_out, so the cores are fed from the PLL directly and the slice
is left unused. U-Boot commit 46a8a28bf60b ("imx8m: configure arm clk
sources from PLL") introduced this for the same 1GHz reason. Let's do
the same: barebox proper's reparenting then only touches the unused
slice and the cores stay at 1.2GHz throughout.

CORE_SEL_CFG is target root 49 with only a mux bit, so it is written
without ENABLE, like U-Boot does.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c         | 21 ++++++---------------
 include/mach/imx/imx8m-ccm-regs.h |  1 +
 2 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 533e2877237f..66a3b376ed94 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -10,7 +10,6 @@
 #include <mach/imx/imx8m-ccm-regs.h>
 #include <soc/imx8m/clk-early.h>
 
-#include <linux/bitfield.h>
 #include <linux/iopoll.h>
 
 #define IMX_SIP_BUILDINFO			0xC2000003
@@ -49,8 +48,6 @@ void imx8m_ccgr_clock_disable(int index)
 #define INTPLL_DIV2_CLKE_MASK                   BIT(13)
 #define INTPLL_CLKE_MASK                        BIT(11)
 
-#define CCM_TARGET_ROOT0_DIV  GENMASK(1, 0)
-
 #define IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL	0x84
 #define IMX8MM_CCM_ANALOG_SYS_PLL1_GEN_CTRL	0x94
 #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
@@ -60,7 +57,6 @@ static void __imx8m_early_clock_init(int cpu_type)
 {
 	unsigned long pll3_freq;
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
-	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
 	u32 val;
 
 	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_DDR1);
@@ -131,22 +127,17 @@ static void __imx8m_early_clock_init(int cpu_type)
 					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
 	}
 
-	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
-			IMX8M_CCM_TARGET_ROOTn_MUX(7),
-			IMX8M_CCM_TARGET_ROOTn_MUX(2));
+	imx8m_clock_set_target_val(IMX8M_ARM_A53_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(2));
 
 	/* Configure ARM PLL to 1.2GHz */
 	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
 				     1200000000UL, 25000000UL);
 
-	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
-			IMX8M_CCM_TARGET_ROOTn_MUX(7),
-			IMX8M_CCM_TARGET_ROOTn_MUX(1));
-
-	/* Configure DIV to 1.2GHz */
-	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
-			CCM_TARGET_ROOT0_DIV,
-			FIELD_PREP(CCM_TARGET_ROOT0_DIV, 0));
+	/* Bypass the A53 root and feed the cores from arm_pll_out directly */
+	imx8m_clock_set_target_val(IMX8M_CORE_SEL_CFG,
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
 }
 
 void imx8mm_early_clock_init(void)
diff --git a/include/mach/imx/imx8m-ccm-regs.h b/include/mach/imx/imx8m-ccm-regs.h
index 42d0c485f25b..bcd8b85f9f3e 100644
--- a/include/mach/imx/imx8m-ccm-regs.h
+++ b/include/mach/imx/imx8m-ccm-regs.h
@@ -25,6 +25,7 @@
 #define IMX8M_NOC_CLK_ROOT		26
 #define IMX8M_NOC_IO_CLK_ROOT           27
 #define IMX8M_DRAM_SEL_CFG		48
+#define IMX8M_CORE_SEL_CFG		49
 #define IMX8M_DRAM_ALT_CLK_ROOT		64
 #define IMX8M_DRAM_APB_CLK_ROOT		65
 #define IMX8M_UART1_CLK_ROOT		94
-- 
2.47.3



