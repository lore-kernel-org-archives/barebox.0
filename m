Delivery-date: Wed, 23 Sep 2026 09:31:17 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9HRl-005Ltl-0j
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 09:31:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0DF16201D7D
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 09:31:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JliEANxe;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=NdSptp7F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148677;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ae2XixhMlJ6+4HfZvqqqqF0a2+KcE9daAWFRhMLiAAQ=;
	b=J75E5zT+2f+dO4Jcv4IJuWIH5JwwQrfmpbaOGCJfupQsJ8u0DBu7nhDqUHkpkmLdoiTfCX
	89/7ocqMAS9vlzd4omQISo21/IrNRSCRmXnj128CSWdVAOqgXJ2TBw50+feMBF4nBj4cSg
	vw06wH5qwbEzLAOywIW/OQaEWZjvjlZRohUUZpKXJMoTgGVb+YlWlOyCNQpHbAXwd4lNRR
	XWQZbVd8dFjkevQSGsZ6TRFG/rfLx3aDSXj8oRY3r1uHFzgr/J81j2ReD7nREfTDALrkEm
	7oJ4kbkQeqkS+J+4fG7Bgb+ubnR2bARvm7RAaeNPz6BX1rvfdhDEy2v41kfDJg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790148677; a=rsa-sha256;
	cv=fail;
	b=fLXylXZURzDOkigFKJpKJAFhVLs4JzbxNI2i/Sc5S6tHeiaIikPW+jmzhqkZ0L/DbxDazO
	yoED2P8265+YcIoaviaLH6dGO5/ZRZVivyfwSQJwJ4hu2x7/OpQ3q8tVDAsVwrUjgpDMn6
	8qUOE+ONkeZCZGFUIdFEYokha/mxqPL2sqlNteXu29Uqs/gh1ushWQYJGya0CrBgArvqJi
	JCDOkmyx7wi+Vyi761WxoeaDgbGBPA6ImAFr8JJrksHL9M+1otazbjsVSftBMifsqkh8B9
	UK0mQYGOSRUu3NDzVLYWSe/bgUZqxUzvynY3Es3BgXWjZdtR0pY1qrcJ7tq7AQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JliEANxe;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=NdSptp7F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ae2XixhMlJ6+4HfZvqqqqF0a2+KcE9daAWFRhMLiAAQ=; b=JliEANxe24kMQvgE8q+O3LDrfK
	lsu+Pu4Jqkxiytl17l9HqpJaZR/iSQaJR+O8moRbuiLgElJVzBbhwuAaVrxgCAFWUiYRIQ4mTOelo
	JNS0p0yw1osvmoFOUYicJHlXPODoPLOz/QdXJ/fHRJHzXq6kL/71bLdG5FLDGvExT9rYniAm2vvu4
	lWk83FMl0lUE4cJI1e66uiTZetx0sN/qZBNqRpF1eC7X8kxUirBGc/sLKQnwe6FYy+vlnUA8OfXea
	5bBQFlrxEqSomJDw+dkJVyScir9YZ9i0b4TWyuygB+y+dsBW72JRTiscc3vD6HapYq6RCo5yMb6xJ
	sjky73AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9HQX-00000007PVz-2Nsp;
	Wed, 23 Sep 2026 07:30:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9HQT-00000007PUs-2FFS
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 07:29:59 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 92B132001F2;
	Wed, 23 Sep 2026 09:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ae2XixhMlJ6+4HfZvqqqqF0a2+KcE9daAWFRhMLiAAQ=;
	b=NdSptp7FmkUCkX6PticdJARUDcYy++e0ZkcFCIyphtYID67IMbF4bPnk9vOOmzO2iO/+uJ
	RzaOm+L2/ml/sP3o0azQg3STTzT5tjJFocylio/zgI1o3I/AqPHq0rb3SyEAlETTJC1vpf
	Nb9MbvLcybmmlxJTMwSImZSDihpzppawGPYZtnMrpoHQ1nMiBzLbiIRAXO2MuUwnYHJ263
	KgvAPBHkYPRGAXQ4rsqYE+eQ55TNT+U6hfjc4CwyKNXwlE5OkmMlecwW9GpjEdfnEPYCcq
	bGrY9hEKX4s6Bsf6i2aXBQzDQgePR2/nrxMbW+3OYGBEKzz+IMHntG8kJfMwqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ae2XixhMlJ6+4HfZvqqqqF0a2+KcE9daAWFRhMLiAAQ=;
	b=Czxo2ZKK2b/gunlFNVhFMyUUfXuK5YS/A0pP86aZ8JqP9QgL00oCdhLHpt7IX5jm9fYLx9
	zPB4xqsnONbFayQtBPCO8mfwz6/HoDLgxM1nRs9rONw/3/VryIg2haff3wrZPQzsHqpyIN
	uS8bS8iG8gVzYoTtqmH6u1AbGPlduW3qc0506wyZxRojcfka3zCZtQ+6B7USPgNIagljJY
	xVX45j4yldw8qy/BAzrJmqT/AF0qqgXbybQi62KgHXwdl12U4qmPO77TDehFObbTkg2rCd
	TGUbcj6cuo2kH7B4FVosUKt4r4T/jB0rBbobNV5cM7e5Mb2YgJfHKtXvQiqQxw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790148595; a=rsa-sha256;
	cv=none;
	b=bL26R5hN75SxWGPrm7PwphaSwv23K0ZXq+JlaP5GTRrXeCkaRoBBdakBWL6MjIEyNN0uI0
	ltbNWgqtkRTvhrHolyr643eVCd/bfAzi5o7wR5kTxlPtmg47z0MDjGkvpYLG1oy/0CWs/t
	k1FD6q8XLg1U7uS0keP8HHfCeC5K9CNL3Hdq9fmSeBU1TWqgRtpm9/82ynOqoXFMXKqXtj
	pJyhaUhriHTxBrwDrKudFcjw4A0rHZ5VfF7Wtl5GvQkzB4mWUP5twgKaUn64zBdF5p1Qr6
	W3Iz7hifyvz4xWT0ZD5Z2Poejv/BWqhA338qA6n/e5ZoUT1uGgW0J9CTmzep9w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] x86: efi_defconfig: enable the EFI USB I/O protocol driver
