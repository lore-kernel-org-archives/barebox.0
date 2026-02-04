Delivery-date: Wed, 04 Feb 2026 12:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLj-008jyV-3D
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 12:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLj-00089p-05
	for lore@pengutronix.de; Wed, 04 Feb 2026 12:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y2J4roN9S1KyWs5bGuDrFnEeIb1FgR6tL8jBtIdBgpo=; b=j0ExTEvyx2pAVkMILROp6zfhGX
	G5lEjuA2oLXy09X6z64p9saL9xMFI6WmdRZ3oaBp8rdgfgFNEQuk3tw9IdlPPnRnGDNIb/zxuYIcJ
	U6viPUEqwA0uBdVUwuZJ+dGwGVd3B6S1r57szFyTyUyFVbU8EsxNmEGsyQDh/LQuIB6N24ESdS+vw
	eYVgZhJinwNdJ0ZZbwyJh97FrmfZJzH8LS2zrDeIjM50jTfJdg6jemWJfryqRskpgCE7JXwsDn5y9
	XMJExUB2RgwwePAFy/3SzIu63tDkSCoStamkBrfOykR9Q/6gBPp/aCTQU1mH3JUuxGhluH7nYL3SL
	8ufcYPdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL6-00000008Nt2-3kKa;
	Wed, 04 Feb 2026 11:46:32 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL3-00000008Nrp-1aKR
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 11:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770205585; x=1772797585;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H/saBO7J5kENSERIg3rirbQL6YLUweeJ9K1BYVjNmOc=;
	b=fOdnRGyuR/1PClRDqNxq8xZ3gzKyadXdDcYZE8Dz04RbBQ2yUvaQz5r5Xe7JDaG6
	UBq6jbvrrIahJGXv7zo2E+ZmmpeOscptKxGKQ0HVWgPWfyDF1OwN9/Y72c8l3bna
	2qJOq7ux3Rz8kqQTfbFj/nLVSOT2WfZpvuf+jpSeTfZtfMXVxObfDai+5w6UzIjT
	i0y7+onUQ8Ii+tHlxA8vfu5/piuloxFGMeiZxi7TJzT6Hh7Wdcq5bOIaIbtCgPbE
	4ZtBlEHBdnAGVdUR2vTMEyvwNesY2b1sKZeWV4pJ+WIcK1Ii/RvdJuwYRJGZvU7T
	HO7+7OPkVEueIlzgCMf//g==;
X-AuditID: ac1001d4-33b8d640000daae5-05-69833190587c
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id FC.ED.43749.09133896; Wed,  4 Feb 2026 11:46:25 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Wed,  4 Feb 2026 11:46:17 +0000
Message-ID: <20260204114621.2130261-1-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJMWRmVeSWpSXmKPExsXCtT5hnu5Ew+ZMg1MTmSxOLO5ntpj+NsiB
	yWPezgCPzUvqA5iiuGxSUnMyy1KL9O0SuDLu/UoqOMhe8bRxHUsD4yHWLkZODgkBE4nGLffZ
	QGwhgZ2MEic314PYbAIGEv+OfgWLiwjIS8zd3wZWzyygJ9FxYSJTFyMHh7CAncSCacwgJouA
	qkTf5gwQk1fAQeLQ80CI4fISi3csZwaxeQUEJU7OfMICMUReonnrbOYJjNyzkKRmIUktYGRa
	xShamq1blJqTWGlorJeYm1qSmq2XnJ+7iRHo9zUCjFd2MN759EHvECMTB+MhRgkOZiUR3vTp
	9ZlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEedfu+RAnJJCeCDQlNbUgtQgmy8TBKdXAZOpZfrVf
	/0L2ut2s/WFnG983mtssPFG4/iObX5qctKqV7JfE7+I5b2MNYgN+7nG4MX26Z7B90I3opaEt
	01+ZPlp8kWn+g84bx8rffzbzW2ouaGO9yPvaslNJv7mnLD9xv36+zH+P4kipdbc6o7Y2qkt7
	ZBSefv7S96b+sY8bNPl/fvwyo5KDf+HKi45s/i/LZ+39XPX7hnjxRrnPH2P8V2+csnzu+3S9
	gDkntklWqxus1+ufJlq9xuu49/uXoRffTKmdH8H35f2bR84nFZNsQzs8jzFfmdyq8PoDU/X+
	kxwLZprOOPQtxTdn4qOFHBzLbH4alC7X1ts84ekNltaOd0xr9NfNUf0bedA3dYdo0nwltuKM
	RCNTMy3mouJEALVYE1xsAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_034629_848489_D3763B39 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] net: expand gianfar support to ls1021a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds limited support for the Ethernet controller on the NXP
LS1021A:
    * Only one port has been tested i.e enet1.
    * The PHY negotiation has been limited to 100Mbits-FD.

The version 2 splits some cosmetics change in the code from the actual
Ethernet controller support.

Renaud Barbier (4):
  net: gianfar: disable link information
  gianfar: apply checkpatch recommendations
  net:gianfar: add device tree support
  ARM: ls1021a: initial Ethernet and mdio configuration

 arch/arm/boards/ls1021aiot/board.c       |  35 +++
 arch/arm/configs/layerscape_v7_defconfig |   7 +
 arch/arm/dts/fsl-ls1021a-iot.dts         |  28 ++
 arch/powerpc/include/asm/dma.h           |  34 +++
 drivers/net/Kconfig                      |   2 +-
 drivers/net/gianfar.c                    | 326 ++++++++++++++++++-----
 drivers/net/gianfar.h                    |  40 ++-
 7 files changed, 402 insertions(+), 70 deletions(-)

-- 
2.43.0



