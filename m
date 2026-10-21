Delivery-date: Wed, 21 Oct 2026 22:35:48 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJd2J-001b04-37
	for lore@lore.pengutronix.de;
	Wed, 21 Oct 2026 22:35:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2454D202043
	for <lore@pengutronix.de>; Wed, 21 Oct 2026 22:35:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v8UkyG1v;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d/JO+mp1";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792614944; a=rsa-sha256;
	cv=pass;
	b=EsOvFuupcOl0RzxdCX5UpljlJYoE5FeH2/HWFjkzhiNC60JRsmPF+q4cgG+5ySdDq0b/2L
	ob5u6QSgzmovfYEs3zJrYC+9JoEgh3JEL8CyM5T8JNne1ZxpQKPt658FA0rOt++Qhwd3Tz
	xHNBx51HOrvb1KKFL9bh43F37ZFbj6Dcs7+dEg9pgcGvmMd2ocedPoLw6y5HARxwjFm0Sj
	Ka7Cf0P9OG2Fx4CUql1BRQ7QPekYe8q9YsfcTc5sjxPPg+3cwr9JKQbm+Sag9jzMiqmzU+
	8eh38W3xw+P2+OeNSSXX48j8+HdWCT2pDmTwtKp87Mw3PN2d7xBKkys2LUFVXg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v8UkyG1v;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d/JO+mp1";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614944;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IKjAOIOxBVxKUr8UCKwHrHDIo0SotIFPCz+1L2eOFfo=;
	b=HFQzs2bL9JDUMJlvT59AItSeNX6QL8RuNwRh/Bo1Nvgj+aUZu9MJJPfzH/IX4YMvJcwsrL
	LGuh/pM1LZy0H+GyELp1kEhYsw80DtTROcuofzGrq8b22ArsHUaErEpnFC49z2Hv7ijY7m
	wcumW6UfqBP7KLOfyfdfnXyfjuEs+DYdGShmzE6D/8YfbiVQ32+qPhj5wSF4LwnhcWyWxc
	ieope99BI04fZBmusUPrrH61eTER/lSBT7hE9dAB9Wx1o9SR/2c4iLgQrb3MSdrEG+0lI2
	UIusn6MugWMqnPaa0Y5fLU8eMCfWiJU93LuTtXsH6Bnxenoo0O2DJ1b0e9A1Wg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKjAOIOxBVxKUr8UCKwHrHDIo0SotIFPCz+1L2eOFfo=; b=v8UkyG1vAqTwf9
	VMi8ino27NP4EiK5xWfbGOXPpO2oHHpbGpEUOsyFbBeg9U6w2i1UrRr2sB3pWAj/4VE3AaZxljfpN
	Ds7DfDtvPay+ryVdNUTYG1onplDVbctL48FFKVF9LF3CR2/Wgg3K5p2DqRAhNan1fgvdhZi58nylL
	yWGW3ABys/tpqt4NbaXMFaTlwx7HER9WXOTe80UT4Poj3HPm4wyrlt5cenKkE2FJt/T54rt2u1z+C
	fvXY2MLRBHw7/tWrlIQtvfgaDz0fuIljWxCRmHutMMOOvvqm5mjpIhVuJzCzCvYY4YpaAqpptwgnA
	2r3xofEdPAJVYWbO+toA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0l-0000000CqD5-2J3W;
	Wed, 21 Oct 2026 20:34:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0j-0000000CqBi-2O7l
	for barebox@lists.infradead.org;
	Wed, 21 Oct 2026 20:34:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 82470201E7D;
	Wed, 21 Oct 2026 22:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IKjAOIOxBVxKUr8UCKwHrHDIo0SotIFPCz+1L2eOFfo=;
	b=d/JO+mp1XLILF/CFQzNCJQKiNdmzQ21orpkcybosIUD2bMXCEPKYw8k1i6EtC87VohKS+f
	j/3SwOqaD32zU8LsGaS5/nHQDvexfSAmUq3dXdJ6hgHdf2mERf7inNs1s/JUCblNsZsPQk
	CaAsRCzInZa0J47PlBiwppzxPkbfFZNrAomBab0LQCIiw6uOAYktN2eX0KVeVuQPn0h0aD
	dU+MZZZRxWfVRyrzkjCnpKCTOEe7eiO3h8yJBlLbAs+2ghq+C0tpGZYLYOy9zt0Ig2b2l8
	hO7ri8XCgtd8cLgtw3l0zXtUOysBQBMuRt+dDm4EBq7YE9BV/jLk6jCsZj06pw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792614841; a=rsa-sha256;
	cv=none;
	b=VQArUolOsfuqcpBB8cjVSJjFWCB65oW7AqoUZeFK3//jnGa6FmUhDTumEDKZyXjAC+sYVf
	f7fslB3lXGhCnz7ABUPwHBETVFSiLpSR0lWv1f5HzXh07naxVhPjEj+nOGfuIoJDiwkNbw
	gBBiQQVa8At7Gw9Cs9+acdO/upian4szmR8BOWL7O7JH66WzTRwUydkQ6AkrtD126cmTYm
	Gx1/32uly9ox+ouIDINlg+RmuY2ixmqy8QJmWptN17x9nSrDXUQyeeUb8dlyY4Zrud2AT/
	XgCnc3ixOa+ykumWO4a2LSPYxaQf/3z/sMTPF77XKMr1lAF+fO1VjTwLTg2/FQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IKjAOIOxBVxKUr8UCKwHrHDIo0SotIFPCz+1L2eOFfo=;
	b=bk4UlUxFt1G4lcDJq4ECJ9t3aeXNA4O4u4ZeVIazvXG17ubHJODovC3BweelmU16QicIEM
	OolAm5TRB5q5E/hLaxctNYq2IF3toqeqkdJMDOghsATbd9toK0j4yTeAfrYga+9+xq6WDu
	xCX020NFRy22wemjJT7lN63rhZ8ONFLB0yJbMf6L6BmQ0tKd/GETEY0kTN7qPTIz0twDKI
	V76UFk6NorHuqCBx4cG5kjbaujXARplmuRJeg0DdBSw5vl7zUy68MKEEhdrTEyyFeeYlA7
	QRKeUNbk87ivHUvUiOc7kry9JpL0c9+Z4ql06rBM6Z0KftEU5SWD5p/VJVbW7A==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xJd0b-000bcM-1L;
	Wed, 21 Oct 2026 22:34:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] arm: socfpga: agilex5: add VAB verification for SSBL
