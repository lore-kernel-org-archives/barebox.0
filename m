Delivery-date: Fri, 27 Nov 2026 10:43:02 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWsTu-003mYb-2y
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 10:43:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 68EA6205A77
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 10:43:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tnDYcIoH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FCHGxBUR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772582;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7Kk64I9uyQ3AwpjZuR1LtWZw1TbArJ3x8cWDZaVfN68=;
	b=IKbE8oWVtOcZih7dqVCHswwQGvr6TgpesT/uvBXJP7zamH+obGjmUjJsevOGadHLKCZyRv
	X3FvFYuSaM48WfSJC/c1Y0fJB+zEAbgioq2xUbvnqrf4BwTIVKQci9yqn/q4bF/+l/RIxG
	QsFLAXiqRwDdXvz58874AkUKzouGaKxv+tgWegAUiRjGR4nGSdtY8s+9udRUU8PhBcUbOl
	UHv0S5abM66HXlra3fd7YwKHYzD/pBUo6l3PkA0fz785SFHPNjtKAWsMoeLLrmUxN+xcYo
	Y3ApxGThvw9OKArRUJNbY1FB9bJJunY23/8WP+h9Ma3d2Pf8yVw/enZ1cTkJIw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tnDYcIoH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FCHGxBUR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795772582; a=rsa-sha256;
	cv=pass;
	b=aYu7QbQ6EJ6oSYwVqgQUuajrG31BGkuCU6U3SU8g3iDf2N1eAoOmiIsTFXnVjPT+9bSUXS
	+dUyqp4m8X8sPyWQWDRB/cLYYqUDd/t7BguzvgIKcb6tz3X8EgdvJV4HBHMpPBC2EZZp2e
	LxlrqYXLbJpV8S2kFoG7tYSjilLtatwaoQd4dMYJ9AZVKHpx3nCamdBO5TBE6Id6jw4KEW
	PO4HpeNQ6Y7aGEzPwU+li/YJ/WJPQfWT4RWsecWUgZaAQ+QIV/Dsi5tzxdbLIMYDP8o7I7
	RQgo+oKYiB19uCFJezyfQAWZe+njA9dBm3ccjTtstz06wI27MXEJDmwEpkJc5Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=7Kk64I9uyQ3AwpjZuR1LtWZw1TbArJ3x8cWDZaVfN68=; b=tnDYcIoHS4gwcK
	C2YS/qIPya8DNeMy1N+OzWxr3R2MP2XzEwNNEMSOtDNt93Qt/1X9qYjHy3IoRD/UUuQexN/S1r71Z
	mZsF6KfQsN0wF/+pbTyEnHesTIlPkTa9dWdyKw7dLfPTgYaKkMAL35V2WBOtbfL5Df76Vdhhcmxuz
	YKB/abObZHLq0BUvJn4DGWyXJp9j3Ev+o9lBp5vIsz8ZPFFAEMo/gVWZFjasQMvlDG4m5OqWy3aK+
	uRu7CSTbHfaTWNTpdMk9LPJPJ79gIGO67d88O5SWhB9h6ApbW3gmQUvznN2iRzsywEiiK7U6iC+BC
	CEDqNczibE5IKZoyONZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSz-0000000FT8R-3P1D;
	Fri, 27 Nov 2026 09:42:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSw-0000000FT6j-1n2P
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:42:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CDE7D205AB0;
	Fri, 27 Nov 2026 10:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7Kk64I9uyQ3AwpjZuR1LtWZw1TbArJ3x8cWDZaVfN68=;
	b=FCHGxBURM31TLhByjWkrdxuce5bjcIA4e3EsLXBwW/zuvCpUBw/ShMxAMnSjgvtpj3a+kW
	V/Z6oF0oWJ6feptWqbPxgUUcFIcE9zxhup6RqKiVn5Lk71LR2Tec/shTJw/BMyKs9gXyms
	xY1LAzev5fG5huNP5ueWOtkgmsf792qW+UfctKdr8/dby7TyJYCsV+tLhmfmV9xkBefOXM
	xCTDbwilh8zyXtcajNbFO2NvSt5aw1/iNjJdOAcaBpY0WrHOqDfuWZ5heN8z5QYFDIfAb6
	w4IQGYvuSz7dLMeNdbjW+jbAeKz56f8F1DoILK4ihhurY9/sDTc9/tZlFtaM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7Kk64I9uyQ3AwpjZuR1LtWZw1TbArJ3x8cWDZaVfN68=;
	b=Wrwx181+JEMh+L1W57Uk2KM6wVMkjF8xgfneoKe50yxdAnNK8NrfARi/3HPDwnWlbowppb
	XO+TlMUqCLPJAmvf9uivHjzt0sFENTQnoD889CGRYYOv/VPLQxlvHyIrNNweu+34rkiwBt
	ykcwH7JLEAv79tiZZNTyzp8tl+sXuB5pjrRYuSw6I9f0TwKf4fs7/SE5e+AzzvmhOW9/3/
	YJ/6se36n8xAy/cDaR4G1tXOAsdMHteyNvtx5mAy3+b8LI9S1yA7Bi2YSRNi/63z0GiPV0
	AaLG+RlcZ+Iiz6exZmfLIIQAVb4WvtOn3nkyQLO7Y2OjPqFu3m7vNKoqq85GNw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795772520; a=rsa-sha256;
	cv=none;
	b=NuUBQwqPLx7RhXlQygUBrvJnhHwTiMy22Jlqi2LcOzgX6f/KWJ6Yui3xV50AEq3E+4Cu8v
	w3JAceJlTPvyrHvOmNrmTcfuGetZMJG9yfUEHRbgdR16pUy+/PS54CaBPd7xCK6XO0xxsB
	jMkzsZTe5uhY77PSLh9yAwxbWlM4a4IRVf5udbTXn9KslMJTVLTDhGNB7K+h9q0jUNUNU1
	XIiTyR1LPp8HXrev2n1o53JjbMqvJsBvXPJZhx14uG/19wuUNgeZB5wQ1up3rYs/bgpD6V
	f5kcdeO5UdjrTdJU6RV+DEtR+M5Fnk1ek1KghmKpifjZ9h1NM/B5z/eBjChWmg==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWsSu-001iwi-2Q;
	Fri, 27 Nov 2026 10:42:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Date: Fri, 27 Nov 2026 10:42:01 +0100
