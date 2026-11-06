Delivery-date: Fri, 06 Nov 2026 12:34:35 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPIDK-007zT9-1n
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 12:34:34 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3548320041D
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 12:34:34 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HtShXgbN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QgPJB+zM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793964874;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RCUl4NoYBD8wYr3z8sfNWYiqlESWmmIHcqnbHgG/P50=;
	b=grhMfeQbsbsMaFGHIEG+WuQkkCBsZ25TEaNtxs3yk0sWwTHkRqNz54sEVRZ6HqLn0InREr
	RCt4AyIpPIb6LBmfE9I6vo2ranFakQtguCtg1HbgJWCXbx3iiwUVbaGV+ai88DmIl6J3TJ
	kqNUiSD4ySwCxFOj7kYcWOzYyhCNJH9Ur8nwAbVjKl9Qdldk0VekuAubuufIjJj7jbZYtF
	n3Ho9ZRcQQROHbYbvOOXLBshL4WmL5XDRYS2alYg5bgNjxax4Oagb8oM+TGE/QJAFCCGtQ
	vY/Ir2s1fBPRD3iyObI94JSzOmN3sFYTJdgWpvklVtd5vY7c61Jfe6e/I56bKA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HtShXgbN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QgPJB+zM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793964874; a=rsa-sha256;
	cv=pass;
	b=Y88zbAKo4CgohHDmmYeYCH02bGB340wkkkJMrU69K9BFDmVw0L/b/cOLyj6af4FjSnAtn+
	gSHvCP8r6rvkfy+ThqDQOekPc+/8EXV6dZ8nO9nkxbjb5aMocp1lB216Op5CP1mGUQH48Z
	ZxJdzh6BPYHj4VlHDNSnfTLB7uX6ubRSy5VXzNYQ9xQAlzg1G7S4E8pQw8wPtnLKfp02Lb
	O+voo9ZIVY2s0mjIjD39E+jZqbQLWRqjtdu6kFC13Mhmyg0vkgParpTPYogYC51+ZbmAwS
	FWAqzjZNvlLgWY6jybQqLLcsw6pf0aqiPcX2bQXYhI3QFOhI3CgGe3+7yMOXmQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=RCUl4NoYBD8wYr3z8sfNWYiqlESWmmIHcqnbHgG/P50=; b=HtShXgbN2Owqt4
	+P+YxJbzm12awThaITOqvlQoYVUOyKVh70q+Es6M5q4NY0uBNhDXsKgrdNlTaoDMJesqK9+tQDXA3
	QpFdQjF4/TQ6ySe0evJRIRp5Kg16AdTEksp59ppgyI4cfyzT3V+6v7aMmRNx0kTN4fc3grvZdPidi
	8Ax2Oak3WQuUJK6DgdLjPF2R2POTPEdDhdZHPgu4JXuPSgS+BxIYoTZTknkd1zIm9NHB0ftT7M4wd
	cRcGRgFcGqw3PG9Oj/cCx9bLZjcltmZhyyicK+srd5cORWhepW2oj/4Bp7vK5V8teKyUqyji1o6Q3
	q1F2UoG0+UOIylY3nl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtR-0000000C6nB-1aYP;
	Fri, 06 Nov 2026 11:14:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtN-0000000C6k1-1xL6
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 11:13:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E394B202A98;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RCUl4NoYBD8wYr3z8sfNWYiqlESWmmIHcqnbHgG/P50=;
	b=QgPJB+zMA8UaCRx1T1jxQib76Tu86xwkXpowCdzrxHJFfDS4SZcQHZMo55M6GQgbBC9xFm
	ng34l5/AbByLy2c2RNdQLgGYePOud6auCcm5tMCGkOaSINZlEPn0rWKdAKH+bYOQlrd7Dn
	CcN1leMJqxlM1BxdfvyqnBqKhiWWJ0q18T1n9cVF9/iQ4ot6CUnAV1GTU0dCykOKRO0FM4
	65dnIF9yOTXd+nCmFF/rRT4HDhqRMA0dfQQsTLfvd+tdPbpNYxHvNUiUUKrVD42fBX6j6l
	geLmeK4PONj5Br3JVvx8LdJ72vig8bfZ25vnJmAEcWyB+AAWJUwUF5Tlnv2jKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RCUl4NoYBD8wYr3z8sfNWYiqlESWmmIHcqnbHgG/P50=;
	b=VhWGq1JgqZi9hfGC7TMZ9kp4v/S0mEni6W5dDhm2t0GZSpNvobRxQOH0w/4ae0Mokh88bI
	6YbqYoWG/gRXrV9iuUGHLqyV0I+eXx0Lbufe5vIvIW1ptW8VwS6h2l6qg2E/fGF8984G/i
	8Tp8tNShZ/vOo8t+w3ZzpniR0hj0JOXQCHqd+mNCXKLtlkTXxUzXLohre9kTr/bKNJsR+l
	MEyeg3SP1YNI0fI/pBR8iNK5qmn4PPsohCzGzV1iw9Me7uGw6vrJl30MmyZEY4Wglm1Fmg
	Y3N7bTjU1sUeS7YTlGRnSatim6qhMxbAh0HICGldF2oNKjRFzTGesqgfQvlcuA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793963633; a=rsa-sha256;
	cv=none;
	b=JxQA25kXklRnBjUhoJ6V6KBgSzURwYLfWkXOZSTuUFAvyRy18jtTvVD0RkkvH9yOSYSXxi
	7sNjVm187vQKXpkSlIB85+rVZTuGIOyXKKB1j6g/+8y/9IcnZ9I0RE+9cnkodCh74ETBFK
	eg+4dasd9Jyw7/2pa2m7TPbiiaDZHakBmU2rAJt/WACnl85kVSMZp1OpY4+SgU2KtxCZyF
	LDpHtxJZmf1hYvOPTvKhf0s4yvGXZcaua83iuvEDoCwHs/nBaPosImIbnN/2mX5vNkEgl+
	360Rd+YQ64aMJDNfbBtUk/SZd8cRT11flzXB6XxHKhqzZLU5oxvhltbfO8cRCA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C9F28741572;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/4] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