Date: Wed, 23 Sep 2026 09:29:53 +0200
Message-ID: <20260923072953.4123955-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_002957_724896_1A09FCAA 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  b31adcfd28bc ("test: x86: add test for uefi usb io") added
    a usb1 entry to the devices list in test/x86/pc@efi_defconfig.yaml and enabled
    the driver needed for it in the kconfig_add of that same file. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0DF16201D7D
X-Stat-Signature: dutxhmqtq4hjkar1xis9by85xcker6w3

b31adcfd28bc ("test: x86: add test for uefi usb io") added a usb1 entry to
the devices list in test/x86/pc@efi_defconfig.yaml and enabled the driver
needed for it in the kconfig_add of that same file.

As described in 266482336cda ("ci: pytest: enable console and libc
allocator for allyesconfig"), we build and run tests in two separate
stages, so the options in kconfig_add are never applied. MAKEALL reads
them only when it is passed the YAML file, which would have it run the
tests as well, and that doesn't play nicely with our structure, because
we build e.g. multi_v7_defconfig once and then run multiple tests on it.

CONFIG_USB_HOST is thus not set in the image under test and
test_devices_present fails with:

	devinfo usb1
	devinfo: No such device

266482336cda worked the options around in the build stage. Here the
driver is useful for everyone booting barebox as an EFI payload, so
enable it in efi_defconfig instead.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/configs/efi_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index e21ac4fda3..62d83afac4 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -78,6 +78,8 @@ CONFIG_DRIVER_NET_EFI_SNP=y
 # CONFIG_SPI is not set
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
+CONFIG_USB_HOST=y
+CONFIG_USB_EFI_IO_PROTOCOL=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_EFI_GOP=y
-- 
2.47.3



