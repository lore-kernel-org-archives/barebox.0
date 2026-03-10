Delivery-date: Tue, 10 Mar 2026 16:25:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxH-00A8N1-00
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:25:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxG-0002R4-R7
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:25:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7zd5axTIcrkCuIhlt6HIp0pXvUptGxFU32W6w8w4REQ=; b=Zg2PDEgVuuDUYt
	jrD8BtbkkFcYcf0e2UasTTiOXjXuG2yLkZt2wcGh0DxDXe/Ls87PpgtnGwKapXmMhs1AsXczb9Mve
	1ePzTcdXV01gGjc8xrCq3ppWEvocfiyJRp6FaBGgOPuXb+C0G5Xn94vWjKeO/P4uc2Q8wmZ2mtfJd
	vRJJIjXtzU8JmekOhyX/9DfVfyYM3wf1b6tt50lFdZqQXy4YhSzX21242a1wxWbiHA7nA1oOUoiYq
	al2DU49JIlF9FPDO3q9xTVGOEYDn4M+nA9YUjSX4cJ6nrbhhsP6DY0BzPzDAlkuKc1jFVM2Aa/TwW
	i6Ocl+nZ2OSV5SJVCzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywt-00000009naK-0OYn;
	Tue, 10 Mar 2026 15:24:43 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywq-00000009nX8-0kWi
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=7zd5axTIcrkCuIhlt6HIp0pXvUptGxFU32W6w8w4REQ=;
	b=EOP3d/pN/F4qAPeqH8ZNy5nnw7ZJwsX+r4FHMePJi6otUoJcQpZY+lfrZLeOdu9k7wZ1uhlSxT93n
	 GykXscsuc/IjgzfY/QkPvtNEJLTZ2X4YqO26KXynjPSf1DHLG4Hr1xLgUN89WQ/qrzgtBj+nsZt0B1
	 xndntzt1SfBdFrydkej92UyFtYkqzjjJeP0JAslh5iOr85DR8BZOwkQze4zgdcfEBqcQpUWLW+MMSu
	 yhdFt0YHoXKWZKmcQIOVRpaxSCd7W5xnJG0hFVP4RJYovAvyIaVOmsB2n3mj+pAxN0Iuia/k3ddOv4
	 3XNCy7sulQfNO9kJP5zFaaYTIxRM+TA==
X-MSG-ID: 3f278a25-1c95-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Tue, 10 Mar 2026 16:24:25 +0100
Message-ID: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_082440_357724_6372AB0E 
X-CRM114-Status: UNSURE (   8.58  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>, David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/8] ARM: boards: protonic-mecsbc: Generalization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,
This patch series makes changes to the existing protonic-mecsbc
board support. These changes pave the way for supporting multiple
simular products with the same board support code. We'll be adding
products with a RK3562 chipset to the mecsbc board code. 
For that we'll change the board name to be more generic: protonic-rk356x

Regards,
Robin

Changes for v2:
 - Squashed patches that added and fixed the late init call (5 and 8).
 - Improved commit message of patch that adds the model specific init
   function.

Robin van der Gracht (8):
  ARM: boards: Rename protonic-mecsbc to protonic-rk356x
  ARM: boards: protonic-rk356x: Remove VIN measurement
  ARM: boards: protonic-rk356x: Use devicetree alias for saradc
  ARM: boards: protonic-rk356x: Configure ADC and channels in model data
  ARM: boards: protonic-rk356x: Move mecsbc code to model init function
  ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
  ARM: boards: protonic-rk356x: Move bbu setup to device late init
  ARM: boards: protonic-rk356x: Read board serial and MAC address from
    eMMC

 Documentation/boards/rk35xx.rst               |   2 +-
 arch/arm/boards/Makefile                      |   2 +-
 arch/arm/boards/protonic-mecsbc/board.c       | 180 -----------
 .../Makefile                                  |   0
 arch/arm/boards/protonic-rk356x/board.c       | 297 ++++++++++++++++++
 .../lowlevel.c                                |   0
 arch/arm/configs/rockchip_v8_defconfig        |   2 +-
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/rk3568-mecsbc.dts                |   1 +
 arch/arm/mach-rockchip/Kconfig                |   6 +-
 images/Makefile.rockchip                      |   2 +-
 11 files changed, 306 insertions(+), 188 deletions(-)
 delete mode 100644 arch/arm/boards/protonic-mecsbc/board.c
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/Makefile (100%)
 create mode 100644 arch/arm/boards/protonic-rk356x/board.c
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/lowlevel.c (100%)

-- 
2.43.0