Date: Fri,  6 Nov 2026 12:13:50 +0100
Message-ID: <20261106111352.3535034-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
References: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_031358_003102_08F68049 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Alexander Shiyan <eagle.alexander923@gmail.com> This
    replaces the low-level SMC driver implementation with the MFD-based driver
    for SAMA5D3 platforms. Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
    Tested-by: Ahmad Fatoum <a.fatoum@barebox.org> Signed-off-by: Ahmad Fatoum
    <a.fatoum@barebox.org> --- arch/arm/boards/sama5d3_xplained/bo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: 3548320041D
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,barebox.org];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 3cgbub5w7nwfidfzsxh7dqktzjbfnjtk

From: Alexander Shiyan <eagle.alexander923@gmail.com>

This replaces the low-level SMC driver implementation with the
MFD-based driver for SAMA5D3 platforms.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Tested-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/sama5d3_xplained/board.c | 46 ------------------------
 arch/arm/mach-at91/Kconfig               |  1 -
 arch/arm/mach-at91/sam9_smc.c            |  5 +--
 3 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index c6c1105e5eb5..a5530bc49acc 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -3,58 +3,12 @@
 #include <common.h>
 #include <init.h>
 #include <envfs.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <mach/at91/hardware.h>
-#include <linux/clk.h>
-
-static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 2,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 2,
-
-	.ncs_read_pulse		= 5,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 5,
-	.nwe_pulse		= 3,
-
-	.read_cycle		= 8,
-	.write_cycle		= 8,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
-	.tdf_cycles		= 3,
-
-	.tclr			= 3,
-	.tadl			= 10,
-	.tar			= 3,
-	.ocms			= 0,
-	.trr			= 4,
-	.twb			= 5,
-	.rbnsel			= 3,
-	.nfsel			= 1
-};
 
 static int sama5d3_xplained_probe(struct device *dev)
 {
-	struct clk *clk;
-
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_sama5d3_xplained);
 
-	add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
-			   SAMA5D3_BASE_HSMC + 0x600, 0xa0,
-			   IORESOURCE_MEM, NULL);
-
-	clk = clk_lookup("hsmc_clk");
-	if (IS_ERR(clk))
-		dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
-
-	clk_enable(clk);
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
-
 	return 0;
 }
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index df20943254a9..fb55c9c2817f 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -107,7 +107,6 @@ config SOC_SAMA5D2
 config SOC_SAMA5D3
 	bool
 	select SOC_SAMA5
-	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 6c9e169a8e3e..66b30694ce96 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -14,8 +14,7 @@
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
-#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
-				 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
+#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
 				 ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
 
@@ -27,7 +26,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
 		break;
@@ -101,7 +99,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
 		break;
-- 
2.47.3



