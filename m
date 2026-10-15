Delivery-date: Thu, 15 Oct 2026 14:51:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKvP-00DvQq-0e
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:51:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9943B201547
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:51:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iJdBoz5T;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="oLkuNjU/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UhUn7izR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792068666; a=rsa-sha256;
	cv=pass;
	b=XxIsEZ/CYgOXCUBqotD3c7iacH8z2Kj8tK/6JJ5jcGMxaSPWvqD7mLWT3lvQI/xAPwiOCe
	PwSEDhfev8Uld8SJV3m1w2HrJGNwdprfL1LJoP3c1euu9Ep1ybM5+kKVVVwYHDiplR06nw
	Q7v5J/ZHgxCQ68B4JRA7gyLJ58ubGCgDEXeg+ZoPtXlTWNky/S2qFwfMy9vzIo1rkO6bfp
	6BXlf+zxFS4dkqC6TvpX33kiNe7GSpDMQkgjIzntm3hoPUXsBrmLgU8grr/nLT9xZojKmm
	cUPwXxesJhydoZ9H2Y9eNkFlnM2iLS0G4UtjRZZ/y1LB41SmNR7i6p4BakK1Gw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iJdBoz5T;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="oLkuNjU/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UhUn7izR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068666;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UtrCRUHirwCegrmSYmt/aoeaWjA3WH9nG0AQQWFPfTk=;
	b=O8unFnVmrVLJgDRHCP1yWmuAkHf++gzXGw3OB3hJCei0V/kYj5PtG3zGzd0Z6qXeeCD6Ih
	cMwiN1Ms6UsuYTGGeQ8+U7zMKOBgnGi3EQuZDGCVQVnv4Th76XtR2FGxzE3hQ2KuFCGwA3
	3e6m7EXtasNscO9iQwIg+LCRGTPNAU1vj/6FeHb4b+dqtJiHy2D2uzQffsdhrq1/ot2wcW
	UVsTV5mBr64wlLaF2ecH6cdA1ovWwDDgYRCy/FsAw8S5SyooqU6dVv6WY+/NERBy838Fge
	mj9Rb7omqQ0a1XIfrE6bFsOxXedyWDPNijloBqyGqhOK1JekwB17VgQ85274Mg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UtrCRUHirwCegrmSYmt/aoeaWjA3WH9nG0AQQWFPfTk=; b=iJdBoz5ThyQ/xFHs+1beUNzHw2
	nLWUApidweTrNbBqn8A/rkUkzM7JDVmlFB/3YPkX+UqYszrHBh1vpbz+P0oOOEYNsmpOBItJPAym2
	0vk7h42zadIgvu4uMR6+MEruZhZ7QALSroEmH61+YhcoGkuR0LHTjrvWQHiAnI/2nMtMP/Lwt3Pzs
	VXSOIULHgVCQOHFK7U7CBdo6ojVzQGBDxXY3vUvSC8AtcYrEMtEpoH8u8PdvLW9qTRyP7jx2tx/HL
	SYLYYfJWG51OdW4Oos1jFkMui8MugHqSvz8tR6DmMSz57P9eWjxMQjaIhbK8qiQ8FV4Qhmmjc+HZR
	8tjj/Iug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKtw-000000009xS-3Ttp;
	Thu, 15 Oct 2026 12:49:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKtv-000000009wj-13I0
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 12:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=UtrCRUHirwCegrmSYmt/aoeaWjA3WH9nG0AQQWFPfTk=; b=oLkuNjU/wJqisYNQPh+EVnaQbC
	Lu+oZzapZsyRrIs8PEblHAiZqMAyTj7bR6jhJctuj99R0LzuCddTm6ziKjaCGv76GDzgPUfdBWUOI
	TiGsg7YCKjM5ANeAr4iI/BOoVnrK64aJT4iOvIzNDoXJZXVsU+t1aYqiysDqozHz9WtaOzlrx+E7M
	XkPUWIAMAYq+QxajM7V4B32nIR94uQwH5Q8zQ40YIazOuiSr/470SsyP74STnVy5Ano1t3MwzQVOX
	A2eKELI8k7c2GVKptGrBfKbF84emxCR6BSBn0xlVHUCsOrRkbV+cMqhprvrGujwVgcNaEJ4ec7z/O
	UZJO7B3Q==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHKts-00000000NI4-1Dcu
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:49:38 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A1E7200563;
	Thu, 15 Oct 2026 14:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UtrCRUHirwCegrmSYmt/aoeaWjA3WH9nG0AQQWFPfTk=;
	b=UhUn7izRFmLHSFJztOiXPtJReyao3GYehP4vF52/7EOPm2pZ0F4wrxQNm2O+LZepNQ0P7H
	e8bO1MLc1hQqL9i6sJD8j6YkiLcIpSvu+vPPqEV+++Sugoe9INs84AsMJAkdzIusNz5Mv2
	xYeVHhKCXumUGvJGtlV0somLS2KgWeKB1n/dl7b5NcJvqi3t2XA+CLqLdZUIEQzfR0fNM3
	hZCBb1nWhXpvZgQm9XNHbVWxWhrd7YC0GFraWRoYbKCx9M6/xXs3ErK/abxvc/HH8JJNtA
	HVRHTb3Q4dYevb8dF8UnoCd1KkTp+4xut10PbFlUU18r8QJoLoC6hKrfafsG2Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792068570; a=rsa-sha256;
	cv=none;
	b=DA1awputhTTcv3a/5x9/flic2sGrR1hLx4gWd07GniDFXe+kAiZ7WFU9WypCTpn9vnczZq
	A0J6w49skA4TsZXS6Vz4oP7bwh1lGqQEJB6ylr8vc2+o7ezCZobmDc7UPviA6mnqoc3+OI
	HIPu7TuoEr4ExWNulX4mLAtOYovxSRcKhs016DYk3YDvZpORDAKcWqaGfV9a88TaVbi4Cn
	uxgkkWQhVJa8UWSyUg2Al2t4wZHOv6hEFA4ppQe88Ou+nj7+9iVa4HHa3MMURfYdWIEQ24
	ZMaLFxSz5+YHWBf5ZwCthXe2VZGn8gWw4lgjjw71Cjkruyjkzcp7Eo8pgNh+Og==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UtrCRUHirwCegrmSYmt/aoeaWjA3WH9nG0AQQWFPfTk=;
	b=YC4gY8PYu3+MEQEpWP34ytFZAcReID+X43gd1YAZquzxe/HjiIO0gpUV1ivk+50LIJyHRW
	Lu4I7WRUgFPQc5kvksJnoBKz+WVwHfuwO2MZYK00VlHohrm+BJuhZZ9CMzSjgVrbmFzxCB
	dQobuPs7eDfj0y54q+tPPfG6oyU9AL2dsC1mvJ1bZf9HpJqK6qTvbsIdzNZR3+zX7xEhrO
	NdOnM+XKt3WXYQTG1NFoaU/3azqSEQ+rjScJBBTxEdeI8kdfYm1qZq7gaK4cXFpn5Shyni
	CYBJf0PynwNlFPz/xw2Suz2JdGfbaCbIWMlwHP5hTDouIFw4fJ+mt5IwKO87TQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 846747409AB;
	Thu, 15 Oct 2026 14:49:30 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master v2] ARM: zynq: reduce barebox-avnet-zedboard.img size by 21K
