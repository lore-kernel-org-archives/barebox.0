Delivery-date: Fri, 02 Oct 2026 13:37:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbZe-008pBB-2d
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:37:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 48DC0200758
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:37:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ivMr2WiN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="cnl/BQcW";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941030; a=rsa-sha256;
	cv=pass;
	b=TctDdNcHYAONRUDbWHq14oXYPPOc0aCOGyXJ5i/iMKPxTC3CV60Ep390+nkyfxX+93wTwe
	TU5TQDrwl8VV48spFVJKS1ehZi/S/FJ8hilHWklgqsbuD3wT2qrjrctOQJ7D9JvywA9EAO
	gGwcq/pplyvFtLG0HfeRLmwqGnPTYaAJXgsBmZuMORE7y99URKWlGdUZwD8sJl09Wt/3d/
	guyHMnsYhcskCP2Px3/plStqUKnvoKC8aEqhaT60IDyD3BSIpjqBMjNS4UnR+6Ayh/2kwV
	VTT/TB5+O4Kd45trNvVhQHqN2ebAZinQyKJDgcVDzsgQHbXfakdy1EIgonuVwQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ivMr2WiN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="cnl/BQcW";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941030;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NvJ7+l7HKTy0sSEXA/0yK+UJq90ci0/IuFs29XQJivA=;
	b=V+07iorN8fVBxRLmnpIrHldiXGjFRvcZMP4vS8YqvUt/IzqGZ9HEwKu/cefjZGcdHD1uPq
	piXZRAdvaNcyR5caKfRdflx9GqRmrT7PQu6CWLPs505gp5TeZIR4jAb9pCh2q+mUPqe2EU
	dx67k7LwiAqvZJVSn/RV7tI1qebHoLog999+Df4f7Hpw3GGNYDGTR4h47WMRcQUNbWFbQ7
	vgmjzEWIr6hb9ojvgmQHCXEoZ9WnJ+Fhrr6w6c1elFG0e+zyQmK125rrQZP38zZBpvoxh/
	AZ4VaPbOWSlwNj4d2D6R9DGwYEFOnK3zqQj99qsRHMUsN0p6Oh7oWDg3+wQINQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NvJ7+l7HKTy0sSEXA/0yK+UJq90ci0/IuFs29XQJivA=; b=ivMr2WiNqRjiq4+fsGxx5yZBU0
	W4rM7Jr1oqZhbIZqHp/fpA7Qo0od9Am5/kPJov/mwjKiFRPJU3/0roGK4mqffpRtf9gB+gkzJysPF
	LrBchX9SCMJBIynHDxkggPPJ4U77jupZ8XCMVqJy+bvTJd4hIyxAZYx4JTXA0JCRNsoWCFrMGPE2R
	EViFlTz9sZd46FLkaljukGtPRcEw6IBx+IGpA9j6ieA7hOOiUlH8i8hwiIAHkUbpYqcOCiEMVWWmv
	9ioPNtthW2AKyDNRAVI1aQJYoyUo+M9fsRYiYZeFw+HPxme+QFu9UfTNk9X/mYuF/1FkUNuWcVcMc
	OB2ixmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYW-0000000BUP5-3ESo;
	Fri, 02 Oct 2026 11:36:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYS-0000000BUN6-3sZZ
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:35:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 39C8320196E;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NvJ7+l7HKTy0sSEXA/0yK+UJq90ci0/IuFs29XQJivA=;
	b=cnl/BQcW1XmNwWYkzVUgNUHl0DLrrQOt+RAErcgsl32oeaH1oLAW4xF3cXy/2zkZ0nzYe5
	RCGtFGfZJtqH/rP/FSLGhFz2WH0Z3OeIoF+eZY6Hm6e0K8WsFNkVZV84GOdvMF1t6siR9u
	ymOgzqwrKY2LfjlRLzacM9vEetD7nGB2O6QP9An3vkjmWF4YwiRW9QS14oVjAhDCkkisos
	7oOCf1EHk7pU0N1Ie46w4E2WTcG8ko3hemDU8qFvcOboXmRhrKn+QvRjuG50G5dQc3g+eq
	YbtVwARmOHAUXjYGPcblmfOvIcZ/MVL8XOQ0/FOJvmrfJZ4XaFdWUOL+G+pPTA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940955; a=rsa-sha256;
	cv=none;
	b=ENPFdiXrbhNRy5hcIPfQg10KzeVwAZ36jfkcuXYk2Jw8r8DyV7zWamGYtlR7qXzJtMNsp+
	gMMj+BadugnIMBzTFJurdZ/HUDDdNujqBrlGW7Qp4PIDJvv40JH8JWvX/nvA0ve3PoS2Gg
	EHstH4r+4tmZ+KzdenZct5ZUbYIJMUudXucUcHP0ANtXfBxjyEJSpi3+nk5UXv+mrVndlM
	adp1/hrRTGYo2V/NflRIuv/t7LyyPawVUM4BIBEDzh3fHDU1Jg5aBzpjmqyen+/AXbChxh
	NPCcZTliN41nCh5X4TMFQgTCGW0BaEUF+VQYyrFYlflQ7O44oU+6uRZaShhE1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NvJ7+l7HKTy0sSEXA/0yK+UJq90ci0/IuFs29XQJivA=;
	b=Ebh6pPTADdEaoIlMEZNcrwnEUwrGlRpe1qOSnwZamYmDs1mW/2S/sB9Uli4OqDyJIYdBi/
	4O7XHCOf7m1gcp/XwR1aH/0HPXBIFVY0aGPcQxuB+0Ltdw7Zsuiwvk7d8fOBKpNxECONok
	j1wFveGekArn/MBqhFrq4cDSTYUl9DX8YEf2xi9NTB00ru6aPqEjEfKoho01rG7SJuDs2o
	Gjm09Jq63/jzgCinjViAMI/k2t/G9in2IcTv21hnhliRSfybNxHqvYtORFlwQKXxqzQWQX
	qBjVcAefTPqR7hVGN1rd/a5aPjCIjY1ve4zuZjZBtp6DnHKj3BxSrB/dLk+vDw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 1F84A741708;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 4/5] ARM: i.MX8M: source dram_apb from sys_pll2_200m in early clock init
