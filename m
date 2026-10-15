Delivery-date: Thu, 15 Oct 2026 11:26:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHjD-00DrQp-1F
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:26:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D4577201B55
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:26:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KKhmXga1;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LgXtl7Xo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056383; a=rsa-sha256;
	cv=pass;
	b=IekI+tszHXm58WqL1p8VC/Z/v20jI0CNpgm/PGwqAoj+zj04zg6GQlq05tL6GHYwNZWKkT
	CEViZtDS1SSPTz4OuUzqttXXeOSgANYLNiTteldlwAAp8Mu7M/v45OGPCZmeyUt2BiOD0U
	382Qn9kY010Xs7xQWfCCApFpXBER2CVV68GtJsdIexhxw+14B+xAEezgGLKLSJ9SgPRZNQ
	rCeufzarpeOrK5/YHImE36mQ+39WP6mdZqOsX2FQqcvTZnKnCyD0y4lgPZ+5KVsGIjsosQ
	KhpfURkQTl+TFTs7yPCnIZnzGpCxm1OYCHy5+Njk9KptgxIMRPRVeeX7A5t/dg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KKhmXga1;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LgXtl7Xo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056383;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=AnK9O1L9DzZJr/h0uuyVUDhlRGpTRFUzcrEp+ZSW9hM=;
	b=Z2YJNrb3aJ+ksKDiGuGVoKQPFaTWdiOuWSNsQyazzUvlDcxIXGTuPK9eOqpodxOBKCOKZL
	GfqXPqQO1xkKlv9Tur5PX7vz3hB/UJPbU15Eebbs7duteFQL845X7zFaXrl7HsVxpdwfrs
	NDnP6hS905P5cBOmeVs9J7QfZGc1QSzmdV6upMpa78zX5HHEzgGjmlQw2CGQGXlBhUIY30
	nJ8jdn58vcNP9EIYYYWc21ubYHed7IHnwfkadS0KFMyuuUWY3dpnYVaKeU+KxmCQ8tJsi+
	s/ZyY9MP/lsIFYx5yycsPB/NapiWE/+J76VH5ooUev2w0N41As8mIGAu+jPngQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AnK9O1L9DzZJr/h0uuyVUDhlRGpTRFUzcrEp+ZSW9hM=; b=KKhmXga1jv4xGAyWEOU//OGDdR
	p/8pJMeram0rqxl9hZx+WaNq3ereB3qOYC05FPbNSQZrWPqrg32D9H/DPeoZtb8dY3AaPBPLlQrr5
	eUs2ECIJPmIMWOzG5k7MABGfTY/EUr/LDeKFadOAGSbagZAXpjR+vcXd4FL+X+f0ay8amkYUqMthB
	V1zu0/fnlAc2bGee6I/ss8bB4e0p4Q2F7n7PRMKXENlQ2aTF9eoTCC82OTK4id6PzTbQy6KtJBeT+
	ywj6su2ik/dKP/1EsajcxUe9vsVQH2WM1MN8TOpDnnHb2CqORkmnFacsDGgvFONCBIdYBTqpkKA31
	TDf7p7vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHit-0000000HGCn-3czL;
	Thu, 15 Oct 2026 09:26:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHip-0000000HGB5-2KUx
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:26:02 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AA210201BBB;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AnK9O1L9DzZJr/h0uuyVUDhlRGpTRFUzcrEp+ZSW9hM=;
	b=LgXtl7XoGkIfWEWWz4FBmfmd27ua1AFPHxC/oHXJW7B9N2/BfSAJqjPRc2gZP0xmle49br
	Ffe58+0IIxFsr3qg8+huybtuB3lXhXsTT+KZoK0ccBud2mLt3bwPJJrTeRJU6IZRzrPyoE
	AuHRf/hhbTOGXxs5vUfe2ruNHHyPj4+QfxJy7a9q0oJf7M5F/7LYNQ/0sEYVP/+m9Z9w8B
	c9lqUHKHBsAyGQErEHD++KVmXjvsL5jT9TnjbFUsiHZywhq9BmfYzH+gXtUAp7KLIgxiAG
	T8pRkl5gTIonmgx6g2HlTRkD1Du0Wn16bKGlrPq1CowOENrw1f/V+H4wIsi/VQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056357; a=rsa-sha256;
	cv=none;
	b=dNu9RCknnbGi3eGBQHg1IEWHQ0+kq6pbVraCNT2+f3UChVtO726AiUcP8PHyTTimMbnvyn
	BYATMfUOHrY8uIcEG1abY0QbOUXoMZ0HxWpSTPvoCjdLmh3g4X/z2gnejmxgyb51Z8fdLk
	w3h4iQeBeWXuc8+1IYHjpmC0y+s6ha5pVXiiIIk+QxblBR3Qt9433yDDZbcB7xxZTA2BWy
	AmmxNSRCpy8zD2JbUmvVDeORbl3QV//89nIBUP7m5qf7GbnTHQl05fPHztlDMJ7Zj4MCac
	tQ7z2Y2OcoLuaULf4RDubaurIaJgW5L5B9EW47J3ZB33kHB5LkodNBrEGTxHow==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AnK9O1L9DzZJr/h0uuyVUDhlRGpTRFUzcrEp+ZSW9hM=;
	b=OVdTYGpfxY7L1zic0FLVaJ/vatsLv4Ju8IXk/Rf/pmkpch5E4ZKNIuQoBDpcGGNhTti3HQ
	KNRht/PUgJe7Rmm67p0yXl118bF8C26em2+GCkfgEF4R4NHs31JiStvtNq1BryEFlwmCJe
	u4+ylTJybBEbgl5X+/TvVZib7pmQqhLpSa5dgG9iwMTYv4lJhaJRHD3VsQsBw+vhnbyi80
	vaup9CvTNRBOcMai0XsXm5O32tmJ6jPX3ih5NrgSe2p+0us5RI31wiruH2yEtn70JDe4oo
	hzEyJD+IXrrDpJK1BmC2E5saFEmnTCzyVxchnjjkCE+EraIkWX1FvBTSJWy+mQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 88C58740455;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 0/4] efi: payload: allow extension via fragments
