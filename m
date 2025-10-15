Delivery-date: Wed, 15 Oct 2025 20:04:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r8-008BNV-0c
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 20:04:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r7-0003Pe-LH
	for lore@pengutronix.de; Wed, 15 Oct 2025 20:04:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fPHMLvaSzS9ISZFfjdODCrk1oih8NtE1P7fK5NEeGK4=; b=i+SRV8+vzeqV2fjPKuxBZezQFW
	smxP+FTIVMEFeaaiyoTqghiLrQy77Hy/f4L6eYbPDVRFf5Y/BCEMROf7heuEGlKvZVbKsFxxh9X2M
	/THvGj76ut40jMQjFwKce2JGMovoxs+thAgmayIaTINDhBj8p8BOMssWfXCD8pAhpRD9GDjfHD4EN
	wwFtWOvEdu3g/PLhVwm4g6LcpL2U5WKpSUbYtWo4bpR7AQRCiCeZjl9R9H8HuLdlpciMf11mF/rT3
	4yW25GN/PgWMWcidphsErRsuFmo9tKDBkyqXmC1uIt6x8YNEHGAw6IMcwYFR7aflD1C/bMQ1rEIrJ
	FT9Y0Ttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qY-00000002V1V-1Kfm;
	Wed, 15 Oct 2025 18:03:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qW-00000002V0p-32LF
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 18:03:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 08BF9602C7;
	Wed, 15 Oct 2025 18:03:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF4C4CEF8;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551411;
	bh=fUinb2GjLx6gLrcWShw0RkZz2MWyw79BFrjlkNZPwMQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=r4Xj4cLKgL14SdWb8Xep4GsY99BOPneEtWtRmkkTpN64OYz6eC6MmC7W4lu3jw2h3
	 L1mFkt7f3RPhB8PC0slqONVfEZ93lA3PieLRUPulaoabIuhNMSLZWoU8LKqgLFoaYA
	 f7+L6HP5tLpylepPH+y0kaHdCZXVofDTubXM+sprzLqQDe89B3pciqbDmNlzAlh6Vi
	 pXbIyVA+DWcxEyOq3md5ErtCNv8T6P2xDXXA84A2moNzejuS9yTTanEIg43fTpVoXF
	 D0MEN64SWyhzwwhL7kTqDboM5Gk8qSISOOpg+bhVQeTJ2qJ8pYA2KRTBHr9o6qH2jY
	 1Dzc9yBaqw0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF1ACCD19A;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Wed, 15 Oct 2025 20:03:27 +0200
Message-Id: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO/h72gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0NT3czcivj0gsx8XROz1LRUw1TzxKQUYyWg8oKi1LTMCrBR0bG1tQC
 IoRihWgAAAA==
X-Change-ID: 20251015-imx_gpio-46efe1e7abd3
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760551410; l=833;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=fUinb2GjLx6gLrcWShw0RkZz2MWyw79BFrjlkNZPwMQ=;
 b=mGIYu2VABkMCmEl1mOcsB7hQ730IERmxY6FooLlW/gGWSx9nzfz+k3giEw9O8MUxhBQafLucs
 9TuMok9JUdZBiIBH09LAj0/y5gSqRUawO0h0Ozy2D6KxVqJLTNWmLg9
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-102.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] gpio: i.MX: make _get_value() able to read output pin
 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make _get_value() read back the dr register instead of the psr register
when the direction is set to output. Now _get_value() can actually read
the state of an output gpio instead of being always low.

Also add a new empty migration guide file.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
Maud Spierings (2):
      gpio: i.MX: make _get_value() able to read output pin state
      Documentation: migration-2025.11.0: add new empty file

 .../migration-guides/migration-2025.11.0.rst          |  0
 drivers/gpio/gpio-imx.c                               | 19 +++++++++++--------
 2 files changed, 11 insertions(+), 8 deletions(-)
---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251015-imx_gpio-46efe1e7abd3

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>




