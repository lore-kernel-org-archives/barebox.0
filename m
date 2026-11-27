Delivery-date: Fri, 27 Nov 2026 13:04:30 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWugo-003obi-1o
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 13:04:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F1D3A202492
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 13:04:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IGWaBMA4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BLhdeajK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795781066;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qBoO9XoHe+JOQBUieLU0+/l6oqs7NODhOB+C39dm1wk=;
	b=MSdzMLy0hN8xzX6iRXVAVZLcDEANDrTKfahM/cqAT+6fRaPxxzwESQ7zd5FAOhShWtAE4J
	a2Z2HG0NjWRYKNY72pTp58ynEi0qHJb/lhROw5d0cEXHOxQZIDt+EsEB3h7tgbQyEPehbv
	O+O0saNiRW6H169Yza4Yq9ku/NYxZcusq4eFIxgGX6HQoUF5PJSkU5nsW/PcJvue9UbLS+
	BM+U69byHB+TNRIRziICP+3XoWzmBfsd+Bhg1YoQ+TBmMhGlD27Z5dLUQDf/J0kcghXzxl
	ivhTBx6WXlbz+NTs/IHgt80bIxaz1HmwX7uSBsZPwVOSkm7QdGGrlQ2SMxSaBQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IGWaBMA4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BLhdeajK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795781066; a=rsa-sha256;
	cv=pass;
	b=XromdgU+lBb8uTohMOvpKXadThcdLiuIP23Ge5eYGBo/sWxOidnWcNHBzLaESgs9BWtJPX
	WFVfIKurxwmnvALk76QYaILlYVWft04bePa2lDJLPxRn3CLyYtfhPti/1pVehvz8rCvFbk
	Pfp82qJMaNLgd+o+7Cfn0TMgoXSHtFUe+mQ+SB7Pi/slmyGDAqOB87VnBTB40+pJCO74Jy
	SNnXWACkBzXAFZcN0/P8vXs2H7oQbErIsMo4Jl7chx4TeHMYlNckiQLlmq7mhJbG8AMIZn
	SFvb38GkWwQEtEO+/+z+9httxeujlTf2QIOFsRsghkixsYpFY8PSR4u6rBBRcg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=qBoO9XoHe+JOQBUieLU0+/l6oqs7NODhOB+C39dm1wk=; b=IGWaBMA4/PjT4BFwpx+UpTAB0q
	t4WFErFrDAl5mdww/cTjYaEvzJMjHiq6AWuKemDav1U/5Pi/QAbh/O1EwlxDu/CKg1Fmayu+efFfW
	w4jSk0DDhQGTXaSLhMdIEwyMYnsRrSzuajJwa7FB6aXusTKO9VqkOCuYcKkD9ecnBTBzkfzo00JVY
	TyWBZJAC/uhz0Wg5EzYXEDGVWjNgLX/JIJJEqC6Z2ZwbGNfNJGORuvTp4EBmQhgXlM6iBLAvGJ7d1
	Y6cdj1HuJCL6Alb7GsE+WbjesUVTQjtJNiFq7FZu2FgXLkp6XnXObK4970SHfc/FrdIPRbLHFnbzG
	MVujoRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSz-0000000FT8I-2xKk;
	Fri, 27 Nov 2026 09:42:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSw-0000000FT6g-1n1b
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:42:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8632C202492;
	Fri, 27 Nov 2026 10:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qBoO9XoHe+JOQBUieLU0+/l6oqs7NODhOB+C39dm1wk=;
	b=BLhdeajKfSfFbHf1QkOE+d7OrhyzrWqqY4WY6/5bkdy3g1k5qCJ6u4z8jXURd/XQpzD5jH
	jqXItBokt6g1Q3Hrc+bayncq15pOZmH2vhYmDL2KsvZCVF66GfPAyngsiinRK/mIAdmOoS
	r1BruW0oGwrhazLU0B0XTXk5bZGQGhnGT9QuovzoPZZQNU9hZccjHjvZR32m5szJZLf7aZ
	Am24M0VnQnqO3O0SwX7yuNOFuT13ZHUw+nDBLa9zGhbHMBPtt7i7JX/VQOF0R4CZEdw7Ms
	2mbOBl8d3HWN3o1gc+JNhqr6y7ZHbk+6kwZoAzepbCIkCMujQFDvfNEeDXe1TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qBoO9XoHe+JOQBUieLU0+/l6oqs7NODhOB+C39dm1wk=;
	b=cnLPkLIz//hQyjfIRs/iKnXuv4D+FY0UwssUeWzfpcXy4DO9GRt7z9/S33Gf1Oxa1QDSYn
	C8WH3w1s7+fTeJj+RhjcvLoILzpyDWlDgZoWdLG+rOEyzk0Rn2yHYGMrXaJZd0xkqxUZQe
	ATg8hfsohzOB6MKbQi4SyzT7JCrVsSV4FUtnSk8g+CQZm1O24bLwm5nvHi1AnoaSHvtuon
	dwCzo7GZc7p3i2qDfDvkDMhDJID0MK0F52S/Ldtsqg1A38XodwgGTHVVssE1S1ssQEca21
	aTnVIdyATYR8x94H2e78LciFJg0Y2ewFMtlGMVJh3XiNF7irOt/L0i4KsrI+UA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795772520; a=rsa-sha256;
	cv=none;
	b=ZuVVYmwdemWcTfz0LTXVuVloxoP0iy2Gr27zUf85e34UYNVuRwGti1CpVo48FMnT3v3Q7+
	+K9AKu9AtaRvJb3+OwTN1ofwisLsEodgdNLm+SSBBrxQbKYSm6vc/xNLlBAhmjmCCeyDpU
	09cPRZ37i3Io/8KfDei6n6t8s1FlU5AbgGM88RK8bqftPreY9HUFVO0RS+KzWvjxrFr26B
	+V5QoVje9wTtJBZvMyHeGFniO2dvS8rAo9PaYD4hYlVhLMTLuFGsX9vJlsmFdtQ7gkFwfw
	pgOzGle7dSMO6IPZM4PQWsZ60pF/DSE/ZIDAq4DhoEO1mUEBSDfCijgTLRoHvg==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWsSu-001iwi-1U;
	Fri, 27 Nov 2026 10:42:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Subject: [PATCH 0/5] ARM: nxp-imx93-frdm: support both 2 GiB LPDDR4
