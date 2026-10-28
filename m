Delivery-date: Wed, 28 Oct 2026 10:26:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzv2-004H1O-0L
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F33B5202920
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v3vP7hBD;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XGoL55G1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179564; a=rsa-sha256;
	cv=pass;
	b=MNNhb8sI+bFNPMcjvktboqdoY/yqthl4Ah322nSk9Nh/ju2pV982aA8X0aBSzIM9oZQ7jI
	TcaOhKisRm65XR1FDD/43DoXLmqLeLxWuni0+P9HhVTaPI4/+C9+anZuCFJIOq97YBuIc4
	BIUNYtMZW81Onehbi82992AHpvhf55Y8VcZNXCofbOaT7TE9k77bvwL7L46JsPVmyFXHPq
	C30cBGh471shPeX5/THWOvjECnAPZs4IRIpADPs2RCXeuljd1JIwnkFlcxtwVWpyEEz0Qz
	QaXDAAZP8bb5nuow1uAImosttvLMVo+Pf29ebjsVeU9P0xdKOi3iORQEPi2pMw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v3vP7hBD;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XGoL55G1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179564;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=uU3w7uY2BBShJI19IUKYe+EHR5Q6BNxrYso/zp0s6js=;
	b=G0oNKdFbNKdK36ShGvesF0AzUptt6FZwrWxlKtw1LpIVo/LqxF9oOOZfS1M/V9fxEMFE/q
	Zbg7kfmQdxERvFCBw7Zzm00ftfGI1/QQLFmHw/c6dNQe7ZcM3j5oiBh6TgemP8tDYo19na
	pdrdrKXvBhTiDxE2S03g7JNKFeuef+G1z+b7VOyz8Mq6BEoNTPXJtWXjbU3wMbIdOFJM74
	5Uc8CliHpPwDoYEdIJotAM0i8LJBdnIwjcH53TYIRS1jsn4iwqOax3/bI0+dmT56N8fTuD
	c80Y7Wv8WRBplhYEW/OZCZPJeeloqNviFHupGzf8O+TT+DVZfv397+H0dYbkOw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=uU3w7uY2BBShJI19IUKYe+EHR5Q6BNxrYso/zp0s6js=; b=v3vP7hBDQcxnmmmUYW4QvbpBkT
	jMSFrgdJG3FIZpguImHYfWpLTqBwIfIC0/7NH8rvvBZz4kM0SOaPzPS+GMsyoxokb1idQ3bCjYF2E
	/0PXPlAT0XIU719uGklI/lR7ZbsE5BaCpbvGd3t4PPznuX21Jy+4ZTTorbaxT7zpohWKQZUHslTym
	nUrJ0axTge1fFTqySKXM5KW7WX4rHw9VoBXEJWSVNvbc5UR3XAwQeGuFLq36BpQHShUwrzniKWMgq
	lX52Hf0NoOhqseNkUsAF3lvy2G+c3w3jbTOdqo7Amq2hK4L5nsGrE1quVNYb8dHUDWim7xqMnqDai
	vosEwyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztv-00000006eJ8-3AfI;
	Wed, 28 Oct 2026 09:24:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztp-00000006eE2-3nlE
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:53 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5F4E6201BFB;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uU3w7uY2BBShJI19IUKYe+EHR5Q6BNxrYso/zp0s6js=;
	b=XGoL55G1Pw3W8WPO4p0vT9CUfuRE/mrVO4OdSvqeb/2gCyElvlh9OMGaDSY34SB1ANOuZM
	JDUnHo2Px8wDkrNxcpX7trk9m8asK3m7Wp/qJyl74uP3tiTPsuHqMvzMpMJJW98aJEh010
	r/gHAKoe2Gg5yJ7CViE/Q8U3mNv9Gq1BUFDmat3UVHwulYT+i098Bfg3Y9hYClPFqY25V+
	eWjjlsxxU6lEDeo/5iWMLfc4HFaVdrOoaO7AvHmV4zrEw4wtHJ6YDH2/5WQlOCpucNJlaV
	xRFfbO0ioddhTYTT+JURPW6tuj9J1lLzuURrK4zLVsMPc5i0stKB3exsLb1Uyg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=apcFoLL908sSdriUSbZrGTEcAKik8243ZfNe7tRgPyXyVPUfl3KZTrg0zXfMznLVDjjcso
	UBQrcg8M2oknLNmPd3OryQ58xCtlfKMHYEvNQhLankTT7RJFX5cgVtvBOX2l67zWf+8ujb
	HwD5oBAvIqn60MBlfK/VVSxilR8P6BvhFvQ649kStnTNxeLFfRNAWRok3022yJxh9ZQA+h
	8Ahh8GSm9iSqyAR4wMCAFdeDJQ2oehWvlN1Bw4vxbcHUCehx4yGawjui0RSsmqjwN+bHiN
	qBV10Ut53vg2qda9zjMAXl84PjRRTTYx7uVpPKvz3MvxiIY8qdsNuRh31e8oBA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uU3w7uY2BBShJI19IUKYe+EHR5Q6BNxrYso/zp0s6js=;
	b=KXbzzn+LOiHa1n40awbgN6J7G3zmuA/xfxGKDviTWq2vZlBB7HwTbWmtopTfQFzVJMNzm+
	gtS4K6drEWXix/eWUllbtN/zCxYts+mOqCw0csfRqc/79Opv4S+gAowI39hLYY/jBPH1y5
	w8P7wIxSe8mqy5aJneGHJcOGwkGfuYs+HCw7KLzGRLW1M2yGxjJPtb08n++JRjLKvLlNfM
	1vs9RIWhQJRMdUtXQ2bPZ42omoZIgZpF0tEEmcX+n+Jj64+CAgNGt0+AefaekHinSTyXDP
	13Z1w3PTHYjFzdssaDwV8u0WFhf6Xtt3zNHstNwg9d8TETXK27FAwFRRrOsmZA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 49F9074094A;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 00/19] driver: add devm_ support
