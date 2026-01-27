Delivery-date: Tue, 27 Jan 2026 13:13:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwm-005tL5-2T
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 13:13:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwl-00016I-QJ
	for lore@pengutronix.de; Tue, 27 Jan 2026 13:13:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UhGi7rmAl2lMvNFuXS5rlJfSSXiQmmrJY8zanZajZaA=; b=qvn3ay2Lg+pHzVX9/RKpugmXZi
	NhrDeT6Ib+877VlZVWsK1vN49MWOe6nZMRKVaZQ/tOUNF2XWXcPAlG8MYl9nuX+Sq04IeJwrynlbM
	gPjVnAKTf/h9/2HXyMXUtORF84CopgipwWL5mzFbKiujKbTvz4gL2tNMsojutACAzR7fSoLmfHDHn
	n5ajQxfFr78pF14fl9zDD9Q840aZw0kAMKWqb3stq+g9DlxFEeStsbRn7Fz8hQYVG5Y5fJdVxse7k
	ybFi57rtwuLbnUG7cF7YCmuv2kV5fW3AdEYm4MnJ3oGs+CCAKnBw0T/7teFS773x3ZRF5yFCShrl6
	6lnLh7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhvx-0000000EDK8-1OIy;
	Tue, 27 Jan 2026 12:12:37 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhvs-0000000EDH2-3scq
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 12:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1769515941; x=1772107941;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+SzZsF4S4muOZ9213XTG+9O9whm/4FKpK9IqKou33FU=;
	b=DCDri8ZOp0n5I3dgBPS3unZrVOmmXTkZV3PAhhi3QV6bhWjXxOxE3zFE/Wh5wbJj
	KfMoHnA3g8sHupgHppMNma6He9hH7zKSto7/346qOxW70hO2UlCzsYrro0y8spzc
	UYLRnQO+NWTrJt+OGMHgSplnV1kBI62tvpAe+Kx/kpYIZaMPBgpl9DcwAGarF0D7
	9AWr3uNNpsp4YDZYvz0bd/qXeghjP4YndEu7RzubKjUWyptwshCsg+Mvuzw107c/
	W0o4n4TeAINEQ9Yy6vyuVj+SfKPY+u+qawqmV9P4rnA5BeI8hmObG0xuhR1+lpuf
	bjNTINAuIMz4Mc59yUWI7g==;
X-AuditID: ac1001d4-33b8d640000daae5-b2-6978aba5156c
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id AC.FF.43749.5ABA8796; Tue, 27 Jan 2026 12:12:21 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 27 Jan 2026 12:12:15 +0000
Message-ID: <20260127121217.3896902-1-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJMWRmVeSWpSXmKPExsXCtT5hnu7S1RWZBn9PylmcWNzPbDH9bZAD
	k8e8nQEem5fUBzBFcdmkpOZklqUW6dslcGWc3fmQueAuW8Xb04+YGhjfsHQxcnJICJhIPF13
	kqmLkYtDSGAno8T3zdPAEmwCBhL/jn5lA7FFBOQl5u5vYwWxmQX0JDouTGQCsYUFrCUWHD0D
	ZrMIqErcO34GqIaDg1fAQeLdOy+I+fISi3csZwaxeQUEJU7OfMICMUZeonnrbOYJjNyzkKRm
	IUktYGRaxShamq1blJqTWGlorJeYm1qSmq2XnJ+7iRHo/zUCjFd2MN759EHvECMTB+MhRgkO
	ZiURXv5lpZlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEedfu+RAnJJCeCDQlNbUgtQgmy8TBKdXA
	lFT4ULtp+r3SSA3dxG0fX7x58PZdWPKxmIgPInPYSqI7z3ZsKCzrmaGz8fHOhiMc4XYX737c
	Ne14+spDrRsy5G+WNVpqKqopJ3JcseVNqrrTVpnFbvj2u8WxI5PZPsn4x06pZ3V/t6QgR2Ve
	agITz5oL+5PvLP5pbSb19taZcrsPERezFyRdjHUvq68yCFxxMSl9fkRamV/11DdsST6Vzfl1
	RVovZ4Z985R7/fTAn7DP8yr14l9Lz86cVbSytjj+/tur4r+5bNiT9vaYXNk5Wadf9LJrsvLS
	goUc58R/H5818cxsH/W1W1+VsVQpLedcphO2Y6f2+gUK3wIdRNq6/th/YHjFZ50b2/38W6eJ
	EltxRqKRqZkWc1FxIgDOAeRScAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_041233_339407_110FAD26 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] net: expand gianfar support to ls1021a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds limited support for the Ethernet controller on the NXP
LS1021A:
    * Only one port has been tested i.e enet1.
    * The PHY negotiation has been limited to 100Mbits-FD.

This is in view of later testing LPAE MMU support with a device doing
DMA transfer.

Renaud Barbier (2):
  net: gianfar: add device tree support
  ARM: ls1021a: initial Ethernet and mdio configuration

 arch/arm/boards/ls1021aiot/board.c       |  35 +++
 arch/arm/configs/layerscape_v7_defconfig |   7 +
 arch/arm/dts/fsl-ls1021a-iot.dts         |  28 +++
 arch/powerpc/include/asm/dma.h           |  35 ++-
 drivers/net/Kconfig                      |   2 +-
 drivers/net/gianfar.c                    | 261 ++++++++++++++++++++---
 drivers/net/gianfar.h                    |  36 ++++
 7 files changed, 370 insertions(+), 34 deletions(-)

-- 
2.43.0



