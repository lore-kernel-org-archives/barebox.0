Delivery-date: Wed, 07 Oct 2026 12:57:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPKw-00AuFV-33
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C04B201D41
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u49PzVgj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Li1h6G0j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370646; a=rsa-sha256;
	cv=pass;
	b=fVtQpUj12BeBGx6K48DnxOZlbGR9d9FdPU1wsxZO5V3mczS9M55fJ2KD1pT2Dh1DrWXDMj
	grmAbNGGcFvE+npzdShyVoSN2Ryc7jBSLrPp8zjW1WV40oRI5AAp5qUAErU/32NCJZ+Bys
	SowgMmkGg9Wb6BUJNzKkO+ED+PzwS0B2l2MYpnu9YKipkWbiis7QPRE609fxKdNNocdXcg
	T7zx3PqFeLd3JuMexreXsn2aNdbAgyTqAgBfJBoDg188IQxHYSA9QyBH6eSatZJKZhTYkR
	f6J7NKx76le04cWXfsJbDKCv44nDR0s6RfGglbWiKe4khxxwhSG1IkGKlyHvMw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u49PzVgj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Li1h6G0j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370646;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4rTGZhK81obe2cwO5LzhY7l4ktC07unvWC0djR+OTA0=;
	b=cZ0ck5P2yg06qBGpcKXrN2/F4JPJ3T8NMsCgIrBJ5bo2VwL3Zgwu1F7LOP5Rdw84MdsBru
	4SMMZdhsewAIapOFN3TImaiLuXR3uV3lYWki5u3+tyCV6jSVg9f5C/Ja/BGjrLCusdbJsl
	Jg8alrfPkp7DEDNk9nx4OZ/DU6Pk61+8sl49WK04RBlJGgwaa6AxpMcZHQ3Nv/47AwRQwY
	uFRXFZet8i48KHcYxPcRrg6SSVHSuq69WqR5C9IUqmqQE8DyPMqzS10WPCSvp63GMTRxar
	l76bxgB3erzkSnJeYqs+MVoZkrCyHS3fnPxG/E9dIvOm23Smm5aKFxRVGUFIng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4rTGZhK81obe2cwO5LzhY7l4ktC07unvWC0djR+OTA0=; b=u49PzVgj3JWIB8
	lCsxMAaqiT6K33exbp8xHYG+PU+SMLkqmqkvpLznLh+obU7Qi2hXgmblnzRrao92LrLgg4b1pc3vM
	2u66pDLfZWHZvmAjwBbfKBqids0cXQbl2iIZ0ZxIyjUR/cePVeUgRRS5iawTD8Dt3Pu//avE5hFMd
	+r/923hQ0i+y00nlejFcbrBRqiSzEjM4jpy6jiihVSKWATA8xRDRXBhDQ/WFEaTbRJ5LX0Lirvc9c
	69pimFcoPU2f8XhO0eOmpf/jo0tJWJ0xuNyusIIcueaGTlb0RIDpQzy1vh6dof+lXMK6dMJQ9Ur5n
	K9iDxAtvOfbWg2SwYIKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJc-00000002FBF-2onH;
	Wed, 07 Oct 2026 10:56:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJR-00000002F60-1Smx
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E15E4201D41;
	Wed, 07 Oct 2026 12:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4rTGZhK81obe2cwO5LzhY7l4ktC07unvWC0djR+OTA0=;
	b=Li1h6G0jR8PXWvE6o/N+sgx1I1leU8CbBkPhubyeo8D/9q8q9kYKk3Bk2ATx6CPnOc+Uu6
	0gHjl0B3YvRU7epExE+pZ0pa30mAAmnrSUjgXVDGJoq74KX7rvpUnjeZxWNrr2ZAr/6GMf
	BRaMOxQbBOSm/bKSWTYNVz80fCotAnR0S42j6jIxKinLbwbOcfNpGteUGlyVoJU0B7/zV+
	845fU/wdtEsMrOdk71foYM5orJ8IwgUe13JhXBzBacDl7a84rz7rAPM1picVtCJpJuTt/W
	cupO+aX+bIeJ/oUULpsib2AYlbcYmp1sdt3lwwMmcif5Nx2f1CoCgyEUOG0e8A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370547; a=rsa-sha256;
	cv=none;
	b=P6PO1GIjabLjcQ41encTkU4Gd6GLEKMFO2aWXfz+GFwcTI6wjOHcUZF4FNdd6vd/mE0Cxo
	1bTGPJbT/SleNF2+olsFrDRNA13TlSaDOWibGWotVdAyy/Cqxw+sNaY1HJQ6kAe8IN+TeG
	mRbobRlWD+w2q2GcEyTT8xjG+bTVywJ5yOCq4nUpzjR4i149BX1p7Tjv2fYmPeVw46xXCO
	etSYFx4hoPFJUdo/cSxc8WoHzniNJB0XtSA9CWSA20tq+RfNgNUiJToeKwI7Dm4VOlgxTs
	+UlKxRNSwCbOcHwF6i4lRG7JhpuVQ7srDR4pn0+pdebia9NjRvaRKGMcaFStPQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4rTGZhK81obe2cwO5LzhY7l4ktC07unvWC0djR+OTA0=;
	b=dFPp8Q1RpuFdCVOdfKzC0MBvCseVCMkxNMoLQ7fIY1Yhv/jKGel1U0MWbY9LmR1fLg+24g
	gqvYGC4wzb+4h0qBJRCeKUoGiYpISz44QBzTZligmgv8QZXzGytU9CheQQIWV+sZMfaXay
	C/jbQ2ciE6EX/sHTdy0PAVme95d/V0jIuUB72NHvoNxzIuw6C1Sb7aDYyekiF6pepM5iwL
	ZU+tQYmBQiOkiilghS8nxrCMj2c+S/ipSOnVVm8r1SiiFMuWK2vSi9YYBl3xPElUxs+UOq
	rb/aT1E0LZg0FcJt6ettBjItjlZXOOahDLX+K3tmcdvj9XRGTayY/reoaKiEgQ==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-2d;
	Wed, 07 Oct 2026 12:55:47 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 00/11] arm: socfpga: agilex5: add xload support for bl33 to
 FSBL