Date: Wed, 21 Oct 2026 22:33:51 +0200
Message-Id: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK8h2WoC/x3MSwqAMAwA0atI1gZs8YNeRVxETWpAVBoQRby7x
 eVbzDxgHJUNuuyByKea7luCyzOYFtoCo87J4Atfu8I7tH2SIxBS0JWvCs/Uy41m44qljI6kJfJ
 1A+lwRBa9/ns/vO8HNx57n20AAAA=
X-Change-ID: 20261021-socfpga-agilex5-verify-ssbl-4fb1af9aa267
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_133409_766457_C798968B 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  If Vendor Authorized Boot (VAB) is enabled on Agilex 5, the
    firmware checks the signature of the first stage loader. If the first stage
    loader loads the second stage (SSBL) from flash, the first stage [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 2454D202043
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: 6wgp7zzwpng5f9zg9d57rm396qjuyzru

If Vendor Authorized Boot (VAB) is enabled on Agilex 5, the firmware
checks the signature of the first stage loader. If the first stage
loader loads the second stage (SSBL) from flash, the first stage loader
is then responsible for checking the authenticity of the SSBL.

Add support for verifying a certificate that is attached to an SSBL and
rejecting an SSBL with an invalid certificate if VAB is enabled.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      arm: socfpga: mailbox_s10: add certificate validation
      arm: socfpga: agilex5: add SSBL verification

 arch/arm/mach-socfpga/agilex5-xload.c | 157 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-socfpga/mailbox_s10.c   |  53 ++++++++++++
 include/mach/socfpga/mailbox_s10.h    |   2 +
 3 files changed, 212 insertions(+)
---
base-commit: e3bdefdf2484c19e17cf3a8cd7cb29d47917b545
change-id: 20261021-socfpga-agilex5-verify-ssbl-4fb1af9aa267

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



