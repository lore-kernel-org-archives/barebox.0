Delivery-date: Fri, 02 Oct 2026 13:37:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbZh-008pBv-2w
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:37:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BF52E201F18
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:37:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RmLDj5QS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="I6RD4D/B";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941033; a=rsa-sha256;
	cv=pass;
	b=JHqJv8gF8iwEgOqwiJ22ns3QxcD5KaF8NtxngsLetHfiwYHCaHSo80IIT9LN9HaQZFB9Fw
	K5XytjDxi6vXrDx+JT8u/8dlUaD+jNbxLodIRfReEcr+wInKk5hp/QK0J54r68cvHmi1GS
	yuR0jqJrqyeRobP76bz1XS0TFtIvC44UIioxvjbM9pzEsAVMnkRHbm6rKLs6ct/SFEhRBJ
	rEELl0vh9tZWKnrq4T4eODpGdsW9nM5ufsAZXEvGaW7gkAB+YLBxD2R/Lb5DfNNV2ACv9s
	RKcn/NXSjF7gFiFjIoXP5Rm2jFn0xxp0AghCiZ9i3jJ0Mi/eRyyMy/AqiaVI+w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RmLDj5QS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="I6RD4D/B";
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
	bh=dU5eqkvxH2Gvox1PfxvwWN7YaLb2DdAqPfJVLKB6deQ=;
	b=SlPWWXaNWkZr6rC9swl7Hzb53Ez1mepbKQPlYpCwja7eRpFFNVIjic6p45TFfoGFaRY/f5
	mkkCDEfg9tgS0Y4cSXrPy6vw5nVHZ22RhtWhmUCjfa6iu4tAU2cCIKRZGJwOrcSTLxgIZk
	oyBro69SgRlHKElqgaKVobjNQEBArd3za1pbjAHglwhPESPqjTqIYS1yCd251SxgCyDLym
	cJeBZzyyMrHqPyaXvEpJ0W6DoXNa4WVVxW0xzc6rxCqw61nUgb0TiMeJfL2V6TillXMs6Y
	ujnZdJvYQu1vRkq+z9gaqVGT8A1KySr+JYCY11YvOu/uzjDcZapXq0aveIIr4A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dU5eqkvxH2Gvox1PfxvwWN7YaLb2DdAqPfJVLKB6deQ=; b=RmLDj5QSmIwyim/ZRBq5Yt31NB
	8cFAaAhY74YmX8UTbgtBbmLpnBy55TiB2x9CAT28TD+BIe2j4T2lHhysBtFRnJaAhOUzwLNXgS2dU
	zi8fnzDoOvjKgIa4RjnuiMUJ2fLyX9Tecci203OrZcW+48iJIOCcsE3GaQ567gPJdFTeIKd3p3lgF
	0iOzrelRSwud/i8NtEckWUILkaVRXpASi3o3TMT69FBQXOe/dltAkM5GevK3gMiXkw+gcuR3sqONi
	nUOsX9MwuvD8YbYXXpZ7BaUH0UJV6QN4xjZ0cZgc2cNeEHYWOPjUsjYrABrgfGc8AWLtavSZs01xX
	WJkmDG3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYY-0000000BUQI-1vN2;
	Fri, 02 Oct 2026 11:36:02 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYS-0000000BUN4-3t1J
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:36:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 277422003A3;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dU5eqkvxH2Gvox1PfxvwWN7YaLb2DdAqPfJVLKB6deQ=;
	b=I6RD4D/BZNKial+lhzNTLCn4Jb6dutXhg9Im44l+ucK0ohJmpZ2V6KjDlUKy3a45rTifEi
	C4hflVFePnK4M/7vzEj1DYhH/+OtsJeNCMCQ8bsdVTq+hptsQwae3NGJXNnHElK2GfPIIj
	HFIejJUTscq/q7EZdfYn0aCfMk8lzqz71mjUFjSD93HY4cMRn+DRAHc7JDszKTX++U6V44
	ubz/uMq1NJkkqQXa1/OiniXg9B3+puwWffp8i1b+4BI9ekS0LdLO8NKEP3T33E44qejZ6i
	S+bpAg3lUB/anVZmatqCfBWbjPHlBLLREWHvYedzxAEXDSGWiODnqNWN2fKB7A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940955; a=rsa-sha256;
	cv=none;
	b=SVFuA2H9QYaO+243EqxL9S+q8yzN5ErNeGiV64KidJlEahZj7QKJqvd9N4Naknx8zxqx2Q
	mRQswaVuzCzbWVrZbLwZXjLQ94IArRHHIKJFFSLdYzK/9Ens7hz8xS+XDlyEQbjsyIW1Dv
	wXRiOu8/cIg16zNkfFfvyaEESwFDsLFi0/Csh3AldqXC66JWPhDGTEgzSSaPz5fghgbdnP
	HtklpqHoPA0O/C8KBwGW/bdps2PdxJoFnzkzlRbMERy8uIBlVCUAoMReaQKNS5emYDNoZP
	fOK2gbJ9v03oqxmDKYTTI+uLFX5eTDYlrcCfbCzcPvbssso/97Vb6DFWSzIkiQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dU5eqkvxH2Gvox1PfxvwWN7YaLb2DdAqPfJVLKB6deQ=;
	b=bCxDQ2liypUS4U+1CJhQP853Bf96CjI1tBfTcsRyvah8n7amF/nwufed8Ktfuf8SP0IRkd
	12VUwKQCBFjbYirV/frdnTdtvRreefLNcT0VtuwOtmYDUrnGm0AD9XkIAx0GZfex6xwodJ
	msl4eL7dM1x+k1KLMSqKilhMTr/rJtgJ9eZtMWlk/vMqfvGhyWdZm7+5zBrq9uavdIBZUB
	1yemPkWDlaZnikRVh9cK534RdtIS7JzKiCMqOeCipV49jiKkJpgwtqwXHDEWyRXkIOzxk+
	Z2I0kbfzgRFNAmhFC/QT1W00KqlWgo1U1jl3lLUZkDdIM4i7FKTz33j52eRjbA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 0A105740A5B;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Niels de Koeijer <NEMK@bang-olufsen.dk>