Date: Wed, 07 Oct 2026 12:55:45 +0200
Message-Id: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADElxmoC/x3MTQqAIBBA4avErBtQy/6uEi0sRxuIDIUQorsnL
 b/Few8kikwJpuqBSDcnDmeBrCvYdnN6QrbFoITqpBA9prC5yxs0ng/KGvMRjEXXuGHslWx1s0J
 pr0iO8/+dl/f9AFSJi/ZnAAAA
X-Change-ID: 20261007-socfpga-agilex5-xload-f3f89721453b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035553_893386_B35029EE 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The image of the first stage boot loader on the Agilex 5 is
    limited to approximately 256k. The SRAM is actually 512k, but there is some
    handoff data at the send of the SRAM, which must not be overridd [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: 6C04B201D41
X-Stat-Signature: gg5de9qcq179kg81dricjs3o11d9jjc8

The image of the first stage boot loader on the Agilex 5 is limited to
approximately 256k. The SRAM is actually 512k, but there is some handoff
data at the send of the SRAM, which must not be overridden. There are
some size checks, but due to compression of the FSBL image, it's the
possible image size cannot be determined reliably.

The barebox PBL and a full featured barebox proper are easily larger
than the allowed size. Compression of the piggy data may even be counter
productive, since the entire FSBL image is compressed again when
creating the boot image.

Add support to remove the piggy data from the FSBL image, and load the
second stage (consisting of a barebox PBL and barebox proper) from flash
in the PBL.

Patches 1-4 rework the Cadence QSPI NOR flash driver to be available in
the PBL via the pbl_bio abstraction.

Patches 5-9 extend the Agilex 5 support to initialize the flash driver
in the PBL and chain load an SSBL as bl33 instead of copying the
currently running barebox. The patches also add the infrastructure to
build the PBL without piggy data and device tree.

Patches 10-11 enable the xload support in the Arrow AXE5 Eagle board.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (11):
      mtd: spi-nor: drop requirement for device field
      mtd: spi-nor: enable module in PBL
      mtd: spi-nor: cadence: extract common part for use in PBL
      mtd: spi-nor: cadence: add a PBL driver
      arm: socfpga: agilex5: add bl33 xload support
      arm: socfpga: agilex5: separate load and start of bl33
      arm: socfpga: agilex5: enable xload for bl33
      arm: socfpga: agilex5: initialize QSPI flash in PBL
      arm: socfpga: agilex5: add agilex5_barebox_entry_xload
      arm: socfpga: axe5-eagle: move lowlevel init to separate function
      arm: socfpga: axe5-eagle: build FSBL without piggy data

 arch/arm/boards/arrow-axe5-eagle/lowlevel.c  |  31 +-
 arch/arm/mach-socfpga/Kconfig                |  43 +-
 arch/arm/mach-socfpga/Makefile               |   3 +
 arch/arm/mach-socfpga/agilex5-xload.c        |  74 +++
 arch/arm/mach-socfpga/atf.c                  |  83 ++-
 drivers/mtd/spi-nor/Kconfig                  |   3 +
 drivers/mtd/spi-nor/Makefile                 |   5 +-
 drivers/mtd/spi-nor/cadence-quadspi-common.c | 615 +++++++++++++++++++++
 drivers/mtd/spi-nor/cadence-quadspi-pbl.c    | 104 ++++
 drivers/mtd/spi-nor/cadence-quadspi.c        | 794 +--------------------------
 drivers/mtd/spi-nor/cadence-quadspi.h        | 216 ++++++++
 drivers/mtd/spi-nor/spi-nor.c                |   3 +-
 images/Makefile.socfpga                      |   5 +
 include/mach/socfpga/generic.h               |  16 +
 include/pbl/mtd.h                            |  26 +
 15 files changed, 1210 insertions(+), 811 deletions(-)
---
base-commit: 70421fc4591e6b4b9c7172ca72b60ef1868ecc5c
change-id: 20261007-socfpga-agilex5-xload-f3f89721453b

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