Date: Fri, 27 Nov 2026 10:41:58 +0100
Message-Id: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqDQAxA4atI1g048Qfaq5Qu6iSjEbQlsSKId
 3faLr/Fezu4mIrDrdjBZFXX15wRLgXE4Tn3gsrZQCW1IVCFOm3XCpPxhBQdmQ1rDm1sUt1xSZD
 Dt0nS7Te9P/72TzdKXL4nOI4TpqOATXYAAAA=
X-Change-ID: 20261123-imx93-frdm-2cs-ddr-4d16c5f4bd02
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014202_951056_55362198 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  NXP replaced the original Micron single-rank (1CS) LPDDR4
   on the i.MX93 FRDM with a JSC dual-rank (2CS) part. Both variants have 2 GiB.
    This series imports the new DDR timings from NXP's U-Boot and adds runtime
    timing selection, allowing a single barebox image to boot both board revisions.
    
 
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
X-Stat-Signature: ap1i3cruzcf3rtngzaxwk7z4m6prxngw
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: F1D3A202492

NXP replaced the original Micron single-rank (1CS) LPDDR4 on the
i.MX93 FRDM with a JSC dual-rank (2CS) part. Both variants have 2 GiB.

This series imports the new DDR timings from NXP's U-Boot and adds
runtime timing selection, allowing a single barebox image to boot
both board revisions.

The existing 1CS timings are retained unchanged, as is the behavior
of the i.MX8M DDR training code.

Successfully boot-tested on:
- i.MX93 FRDM with Micron 1CS DRAM
- i.MX93 FRDM with JSC 2CS DRAM
- i.MX8MP FRDM (regression test)

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
Freimut Diener (5):
      ARM: nxp-imx93-frdm: name the existing DDR timings for 1CS
      ARM: nxp-imx93-frdm: import 2CS DDR timings from U-Boot
      ARM: nxp-imx93-frdm: adapt the 2CS DDR timings for barebox
      ddr: imx9: allow DDR PHY training errors to propagate
      ARM: nxp-imx93-frdm: select DDR timings at boot

 arch/arm/boards/nxp-imx93-frdm/Makefile            |    2 +-
 arch/arm/boards/nxp-imx93-frdm/lowlevel.c          |   26 +-
 ...ddr4x_2gb_timing.c => lpddr4x_1cs_2gb_timing.c} |    2 +-
 .../boards/nxp-imx93-frdm/lpddr4x_2cs_2gb_timing.c | 1922 ++++++++++++++++++++
 drivers/ddr/imx/ddrphy_utils.c                     |    2 +
 drivers/ddr/imx/imx9_ddr_init.c                    |   28 +
 include/soc/imx/ddr.h                              |    1 +
 include/soc/imx9/ddr.h                             |   18 +-
 8 files changed, 1995 insertions(+), 6 deletions(-)
---
base-commit: 2cdf9539292f7f76b8d8b241913f6eebc3041324
change-id: 20261123-imx93-frdm-2cs-ddr-4d16c5f4bd02

Best regards,
--  
Freimut Diener <f.diener@pengutronix.de>



