Delivery-date: Thu, 18 Dec 2025 15:50:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-00CrXx-1s
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 15:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKo-0005Wb-SA
	for lore@pengutronix.de; Thu, 18 Dec 2025 15:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2t7hD0ouZK6TNfr4ECLg5LkryA0utkgvGX6hLnwm9RU=; b=gHYFk5X30wkAxMPJkcheWq+WP0
	TIUKEUqQqWvsvq8S7J+e8NbicVo2n1FV1PqKfXmDMmEA5r0cISeWgsbNxZ6YOJ08VFDFeedY8dJil
	sYxthtjjAk7hE98IfvXSXI/WYG51b4z9r+rOkrKCLDOsc/vhmkZR59ljmZiAkIkRqzxV//Gdbsuxj
	HYuixEvW5d3uYlcG5FbP10xpiqZ0m9MdovQLbf5ss4jfG4r8SUCCACHoxru0jzvlHmhznr3Fz7cg6
	VtUHb5ST2iPVB3tUcP8UvGBiPTU9I3GVv6t13C7ukdACajywyO7LkG3YqrLi3BXrqFCumHNnzqbpa
	S4Gq8IUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKF-00000008dYG-39xv;
	Thu, 18 Dec 2025 14:49:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKD-00000008dWb-33Un
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 14:49:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0005Ik-CG; Thu, 18 Dec 2025 15:49:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-006IcT-0a;
	Thu, 18 Dec 2025 15:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0000000E9lv-0LTq;
	Thu, 18 Dec 2025 15:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 15:48:43 +0100
Message-ID: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_064953_768032_63BF7C5B 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] efi: add EFI loader integration test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For basic testing of the EFI loader support, add a Labgrid environment
capable of booting through barebox into Debian and some basic tests
checking in Linux that things are as we expect it.

This is intentionally not wired into CI as I don't want to hit Debian
infra on every test run. Github Actions supports caching for that, but
until this is done, we expect the Debian nocloud image to be manually
downloaded.

Ahmad Fatoum (4):
  test: py: strategy: add OS shell state
  test: py: add simple SMBIOS tests
  test: py: add simple EFI loader integration test
  test: arm: add Labgrid env YAML for multi_v8_efiloader_defconfig

 conftest.py                                |  6 +++
 test/arm/multi_v8_efiloader_defconfig.yaml | 33 ++++++++++++
 test/py/test_linux_efiloader.py            | 59 ++++++++++++++++++++++
 test/py/test_linux_smbios.py               | 30 +++++++++++
 test/strategy.py                           | 11 ++++
 5 files changed, 139 insertions(+)
 create mode 100644 test/arm/multi_v8_efiloader_defconfig.yaml
 create mode 100644 test/py/test_linux_efiloader.py
 create mode 100644 test/py/test_linux_smbios.py

-- 
2.47.3



