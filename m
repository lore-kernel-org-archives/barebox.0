Delivery-date: Mon, 19 Oct 2026 12:07:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH5-000ZN6-2p
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C0D6D202283
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tzz4jiDK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MjouGJtf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404444; a=rsa-sha256;
	cv=pass;
	b=Pal69pfZvOgDDoabYhdR3DCmmE6AFBt7Rl0AB/ASx9vteCImhOnnJ4s+q1cFtBcLVMPt0A
	yJh8Zsh9P5EMwl20ZezBfl/+ZMrCZIh0NYml9gyVZYVtXMhPk33nhw/8ZgD/jj5+viz67w
	z2oV4RJ3v/fk6KPiDyzfqpUv4IAdHZhq3sqTsildt6nCZ70QsEFI2NlC//gzBQl1lesPLM
	cghbQDg9+mgM09yjP5kQy8kQHLnGbfxS/Ln7RiavT8S/+C/amHC8/umDlYwzq6TxyyKolH
	lZyeYXEVZTwqXW8ccKtqGvbWwv56rYJvU0hrJWbPTZbQrW38RijhNE0X4PDswQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tzz4jiDK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MjouGJtf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404444;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ymW+eSRir78LvWuXGWFxO6lIqw4X6UBu+bsy+TW23qQ=;
	b=QUi+lIjBAeRhQyMTG/sFQyXIVNBl48dOscuqFakdDLThr/PS1KtBRibrzdOA9F0zUDIB32
	1Dv/ViAVm+Y/zFwoZ0ASL+kqAWaKfmHlF9uLCv4V5egHUtKPuydHWt7bQYJ+Z71M16ZBl9
	ZQ9o+lj5Hh8cPTpVY7zzKEz83gcI+KbSExy/SVfBQfh4VN6jo+FfL7QeJAwUpXkpubQxW/
	G3BPpqRTrJrTG2yLkoFXfxv8q6eYmEdeJPtKhUAJdE2MlpfXfpMsvNEFJdrjIynZz0lcOW
	FHRBPFTAQ/NA0hG2afY//tymw1JGtVz0Ob4xQGrRDwfQe+JxNPxKfWaoLAwpcA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymW+eSRir78LvWuXGWFxO6lIqw4X6UBu+bsy+TW23qQ=; b=tzz4jiDK9ZI+zu
	PZWm6VOputRnBdcG8Nmn3OlHcLssKw0XbF9M15SdXDAOqx5oqaEco5J/Z8tKLneFCWgTvRKYXVU39
	OtBdD62NpZu9QFIEgRUJgNHFPramDSvGuGLTs7TdgRqPFjcKO1NIeBRFd6fvZcxQXmMdE+egKjPyL
	nHjxKePwu54IaXfE0vRHZF4Cv/6OVWiF9rCv/fHSvWwVw0jVwXjUuE+fuSo5IKyjWq4lN+YKkYtbc
	STUcBzga73dMFAud7UwxRA3mNWhBhr6ggjctBQ0zgyCBN057hogyJDvvcLTqtZoB0NIvNNWMAoZYW
	kn1FaCVLM3HDWLgOIYmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkG0-000000076YI-2d69;
	Mon, 19 Oct 2026 10:06:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFj-000000076KH-1oXm
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:14 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 32E99201C31;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ymW+eSRir78LvWuXGWFxO6lIqw4X6UBu+bsy+TW23qQ=;
	b=MjouGJtfANu0rkcb6BVKeE7UnRPL70C7RBd5MMQCFYds1xCx/cd4s2AdpI+fNqDvK2Z8y1
	JJk/pVY5OA98iY/qMK9cabvTTKrlT4HuGSC+5jo3OVBNJJvGgoGDd3iFNWcsq9/xG+N3Pa
	VGQa21FgYdKm6lmE/wQutINft/xiJOWTCpj1rqCvFnQuDe93knbuNDrQpI8/2I6H0Ik8Xr
	jlicM1/nbDyHOob+L29GbNbOGUAElUEIo7pcarUK1e0SU/X+NrPoLxSTa9ixJQVkxNKo0o
	Kp+CgdpYO3hjbcM2JfTxPgovwsDwUrVbJ7qYE+XNO4ynUk7OoTMwjo29FdKiqw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=PbY8jM/qYD0FjnC+m2srsvRBpFf9Q8quncTSP9xzBn3Idf85IbO9LZWUGplQscJuxZzbsy
	/G4whGcMsi2xPrxwz/lz4EdQSI5XzJiHOuYd6C1vwZCB9pjA2+X0Z0CY6rYxt1CrAR4QKB
	yUEqFPlo9TyJCDH18MUj+o5ZOfdRZz68qk1Sk1BB2cjRTgayKJNnjl3u61ud4P+XQ7UmLB
	5gJ8NCjIctBG9+uKvIE20J4gBzzOPLTQVEpHgpv17JyuCmib86F7YCPkm91uk9LSDB43Um
	SKSs6FmppBcT6+/8BtlNBnDaSp5L70AQ09nUV1IaI4ztZGoj5mxscOHqMyHL7g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ymW+eSRir78LvWuXGWFxO6lIqw4X6UBu+bsy+TW23qQ=;
	b=Pmk/3QxSKInOUz74mM0y/ss7BvARL0eQy8FzYzJdLY6JUL+pXFQsr+xkhi20eET/ft48Yk
	DAjcmpIB53Yw1A76y8p/Q2nxpFkl0SQGv2MqTBPeyttT7ASAZCwr+ZIFJfd30ogbd81kvT
	1rCm5KKqKhZzXMWXV7duasWtNaeSTaVBkLGX9yUV/w0crHGFFaa9/mZluDcNvCCLkzl1gF
	iALz0N+FoviLzPKRD4n0jwgToAewsoT1oYXZ+q9O5cphSW8NbOEHNHDhXJpIbjMLCnsskY
	m2ttTs87Z//Z0j4PLlriRZ77QD6X/NkpQ9c1tt7ZGnw2h4rcCWo58oSG6P9DVA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 201B1740086;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH v2 0/5] of: overlay: fix __symbols__ handling and add
 selftest suite
