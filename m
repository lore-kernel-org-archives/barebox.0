Delivery-date: Mon, 28 Sep 2026 14:47:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAlF-007IJE-0N
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:47:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E56D920026F
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:47:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SaqUfrtW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cGE30f+k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599632;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qrjSAC7SAmpDUYWq+vNC53L+09u47wFz/1UIM9ff65M=;
	b=abPt/DCJUkjo0By60ALHyn47ErcWIawXG4a8H79spKto/KfXWwjJwtmhiw3x/ftmHTVPh4
	PRLmiKO9Qdz92YSWiiAYc5UY8+BsHipuv+kMhol1Sm2L3UyG0EKY/yg0ceUSah5AST1/VS
	lr4OfUybQCNxE8IJSdBYex+U9cERiJ4nJ8Y1G6vRJlHsMoHTQnDVpX5CniYiW4qW9rmZJr
	JgmgfPAj0x3k2NcQNIFlR71lvqONBGN1uhkuN5VVRNbChqTeiW83gPExbqKw/Z2yh02w3v
	oCpNVJbz4t4C7IAma2wbfnnocCTOP0uBZtRQn6EanipYwyHzUw+I7CS91OJuLg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790599632; a=rsa-sha256;
	cv=pass;
	b=LheVfLCw2HdYhsS+F+TMcPs6lZIFXcW5zB8yA9BdREFC5/FaTpRMh3kyiDLvMz2Ezhrdpm
	yorc5XGxoSysciK/ZCSPsjRqlRheRvtUEab9aYh31FhyAZCAL2DFe/SX34Wu5vgQV7GfQB
	0nWNSPEq9GXiZ7q8pMXA3GlOzqMyrKi9Ec9PT9UO3LdFYghn4Vur753MblIvpsO5FJEA93
	3e9ja1/BUSJQn0N8X5DXX6kUssCd0qYiGC2X6tU58SfSkLAllRnE3hZT++Suf4Ax6SNCF+
	n/ZhEBBD/XbLb0WxWPEwqLgcBCxMlJr7W4Dhf7uHk4B+a6+CXk0Hukj6NWpN4Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SaqUfrtW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cGE30f+k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qrjSAC7SAmpDUYWq+vNC53L+09u47wFz/1UIM9ff65M=; b=SaqUfrtWzqfGdD
	tS4a7pS2BTn7OQb74Fi0TDY4sC/K/KJIB4Vcn0xmNBNZ+MfDIpeg9oF6NfsGNmQqAsQ6spjIkfZkK
	YD0U6nIYbYjr9b+cnqvf3vQYahPs/dY59Bu7lmxsL1oIUw5jJUy1zrG70j2UAyGIdMyKeeR6jtBPV
	FHzaGCPVPVzHKvxAvQm5t/FJ8IK2BDXcZJC5RBCnzA/bZk34POWY3KFRWcocVw/lGjkTW9kmXqAKM
	+aUjPpSsQevIu52eG0sFdD+JDDnOFDh5qQiULeKSt+8C4B7x1FiJIFDQJfrRnqrzz4tFr6oUkhvxL
	yaxEryMadkHwcUIo7lvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk9-00000000abk-0ewB;
	Mon, 28 Sep 2026 12:46:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk5-00000000aZy-0r9A
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:46:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 560C1201E1B;
	Mon, 28 Sep 2026 14:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qrjSAC7SAmpDUYWq+vNC53L+09u47wFz/1UIM9ff65M=;
	b=cGE30f+kB6xzWhmh5ovYInFbvM5xLeiGY9w85O6bszQgkVIEV4bYOhzALzKZK4r3z8ggbG
	S4QAnhqGmwcn+D3PBS602FQtAc39gXBCGSG7SiT8hHsCBGxxvDRBdud++lSZRlbC0WUn1n
	p/dGF/svbmiAfpWz97Va0JM3Cl9CESVaveU3ANx+OadgRNmshP42VUUYfqCZkbUcTJZfV6
	lG/Pu4M84a3/UjCoH3KHcTXMe706Y3Iw9kR8+PqLE2aQp96TlUMz5gnkafIn+vyIQf7O18
	wBUs/mR/MtE1Z2l8B5B4m+CENP6wkmBsS7a9PEPfVVWuxEnZRIcJq3raV7jVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qrjSAC7SAmpDUYWq+vNC53L+09u47wFz/1UIM9ff65M=;
	b=YYhscK/RrRsHUfd7nJB+CH7OvEaKePximxXz4x7ztz0fCAwJnnb5doqfA4lJo/ho4cxp9Q
	JRSPgSJ0NXKg0aP7RfDQBINx74rgtUATbyuxbqHZaTJ8HOeJJBIvEirEsRubSdqgkd3YQG
	ZPEch99uej8mD7qLpUn0Xve2cWry+8P+I+GfcYXWQxRdH9dh1e5yCkaaCq+KsFvvzqNjpI
	4BBcTw27d7aalkM8kByaSOSK/onEPyh4YL105/2CoL6rUV/G24Mlf8nq/CdbFjwsKBMPtz
	dyDF6Z3ibhd+DsWktTVGzrYF21YO8CZoz5lZBSpusQsKp4sPYHQNqkj5Q3FyKw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790599559; a=rsa-sha256;
	cv=none;
	b=Ys8auOFPIq0Fvq5YREW4ILpGUdSN04LbhXEv7W0Gpbp2kQRiBOs+R9U4OIGnXXjt4lRTLN
	Voe9ZhnVNxa7jBSV+l9HYlzOZVMpvOky6HiJKlO5+q1OIAsEY+kkPiY/btTeMZoKXMv7K/
	kOrmYbWywYmfy+70uDfKu1CHNCJQPIDCkjjt3UcQf5cPf0w2lvzapohb66ejcO46q/Ts2d
	lvbTms1qEJsuf9jaifW54/vFehbKWB98OPhdExCfEYJiztqNHt54KPo0zVC6iAr65MV9Tl
	jW/P7lt6RHzREg/E7oPfzYV1PsFa3BNcoXlYuACGtcohqmjcOq1DXYg8wNkqFQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAk3-003ECA-0r;
	Mon, 28 Sep 2026 14:45:59 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] arm: socfpga: mailbox_s10: add more wrappers for
 commands