Subject: [PATCH master 2/5] ARM: i.MX8MM/8MN: clock NOC from SYS_PLL3 in early clock init
Date: Fri,  2 Oct 2026 13:35:47 +0200
Message-ID: <20261002113554.2902941-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
References: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_043558_318865_E21ECD34 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox never touches NOC_CLK_ROOT on the i.MX8MM and i.MX8MN
    in the PBL, so early startup uses the ROM's setting: sys_pll1_800m with a
    post divider of 2, i.e. 400MHz. barebox proper later reparents NOC to sys_pll3_out
    as requested by the upstream device tree, but the assigned rate is 0 and
   clk-conf only switches the mux, so the ROM's divider stays and NOC runs at
    h [...] 
 
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BF52E201F18
X-Stat-Signature: 1xtm8ejjca713opmjssiurohaagsr8iy

barebox never touches NOC_CLK_ROOT on the i.MX8MM and i.MX8MN in the
PBL, so early startup uses the ROM's setting: sys_pll1_800m with a
post divider of 2, i.e. 400MHz.

barebox proper later reparents NOC to sys_pll3_out as requested by the
upstream device tree, but the assigned rate is 0 and clk-conf only
switches the mux, so the ROM's divider stays and NOC runs at half the
SYS_PLL3 rate: 300MHz instead of 600MHz on the i.MX8MN.
This was observed to make an L2 cache miss about 10% more costly.

U-Boot's clock_init() instead writes NOC_CLK_ROOT in full: undivided
sys_pll3_out, i.e. 750MHz on the i.MX8MM and 600MHz on the i.MX8MN,
both within the 800MHz maximum of the root.

Let's do the same in barebox.

Reported-by: Niels de Koeijer <NEMK@bang-olufsen.dk>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c         | 5 +++++
 include/mach/imx/imx8m-ccm-regs.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 3b2833a07ec2..533e2877237f 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -124,6 +124,11 @@ static void __imx8m_early_clock_init(int cpu_type)
 		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
 					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
 					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+	} else {
+		/* NOC from undivided sys_pll3_out */
+		imx8m_clock_set_target_val(IMX8M_NOC_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
 	}
 
 	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
diff --git a/include/mach/imx/imx8m-ccm-regs.h b/include/mach/imx/imx8m-ccm-regs.h
index 035cd13ed694..42d0c485f25b 100644
--- a/include/mach/imx/imx8m-ccm-regs.h
+++ b/include/mach/imx/imx8m-ccm-regs.h
@@ -22,6 +22,7 @@
  * Applications Processor Reference Manual
  */
 #define IMX8M_ARM_A53_CLK_ROOT		0
+#define IMX8M_NOC_CLK_ROOT		26
 #define IMX8M_NOC_IO_CLK_ROOT           27
 #define IMX8M_DRAM_SEL_CFG		48
 #define IMX8M_DRAM_ALT_CLK_ROOT		64
-- 
2.47.3