Date: Thu, 15 Oct 2026 14:49:12 +0200
Message-ID: <20261015124929.4031881-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_134936_566852_2AFD5C68 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The full barebox image needs to fit into 192K of OCRAM on
   the Zynq. This is getting tight, so disable some options that are not always
    necessary: Savings from everything but kallsyms: 3460 Savings from disabling
    kallsyms: 18936 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9943B201547
X-Stat-Signature: sddrb3sdkt53yut57rrk4eu8q6rqqp3s

The full barebox image needs to fit into 192K of OCRAM on the Zynq.
This is getting tight, so disable some options that are not always
necessary:

Savings from everything but kallsyms:  3460
Savings from disabling      kallsyms: 18936

This gets barebox-avnet-zedboard.img size down to 171K.

Hopefully, disabling kallsyms is only a temporary measure until we have
either have RELR support for ARM32 or kallsyms is updated to not
emit so many relocations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - actually commit KALLSYMS disablement (Sascha)
---
 arch/arm/configs/zynq_defconfig | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 76c73639d6a0..fd511fa095e0 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -1,25 +1,24 @@
 CONFIG_ARCH_ZYNQ=y
+# CONFIG_CPU_V7VE is not set
 CONFIG_MACH_ZEDBOARD=y
-CONFIG_FIRMWARE_ZYNQ7000_FPGA=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="zynq_defconfig"
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xf000
 CONFIG_MALLOC_SIZE=0x8000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
+# CONFIG_BOOTM_UIMAGE is not set
+# CONFIG_DEBUG_BUGVERBOSE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH=""
+# CONFIG_BAREBOX_DT_2ND is not set
+# CONFIG_FILETYPE_STRINGS is not set
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
@@ -52,6 +51,8 @@ CONFIG_MCI=y
 CONFIG_MCI_ARASAN=y
 CONFIG_GPIO_ZYNQ=y
 # CONFIG_PINCTRL is not set
+CONFIG_FIRMWARE_ZYNQ7000_FPGA=y
+# CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-- 
2.47.3



