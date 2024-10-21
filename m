Delivery-date: Mon, 21 Oct 2024 10:30:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noM-00703o-2b
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:30:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noM-0006QD-3f
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lxxRUcmpZhaaS0LfGoIJJShfpCjh/BiSUDo9byYgtBo=; b=UXRowIYt7A7bUoWL+OWSMR+EkJ
	Yq4S8lEM2FcYfRq36dtzbbOsunF0w50cunrN4qTwQUmtX7a1wy8KW6tq4RkLlqjLAPx3FGLWeuBuy
	eg4qhhSV9AhTJkD7kjWDs0OoHqr08rXM/Frbvc8CgiLmNhDHOgkjhD24ITkfYCg6P8DS0K4tRgFBX
	eImG9zyDKjIL/0aEC99/3t3FXb2wvRWkagvw7xJfTd3wH7dKvLtHxKVlk7mca8/YOgdJcnJfIj3CW
	kVg/9Uu0gVyx8ZqcCJAgbsew+QtPomi3FsS4v5hbouAp/QvvMLeB6ZubBNy3P1h8w3sbE0HbOc6OB
	DtiEqslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2no3-00000006Y5w-0dJj;
	Mon, 21 Oct 2024 08:30:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mj9-00000006Lmg-3Agf
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005nr-Pl; Mon, 21 Oct 2024 09:21:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecN-1f;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1S;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:14 +0200
Message-Id: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOsAFmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyND3cSiXN2cxMrUouLkxIJU3ZK0RF1zk6Qkk7RUU3ND41QloMaCotS
 0zAqwodGxtbUAzJ7as2QAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=2179;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jGAETRbKr+Utngt0kQUqL8jBqt2ZMBUz/WogmfS+pXs=;
 b=A6DksvD4HYLbOdFwdmn7jB7V8HWWdLZfvbW8UUVTaPzaAb8+T6HjuC7qELUMjpMLqnwrPpaqr
 /5H/UMtOgBGDBNo8x3v1aM8XrshYK++L33R/ysdp0RYf/NdIKY/dQms
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002119_893464_9BF1BD3D 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] ARM: Layerscape: LS1046a: switch to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our LS1046a support still uses the long deprecated and binary-only PPA
secure monitor firmware. It's time to switch this over to TF-A. We do
not bother to keep the PPA support as it's long outdated and it would
also make the code code and barebox configuration unnecessarily
complicated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (9):
      ARM: Layerscape: TQMLS1046a: Update DDR timings
      ARM: Layerscape: TQMLS1046a: add support for 8GiB variant
      ARM: Layerscape: ls1046ardb: remove unused variable
      ARM: Layerscape: remove register arguments
      ARM: Layerscape: LS1046a: add TF-A support
      ARM: Layerscape: LS1046a-rdb: Switch to TF-A support
      ARM: Layerscape: TQMLS1046a: Switch to TF-A support
      ARM: Layerscape: LS1046a: remove PPA support
      ARM: Layerscape: LS1046a: add PSCI node

 arch/arm/boards/ls1021aiot/lowlevel.c |   6 +-
 arch/arm/boards/ls1046ardb/board.c    |   6 -
 arch/arm/boards/ls1046ardb/lowlevel.c |  29 ++-
 arch/arm/boards/ls1046ardb/start.S    |  14 +-
 arch/arm/boards/tqmls1046a/board.c    |  38 ++--
 arch/arm/boards/tqmls1046a/lowlevel.c | 327 ++++++++++++++++++++++++++++++----
 arch/arm/boards/tqmls1046a/start.S    |  19 +-
 arch/arm/dts/fsl-ls1046a.dtsi         |   5 +
 arch/arm/mach-layerscape/Kconfig      |  14 +-
 arch/arm/mach-layerscape/Makefile     |   2 +-
 arch/arm/mach-layerscape/ppa-entry.S  |  32 ----
 arch/arm/mach-layerscape/ppa.c        | 147 ---------------
 arch/arm/mach-layerscape/tfa.c        |  29 +++
 arch/arm/mach-layerscape/xload-qspi.c |  19 +-
 arch/arm/mach-layerscape/xload.c      |  12 +-
 drivers/mci/imx-esdhc-pbl.c           |  13 +-
 firmware/Kconfig                      |   3 +
 firmware/Makefile                     |   2 +-
 images/Makefile.layerscape            |  14 +-
 include/mach/layerscape/layerscape.h  |  11 +-
 include/mach/layerscape/xload.h       |  16 +-
 21 files changed, 458 insertions(+), 300 deletions(-)
---
base-commit: dda64a15ea026c95ccd8bd8a8b70c7e070af1a15
change-id: 20241021-arm-layerscape-tfa-74bb4fe5713e

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



