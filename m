Delivery-date: Thu, 15 Oct 2026 14:15:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKMV-00Durk-0M
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:15:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 887BE202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:15:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LxImqENO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MVv3y6NP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792066506; a=rsa-sha256;
	cv=pass;
	b=C0ebWlTri6RORNmU5EKY21aJakHJzey0FC4fVqgALtrRSpnPSTtAOL05JRhk88cCoz/OGB
	fSIOiTk15g35BjuV/R7Za2hQdPp2ltRHZDDNClX3epq3fOX3WCPbfoQRKhlotb/47dcRe/
	PC9vZCKMYmeqAp0y/kYelOH3BE7TI79SfD60EurSR3jggZ5l0HGdMlI4ZTuHl+TwuGLsb+
	PK/0TEqBMMv3/3epWIE6b5dOngg6jPChFtPpxnDiUsZdzrpldsvV/4vohibNeIMqjzl4IF
	Ig9yvdKZTqJM4x775uJFB9TWt5a7VS3rubMMzkc/qeFbRXv6eYht4ZpoZIJRZw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LxImqENO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MVv3y6NP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066506;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TDXBSTlkSDFdg96uxz+0FCzZOrMrdXM8m+a1hk06nUk=;
	b=HJLwsnZVRQiH6QL0izmWA0GYCDtGNBbgC+P8V6pr9iOH52sZTvWZYaCpVK8eVTizSWtP6O
	e/zwzXPn7jNxDldHQHAGfxgYPW7n60OA69FbOCoCXME4hvikS1k/vrWTT6UHffT5qo6Q6Q
	8yCESR2mHKqGM7Y7fPp1tTGfPPJ7eKwv7kMKAUtKW4Qvh/2vO8VnGPbQXrM3m1M74YNnvZ
	u/r5mybf6Dsy+3lK2qiuMP6HMxQ3VYrSeH+Bgu6BEWG0P4LG3ZNrYG+N6DJF2v1BFryfYi
	ueX604X2teWJZhJEleDCxg8QE51zrGZPlM5ddccscvDfbKVHLUWGwu9ppXs4iQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TDXBSTlkSDFdg96uxz+0FCzZOrMrdXM8m+a1hk06nUk=; b=LxImqENOZmtgiyXG3zQYmlMPOC
	sWCbJrW5xXWtS4gMR8KHWTXSkzpfORhsTbR1oT9TkGIuySynQKkOTo8RgREJT4ySff3V8BolVZ9Rc
	Rc8NrcGqZEWE4ogYYzCGFtjJa52BXe5SpFa+4yx7H/epW7A52db3u9/5Temj53xRWhU27CtNsW+A9
	djmJZyO9Giy9rSRSkHlL85O0is+9s31iMXalci9FrxgzSEIVFRruXYRG9JoZtW68HSaaFdhOvIV1k
	o03NhK/yD4/LB2LOEOan9nA9hNkvihdj/D4kd1D5tbtpLYG14t/ss7gIYYdlP3u2H6YTtZkWbsFMC
	/JS+TyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKLK-00000000455-24iJ;
	Thu, 15 Oct 2026 12:13:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKLH-0000000044c-1QEU
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:13:52 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B4CE0202615;
	Thu, 15 Oct 2026 14:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TDXBSTlkSDFdg96uxz+0FCzZOrMrdXM8m+a1hk06nUk=;
	b=MVv3y6NPPfjU7Wa4Y3HiVqkQXIqDv4SkdiUAonJjK2OZk4hqYgB5aQnQsFdu2Y/M79zf0m
	2NDHnjgFFVnVRsVcMdPlu6gvs/IYDP6w/ALpj/0vhs36qO4h5TOZVQxEEkymgIRk0seuoF
	QTiFMcuQI8Cy7h/edYVGHNXKIC9sQQCPDLDEY0f8i41jo/JYKMFTY0LXP5VIW92kwIrY//
	RUj65bhnKXkujK0PW9uAR50/cJA7OzbzyxrasYol0/7az41XBUO2SB2Lzu4GVrCbLzNvBV
	T0sOJQW1bBB0zFaQ9tOgNJc3EZyI+zCwfk6dyeZArY4f0UNXxBR5RlMJCMkbgg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792066429; a=rsa-sha256;
	cv=none;
	b=INO3MT4ykZ37dKL0wO6WEMta6O3JKuya7Qfqa0jN1WAPFzcLrT+Q82e0VP4C0MZc8uuOTr
	pop9NEOFvOILcj2sULbDdFMt3feAswVfic/oIkp3H4mPuDZcjGdzMTmAxmmWcBaxwE4rF9
	UMh4RnG9EIhiXgPx+gB0uiPU1pF1bjDPWu4CCA7KRxB8riK98uq2nQeXcH0T+OnazVEkOs
	Se/FWQguC/msYgWIzAZDqz0bfoUsiXesTR1KD96WEZTc77AFm0cRXfz3faXrq0VsiS6/Ln
	BGfRIjZMHkRZ5+NKNNFhIF63dyUAAkWRvZPqOFZTmlApLZstZgsJpRPZpKRgTQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TDXBSTlkSDFdg96uxz+0FCzZOrMrdXM8m+a1hk06nUk=;
	b=RaRghg9QvgwpfrWT+VAgSMrDTUZmTXzIU049IsD4O8tyfjImoih6KfGXsC7kaAFmGO8ZTD
	ReQMTvL6pQ/nsWF6D/MOJ+xBagGCrZpNelqn2cvd0N5AfZusy3ne9HyVRw/K8scBojHg6y
	xV7bUljIW0IJVr4dxom6bInIE5KokQsXZ2Yrxkigb+HJUxtDAKoKrUGcKge+iAjd+PCOJz
	5LS/ZjE0eSXMDMweWxocfYdxqssbsoSbFRuc5jRDRKNy3OAsWkdOxBoKF304KyuAXjwzFN
	HClGKzWCAEpqFSJh/OvNp6c+J91EZZk6VBCnUgyYCAjVP3jbBWXxUJxHGJ57zQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9B9A4741297;
	Thu, 15 Oct 2026 14:13:49 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master] ARM: zynq: reduce barebox-avnet-zedboard.img size by 21K
Date: Thu, 15 Oct 2026 14:13:46 +0200
Message-ID: <20261015121348.3356506-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_051351_597620_08043C09 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The full barebox image needs to fit into 192K of OCRAM on
   the Zynq. This is getting tight, so disable some options that are not always
    necessary: Savings from everything but kallsyms: 3460 Savings from disabling
    kallsyms: 18936 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 887BE202012
X-Stat-Signature: fpnifzpf7ifzy7hhdic8xiepmt8tg6np

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
 arch/arm/configs/zynq_defconfig | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 76c73639d6a0..fd5fb4129849 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -1,25 +1,25 @@
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
 CONFIG_KALLSYMS=y
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
@@ -52,6 +52,8 @@ CONFIG_MCI=y
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