Date: Mon, 28 Sep 2026 14:45:56 +0200
Message-Id: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIRhumoC/x3MQQqAIBBA0avErBsobaK6SrTQmmygMhRCiO6et
 HyL/x+IHIQjDMUDgW+J4s+Muixg3szpGGXJBlWptupVh9HP6+UMGic7J8LD+oTcEzVkrSZtIKd
 X4FXSvx2n9/0A0tN6imYAAAA=
X-Change-ID: 20260928-socfpga-agilex5-mbox-e95545bb353a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_054601_396942_ADF36B0D 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The mailbox interface of the SDM firmware on Agilex 5 provides
    various commands that enable the software in the HPS to request information
    about the system configuration and status. Add wrappers for the mailbox commands
    to add some convenience in barebox when requesting information from the SDM
    firmware. 
 
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
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
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
X-Rspamd-Queue-Id: E56D920026F
X-Stat-Signature: 659mfdk8jzmr14qbbpzwi1tezd3ugies

The mailbox interface of the SDM firmware on Agilex 5 provides various
commands that enable the software in the HPS to request information
about the system configuration and status.

Add wrappers for the mailbox commands to add some convenience in barebox
when requesting information from the SDM firmware.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      arm: socfpga: mailbox_s10: add wrapper for RSU status
      arm: socfpga: mailbox_s10: add wrapper for CONFIG_STATUS

 arch/arm/mach-socfpga/mailbox_s10.c | 63 +++++++++++++++++++++++++++++++++++++
 include/mach/socfpga/mailbox_s10.h  | 34 ++++++++++++++++++++
 2 files changed, 97 insertions(+)
---
base-commit: 4a752d2303440195e12ed1a4e642b0be5b450b8e
change-id: 20260928-socfpga-agilex5-mbox-e95545bb353a

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