Date: Fri,  2 Oct 2026 13:35:49 +0200
Message-ID: <20261002113554.2902941-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
References: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_043558_312657_7D7C9EBB 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox derives the 200MHz dram_apb clock from sys_pll1_800m
    divided by 4, while U-Boot's clock_init() selects sys_pll2_200m, which needs
    no divider. Let's do the same, so both can be compared side by [...] 
 
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 48DC0200758
X-Stat-Signature: emicgmodggz1fddkenbxewk97wo97yxi

barebox derives the 200MHz dram_apb clock from sys_pll1_800m divided
by 4, while U-Boot's clock_init() selects sys_pll2_200m, which needs
no divider. Let's do the same, so both can be compared side by side.

Move the DRAM clock setup below the code enabling the SYS_PLL2 outputs,
where U-Boot has it as well. This is ordering only: all SYS_PLL2
outputs are enabled at reset already.

No functional change: imx8m_ddr_init() reconfigures DRAM_APB_CLK_ROOT
via ddrphy_init_set_dfi_clk() before the DDRC is first accessed, so
the value set here is overwritten before any register access uses it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 66a3b376ed94..23a920ffae2e 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -59,20 +59,6 @@ static void __imx8m_early_clock_init(int cpu_type)
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	u32 val;
 
-	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_DDR1);
-
-	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
-
-	/* change the clock source of dram_apb_clk_root: source 4 800MHz /4 = 200MHz */
-	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(4) |
-				   IMX8M_CCM_TARGET_ROOTn_POST_DIV(4 - 1));
-
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_DDR1);
-
 	/*
 	 * The gate is not exported to clk tree, so configure them here.
 	 * According to ANAMIX SPEC
@@ -96,6 +82,19 @@ static void __imx8m_early_clock_init(int cpu_type)
 		INTPLL_DIV20_CLKE_MASK;
 	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
 
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_DDR1);
+
+	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
+
+	/* change the clock source of dram_apb_clk_root: source 1 sys_pll2_200m */
+	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_DDR1);
+
 	if (cpu_type != IMX_CPU_IMX8MP) {
 		/* 8MP ROM already set GIC to 400Mhz, system_pll1_800m with div = 2 */
 		/* For everything else, config GIC to sys_pll2_100m */
-- 
2.47.3