Date: Wed, 28 Oct 2026 10:14:34 +0100
Message-ID: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022450_386593_A73D51BA 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We currently have only devm_ macro fakery that leaks resources
    on device removal. This is flagged by static analysis and requires modifications
    to ported kernel code that uses devres-managed actions. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Queue-Id: F33B5202920
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: soqpz6cxkyn544bsmz4ctgzunpph6jk1

We currently have only devm_ macro fakery that leaks resources on device
removal. This is flagged by static analysis and requires modifications
to ported kernel code that uses devres-managed actions.

Implement destructor support into talloc and use it implement a subset
of the Linux devm functionality. 

How devm_ allocated device resources are freed is a bit different from
Linux:

- Runtime unbounding of a device driver or removal of a device
  frees _all_ device resources

- Boot time invocation of the remove callback is followed by running
  _only_ the destructors. Allocations are leaked as the kernel will
  reclaim all memory anyway.

Ahmad Fatoum (19):
  commands: devunbind: refuse to unbind devices that were never bound
  commands: devunbind: don't poison the active list entry
  talloc: remove unused talloc_steal() and talloc_steal_children()
  talloc: free children in a loop
  talloc: add support for destructors
  test: self: talloc: add destructor tests
  talloc: add talloc_run_destructors()
  mfd: pca9450: don't free device-managed memory in probe error path
  video: backlight-pwm: allocate brightness levels with devm_kcalloc
  driver: implement devm_ allocation helpers on top of talloc
  devres: Provide kmalloc_obj*-style API for devm_kmalloc
  memory: atmel-ebi: use generic devm_kzalloc()
  driver: add devm_add_action()
  test: self: add devm_ selftest
  driver: add devm_request_mem_resource()
  driver: make dev_platform_ioremap_resource() device-managed
  treewide: rename dev_platform_ioremap_resource() to
    devm_platform_ioremap_resource()
  driver: make dev_platform_get_and_ioremap_resource() device-managed
  serial: stm32: request the registers with devm_request_mem_resource()

 commands/devunbind.c                          |  11 +-
 drivers/base/Makefile                         |   1 +
 drivers/base/devres.c                         | 259 ++++++++++++++
 drivers/base/driver.c                         |  61 ++--
 drivers/hw_random/atmel-rng.c                 |   2 +-
 drivers/hw_random/bcm2835-rng.c               |   2 +-
 drivers/hw_random/iproc-rng200.c              |   2 +-
 drivers/hw_random/omap-rng.c                  |   2 +-
 drivers/hw_random/timeriomem-rng.c            |   2 +-
 drivers/memory/atmel-ebi.c                    |   6 +-
 drivers/mfd/atmel-flexcom.c                   |   2 +-
 drivers/mfd/pca9450.c                         |  20 +-
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  |   2 +-
 drivers/phy/rockchip/phy-rockchip-usbdp.c     |   2 +-
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c        |   2 +-
 drivers/pmdomain/imx/imx93-blk-ctrl.c         |   2 +-
 drivers/pmdomain/imx/imx93-pd.c               |   2 +-
 drivers/pwm/pwm-imx-tpm.c                     |   2 +-
 drivers/pwm/pwm-rockchip.c                    |   2 +-
 drivers/serial/serial_stm32.c                 |   6 +-
 drivers/spi/spi-fsl-qspi.c                    |   2 +-
 drivers/usb/dwc3/dwc3-imx8mp.c                |   2 +-
 drivers/video/backlight-pwm.c                 |   6 +-
 drivers/video/rockchip/dw-mipi-dsi-rockchip.c |   2 +-
 include/device.h                              |   3 +
 include/driver.h                              |  27 +-
 include/linux/device.h                        | 152 ++++++--
 include/talloc.h                              |   5 +-
 lib/talloc.c                                  | 205 ++++++-----
 test/self/Kconfig                             |   6 +
 test/self/Makefile                            |   1 +
 test/self/devres.c                            | 327 ++++++++++++++++++
 test/self/talloc.c                            | 207 +++++++++++
 33 files changed, 1148 insertions(+), 187 deletions(-)
 create mode 100644 drivers/base/devres.c
 create mode 100644 test/self/devres.c

-- 
2.47.3