Date: Thu, 15 Oct 2026 11:23:26 +0200
Message-ID: <20261015092554.210438-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_022559_774114_504655C2 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload,
    because it has no internal DT at build-time and until recently not even a
    DT at runtime. This series adds the necessary bits to have this work the
   same on non-EFI-payload platforms. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Rspamd-Queue-Id: D4577201B55
X-Stat-Signature: 6xhwc18xqeth9z6dai3udguky8q75i5y

CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
it has no internal DT at build-time and until recently not even a DT at
runtime.

This series adds the necessary bits to have this work the same on
non-EFI-payload platforms.

Changes in v2:
  - "efi: payload: ignore ESP state.dtb if device tree is populated":
    check before touching the ESP and only warn if state.dtb actually
    exists, so a built-in state no longer logs a missing file (Fabian)

  - "kbuild: dtc: introduce empty fallback device tree": build
    fallback.dtb on ARM and RISC-V only with CONFIG_EFI_PAYLOAD, so a
    fragment referencing board labels no longer breaks other builds (Anis)

  - "efi: payload: export device tree in barebox-dtb EFI variable": delete
    any existing barebox-dtb variable first, as SetVariable() won't change
    attributes and a non-volatile variable created via efivarfs would
    otherwise survive and be read instead of the exported device tree

  - "Documentation: efi: describe device tree handling": refer to the
    "Load options" section that the series this one applies on adds

  - Rebase onto the load options series instead of next

  - Link to v1: https://lore.barebox.org/barebox/20260826121640.2936023-1-a.fatoum@pengutronix.de/

Ahmad Fatoum (4):
  efi: payload: ignore ESP state.dtb if device tree is populated
  kbuild: dtc: introduce empty fallback device tree
  efi: payload: export device tree in barebox-dtb EFI variable
  Documentation: efi: describe device tree handling

 Documentation/boards/efi.rst | 76 ++++++++++++++++++++++++++++++++++--
 Documentation/user/state.rst |  5 +++
 arch/arm/dts/Makefile        |  4 ++
 arch/riscv/dts/Makefile      |  4 ++
 arch/x86/Kbuild              |  2 +
 arch/x86/dts/Makefile        |  5 +++
 common/fallback.dts          | 10 +++++
 efi/payload/boarddata.c      | 11 ------
 efi/payload/fdt.c            | 56 ++++++++++++++++++++++++++
 efi/payload/handover.c       |  2 +
 efi/payload/image.c          |  2 +
 efi/payload/init.c           | 18 +++++++++
 include/efi/payload.h        |  6 +++
 scripts/Makefile.dtbs        | 10 +++++
 14 files changed, 196 insertions(+), 15 deletions(-)
 create mode 100644 arch/x86/dts/Makefile
 create mode 100644 common/fallback.dts

-- 
2.47.3