Subject: [PATCH 3/5] ARM: nxp-imx93-frdm: adapt the 2CS DDR timings for
 barebox
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261127-imx93-frdm-2cs-ddr-v1-3-64f5a99b3e4b@pengutronix.de>
References: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
In-Reply-To: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014202_949366_1EE58246 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Use the barebox i.MX9 DDR header and give the imported timing
    data a board-specific symbol so the FRDM board code can select it separately
    from the existing 1CS timings. Follow the 1CS configuration by training only
    at 3733 MT/s, with both 1D and 2D training. Drop the 1866 and 625 MT/s training
    messages and remove those rates from the advertised frequency table so it
    [...] 
 
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
X-Stat-Signature: wws8zes3mhagc8adcncjtgwyxuzwhpji
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
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
X-Rspamd-Queue-Id: 68EA6205A77

Use the barebox i.MX9 DDR header and give the imported timing data a
board-specific symbol so the FRDM board code can select it separately
from the existing 1CS timings.

Follow the 1CS configuration by training only at 3733 MT/s, with both
1D and 2D training. Drop the 1866 and 625 MT/s training messages and
remove those rates from the advertised frequency table so it only
lists the operating point that was trained.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
 .../boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c | 96 ++--------------------
 1 file changed, 5 insertions(+), 91 deletions(-)

diff --git a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c
index 6dfa637a1c..4aaadf5bcc 100644
--- a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c
+++ b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c
@@ -8,8 +8,10 @@
  * Align with uboot version:
  * imx_v2022 and above version
  */
+
 #include <linux/kernel.h>
