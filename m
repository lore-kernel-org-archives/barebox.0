Delivery-date: Fri, 19 Jan 2024 23:46:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdE-007ce5-1U
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 23:46:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdF-0001Sb-6f
	for lore@pengutronix.de; Fri, 19 Jan 2024 23:46:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s8OvrteVqd68nf1wjrSj9HKumBhFiAdu98u0bh1403g=; b=25ENor2xwZFKYrcWoezpeVf9Uu
	nJvA8BFPDzuP9Q8ZlSZpJYgjf4o8v7vy5ldHNuLvSUFTgzguZvPPJmqr5PA8MMRyW69nAnqZlx/xv
	U2X6Hq59oL6mdBlVqqZuc/pJFhLl7cn80yjPjOJRl3nEUxQmu4XhN5WhUM8uGobQzJicHXsuD21zB
	DfYBcY493EkgdNQ6kWJy+dKQSiT64mbiZioqHp3I++JGcgOv457A02mXAG05qFXEceCJgnnuRU9uN
	1bVYsWE1WBO3LwjY1Bk/DPHiDjO9XdArKcy32qv6wd/Qun39abfHNnUKtrzpJlBiuFv6tx/vCcjgK
	o0hbQYhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcB-006ns6-2P;
	Fri, 19 Jan 2024 22:45:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxc8-006nqA-28
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 22:45:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc7-0001Gw-AI; Fri, 19 Jan 2024 23:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-0010un-9A; Fri, 19 Jan 2024 23:45:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-005s9I-0V;
	Fri, 19 Jan 2024 23:45:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>
Date: Fri, 19 Jan 2024 23:45:19 +0100
Message-Id: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_144528_695583_6A29ED45 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] soc: imx: featctrl: finalize support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only had preliminary feature controller support for i.MX8MP and
support for detecting missing VPU, DSP, NPU, LVDS and CPUs was missing.

Add support for them, so barebox may fix up the kernel device tree to
disable these nodes. This is especially important for the VPU and NPU as
the kernel's blk-ctrl power domain driver may try to power them down as
they are unused, which would make the SoC hang.

Ahmad Fatoum (3):
  soc: imx: imx8m-featctrl: make header self-contained
  nvmem: ocotp: prepare adding tester3 support
  soc: imx: featctrl: finalize support for i.MX8MP

 arch/arm/dts/imx8mp.dtsi             | 54 +++++++++++++++++++++++++++-
 drivers/nvmem/ocotp.c                | 27 +++++++++-----
 drivers/soc/imx/imx8m-featctrl.c     | 45 +++++++++++++++--------
 include/dt-bindings/features/imx8m.h |  5 ++-
 include/soc/imx8m/featctrl.h         | 25 +++++++++----
 5 files changed, 123 insertions(+), 33 deletions(-)

-- 
2.39.2