Date: Mon, 19 Oct 2026 12:05:43 +0200
Message-Id: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHfr1WoC/22NwQ6CMBBEf8Xs2RqKBdGT/2E4QHcLa0xLWmggh
 H+34NXjy8y8WSGQZwrwOK3gKXJgZxPk5xPovrEdCcbEkGd5KTOphOFZuEj+0yyiLa6mRWMqRA1
 pMXhK8WF71T8OU/smPe6KvdFzGJ1fjrso995/c5QiE9qgUjdV4r0qngPZbhq9szxfkKDetu0Le
 fNPqL0AAAA=
X-Change-ID: 20261014-fix-overlay-b53fbdff8ddc
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_030559_625784_06D030A4 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- Changes in v2: - Added: selftest suite to cover of_overlay handling -
    Fixed: labels (symbol) inside a fragment but not under an __overlay [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: C0D6D202283
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 69876yyi871a5ez5dmxktt1ci77xgnbf

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Added: selftest suite to cover of_overlay handling
- Fixed: labels (symbol) inside a fragment but not under an __overlay__
  node are ignored
- Link to v1: https://patch.msgid.link/20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>

---
Stefan Kerkmann (5):
      of: overlay: of_overlay_fix_path: skip symbols without __overlay__ node
      of: overlay: fix_path/apply_symbols: add more debugging calls
      tests: of_overlay: add selftests skeleton
      tests: of_overlay: add __symbols__ merging tests
      tests: of_overlay: add fragment application tests

 drivers/of/overlay.c                     |  30 ++++--
 test/self/Kconfig                        |   7 ++
 test/self/Makefile                       |   5 +
 test/self/of_overlay.c                   | 174 +++++++++++++++++++++++++++++++
 test/self/of_overlay.dtso                |  34 ++++++
 test/self/of_overlay_missing_target.dtso |  24 +++++
 test/self/of_overlay_with_symbols.dts    |  14 +++
 test/self/of_overlay_with_symbols.dtso   |  43 ++++++++
 8 files changed, 323 insertions(+), 8 deletions(-)
---
base-commit: e82842ffe3c7993dac4f8493fb4a44c4d35810ca
change-id: 20261014-fix-overlay-b53fbdff8ddc

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



