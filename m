Delivery-date: Mon, 28 Sep 2026 14:57:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAvE-007IRE-2U
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:57:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 42C302004BB
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:57:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=idcM2HJG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PPjyk9LT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790600252;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VYgyZZU8zkXjPgKO0L3+vnE8paTYOV12NQIw44vxbig=;
	b=YMqH44+TzZXuyZRXXqwSQV5xUJ1mMSoM6JHqsrm+Np9UNtKYoH3tfY5E7ogasAaMmYQWpX
	tFxHbcExgrDyg2kU9WFETv8S9rGPw/fYj6o2mWY67lmMhAJoftac93rPKilpu0+T6qQEty
	MxdGl2PQMfSs+fsyLtHrJ0KTlcucbw1sbaA2+vuzzPPXservAd7vasQO6Axy2P6Q2zPmzD
	8yWXNqyCr88z889bp8PzaQCzDQh3yUzlzb094YXxV3cRulIKWFzeOi3U9BQwgVbMhot/iM
	lwzXlgouAf0dYsjBeh/+J71L++sZYWIzTqiOZJhvha5u5QlpuAMuBiedmGYqHQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790600252; a=rsa-sha256;
	cv=pass;
	b=PA+AofotvWtNiKyHsy3Fqo0Nx6Rm7+H33I2G0OZDW6ft3X4iQ+M87CTmBQ/elipI4iyfNw
	FZX9Bxg7M0g1hZSNrcDJndC18jmB8riKY5Da795MkwfygQNowBasMcCgdePRuoyvm9g/lg
	DjzRZ7TyVH10KcYwc5a2e14H+Epp51k/O7BlXP9usKxCpJ19kEkW9kGxXvhiF1glQfw5TV
	44ZLBqi7qVvGej3rc/qPCkUZAWrOODXL2q9uPngmACg3tJO3UUwjCF9PtaTaw3PD+AKu3b
	INzPuRGRWXqIBxpj4wJSFdmCqOovEcvwDZfw1Yplk89a/wnZzRa0sZXqr26nnw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=idcM2HJG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PPjyk9LT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VYgyZZU8zkXjPgKO0L3+vnE8paTYOV12NQIw44vxbig=; b=idcM2HJGF/e81NLIVMhfPyifmA
	lj1FDp/GlXqsqmWNKpdk5qf1BTgrCdlvd1+D64NBxEDPN+0jfN+Ir2ImTeeHpmvIB3rJkMlMzMT9L
	b8Tssf6cWXNswi6H2th54wScxSNntShi01EUFDlzXI5ulx/t0hdT2BArB2cVO9QJ3GUWiLQR5OKBI
	VVS2YwuSxSwPx0jfMqPtfsqHxjgEBmgG54Uh1mCVhIXaqbpIZwViKVBOJuK5Pjj9EPqzBN4pz1tGk
	a5XStRXmsJxvN3EdDrDzLhygaohfy55RAQl6YGRkuLaVMLyl7wzFWbn0KNKHvm8bx49ubzJwC2B0E
	SsXCAVQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAu3-00000000bcE-06nh;
	Mon, 28 Sep 2026 12:56:19 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAtz-00000000bbu-3bd3
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:56:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 198872004BB;
	Mon, 28 Sep 2026 14:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790600174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VYgyZZU8zkXjPgKO0L3+vnE8paTYOV12NQIw44vxbig=;
	b=PPjyk9LT+AQ1lRqnA8aucvmjcmKrT3OtkP6OrNV83BdCEucFlLLyJBG0ZpOFEo5VyF5r/X
	v9VYQaEWVy58WvHBLDelyD8izLJ6SdReBkLBo78jrYO58El80QYmgKdNPWvM9W7EwqBcMT
	twNZrJj6yrHM3UZ2zEg0OLzRbGS7grh86oAmpv/n9Ynw457yH/npxtq+2aX5911gv+A+cX
	Cn0A6WMoC5uHcMc8zi9aSlKT5m4EV2BKWHNSND7bNkDNvDEnZ8ckJEHCgZgFcQUOcRG0UC
	uJuMS/08zKdPhGb+syJK+MKtgH0eiiu9sjSaO02fhjznZ0LZThT2SMiV7hmHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790600174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VYgyZZU8zkXjPgKO0L3+vnE8paTYOV12NQIw44vxbig=;
	b=ZqoKNFM5m1ROrsUYY7Q1FrxutTKbBg/swby541JgU6m6EuOOCDJTscQCePPASQnB/hNaSb
	inRJqigKIZlVJUqHVou8C9TVPERLU1HSJ7A6EhMNNrvzLm84IIICEj8wwwN61QiXHdOkFj
	sP7su29cKKcNoZpkxv22+OSAJrxEI6V3loKsbiJa4oduryJHE+jF1hqmfJcGtrEB5kjK6q
	B1BJB9IIfclv8IjR8ETy+iPcwK0n0wOrax6iN9tRNENjRqmgEDrQ9n7ZbEDRbyfntNGayU
	ozo1hzC5QUNcSTsfk0f80zx9jK09/kY9jVF4JxQ0UhZRxMEnjkaYI+QKVJ9wYw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790600174; a=rsa-sha256;
	cv=none;
	b=CXZh1dWX/LxXGgQomb5VKXOaxH+vvpxbwnjOE7/eWYn+iGT56lArDf2Ut1aa1Nt9IAYJKG
	qQLMqPSxt6aO9XF6SA2EcNTudLR1/jK858zY463yHt3uhsNxpWR+U1tQfoLAz87yq4i+oP
	BON5WTn/Mpiam+Z2QwuZs5fZLC2gr8wHbZuKKRFc3qyyUWnCWEWP/cICWu420Aa8z0v7UH
	qGDoLdW6sW4lS/2u3N7UvmxhSMLXw21ZR7opbgNuheI9XwmkbZCNtlk/2FR1YcfneIVnhO
	Dd/JGn3rbvnwwNC2YBrS8XvdE+61/beDUNX0shL5MLqyQCPzRS3uMWkkspyE3g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAty-003EEB-05;
	Mon, 28 Sep 2026 14:56:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 14:56:13 +0200