-#include <asm/arch/ddr.h>
+#include <common.h>
+#include <soc/imx9/ddr.h>
 
 static struct dram_cfg_param ddr_ddrc_cfg[] = {
 	/** Initialize DDRC registers **/
@@ -1280,80 +1282,6 @@ static struct dram_cfg_param ddr_fsp0_cfg[] = {
 	{ 0xd0000, 0x1},
 };
 
-static struct dram_cfg_param ddr_fsp1_cfg[] = {
-	{ 0xd0000, 0x0},
-	{ 0x54002, 0x1},
-	{ 0x54003, 0x74a},
-	{ 0x54004, 0x4},
-	{ 0x54006, 0x15},
-	{ 0x54008, 0x121f},
-	{ 0x54009, 0xc8},
-	{ 0x5400b, 0x4},
-	{ 0x5400d, 0x100},
-	{ 0x5400f, 0x100},
-	{ 0x54012, 0x310},
-	{ 0x54019, 0x1bb4},
-	{ 0x5401a, 0x32},
-	{ 0x5401b, 0x1126},
-	{ 0x5401c, 0x1108},
-	{ 0x5401e, 0x4},
-	{ 0x5401f, 0x1bb4},
-	{ 0x54020, 0x32},
-	{ 0x54021, 0x1126},
-	{ 0x54022, 0x1108},
-	{ 0x54024, 0x4},
-	{ 0x54032, 0xb400},
-	{ 0x54033, 0x321b},
-	{ 0x54034, 0x2600},
-	{ 0x54035, 0x811},
-	{ 0x54036, 0x11},
-	{ 0x54037, 0x400},
-	{ 0x54038, 0xb400},
-	{ 0x54039, 0x321b},
-	{ 0x5403a, 0x2600},
-	{ 0x5403b, 0x811},
-	{ 0x5403c, 0x11},
-	{ 0x5403d, 0x400},
-	{ 0xd0000, 0x1},
-};
-
-static struct dram_cfg_param ddr_fsp2_cfg[] = {
-	{ 0xd0000, 0x0},
-	{ 0x54002, 0x102},
-	{ 0x54003, 0x270},
-	{ 0x54004, 0x4},
-	{ 0x54006, 0x15},
-	{ 0x54008, 0x121f},
-	{ 0x54009, 0xc8},
-	{ 0x5400b, 0x4},
-	{ 0x5400d, 0x100},
-	{ 0x5400f, 0x100},
-	{ 0x54012, 0x310},
-	{ 0x54019, 0x994},
-	{ 0x5401a, 0x32},
-	{ 0x5401b, 0x1126},
-	{ 0x5401c, 0x1100},
-	{ 0x5401e, 0x4},
-	{ 0x5401f, 0x994},
-	{ 0x54020, 0x32},
-	{ 0x54021, 0x1126},
-	{ 0x54022, 0x1100},
-	{ 0x54024, 0x4},
-	{ 0x54032, 0x9400},
-	{ 0x54033, 0x3209},
-	{ 0x54034, 0x2600},
-	{ 0x54035, 0x11},
-	{ 0x54036, 0x11},
-	{ 0x54037, 0x400},
-	{ 0x54038, 0x9400},
-	{ 0x54039, 0x3209},
-	{ 0x5403a, 0x2600},
-	{ 0x5403b, 0x11},
-	{ 0x5403c, 0x11},
-	{ 0x5403d, 0x400},
-	{ 0xd0000, 0x1},
-};
-
 static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
 	{ 0xd0000, 0x0},
 	{ 0x54003, 0xe94},
@@ -1967,20 +1895,6 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 		.fsp_cfg = ddr_fsp0_cfg,
 		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
 	},
-	{
-		/* P1 1866mts 1D */
-		.drate = 1866,
-		.fw_type = FW_1D_IMAGE,
-		.fsp_cfg = ddr_fsp1_cfg,
-		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg),
-	},
-	{
-		/* P2 625mts 1D */
-		.drate = 625,
-		.fw_type = FW_1D_IMAGE,
-		.fsp_cfg = ddr_fsp2_cfg,
-		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg),
-	},
 	{
 		/* P0 3733mts 2D */
 		.drate = 3733,
@@ -1991,7 +1905,7 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 };
 
 /* ddr timing config params */
-struct dram_timing_info dram_timing_2CS_2GB = {
+struct dram_timing_info frdm_imx93_dram_timing_2cs = {
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
@@ -2002,7 +1916,7 @@ struct dram_timing_info dram_timing_2CS_2GB = {
 	.ddrphy_trained_csr_num = ARRAY_SIZE(ddr_ddrphy_trained_csr),
 	.ddrphy_pie = ddr_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
-	.fsp_table = { 3733, 1866, 625, },
+	.fsp_table = { 3733, },
 	.fsp_cfg = ddr_dram_fsp_cfg,
 	.fsp_cfg_num = ARRAY_SIZE(ddr_dram_fsp_cfg),
 };

-- 
2.56.0