Subject: [PATCH] arm: socfpga: agilex5: define QSPI flash registers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-socfpga-agilex5-qspi-v1-1-fb12552e04e4@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAO1jumoC/x3MMQqAMAxA0atIZgO1oqhXEYca0xoQrQ2IIN7d4
 viG/x9QTsIKQ/FA4ktUjj2jKgug1e2BUZZssMa2prcd6kE+BocuyMZ3g6dGQSZDZu6odn6GnMb
 EXu5/O07v+wFCp0ytZgAAAA==
X-Change-ID: 20260928-socfpga-agilex5-qspi-ec0c0b8c3afb
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_055616_062211_E0F47133 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  After requesting direct QSPI flash access from the SDM firmware,
    barebox gains memory mapped access to the QSPI flash controller. Add the
   registers to the SoCfpga memory map to be able to use names instead of registers
    when initializing the driver. 
 
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
X-Rspamd-Queue-Id: 42C302004BB
X-Stat-Signature: e1oe333f6wdg369fjb879pb6rsx5nfth

After requesting direct QSPI flash access from the SDM firmware, barebox
gains memory mapped access to the QSPI flash controller.

Add the registers to the SoCfpga memory map to be able to use names
instead of registers when initializing the driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/soc64-regs.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/mach/socfpga/soc64-regs.h b/include/mach/socfpga/soc64-regs.h
index fd8cfa17ba1b..1c1fb705526c 100644
--- a/include/mach/socfpga/soc64-regs.h
+++ b/include/mach/socfpga/soc64-regs.h
@@ -82,6 +82,8 @@
 #define SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS		0x18000800
 #define SOCFPGA_FW_DDR_CCU_DMI1_ADDRESS		0x18000A00
 #define SOCFPGA_FW_TBU2NOC_ADDRESS		0x18000C00
+#define SOCFPGA_HPS2SDM_QSPI_REGS		0x108d2000
+#define SOCFPGA_HPS2SDM_QSPI_DATA		0x10900000
 #define SOCFPGA_FIREWALL_L4_PER_ADDRESS		0x10d21000
 #define SOCFPGA_FIREWALL_L4_PER_NAND_REG	0x0
 #define SOCFPGA_FIREWALL_L4_PER_USB0_REG	0xc

---
base-commit: 4a752d2303440195e12ed1a4e642b0be5b450b8e
change-id: 20260928-socfpga-agilex5-qspi-ec0c0b8c3afb

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



