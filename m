Delivery-date: Wed, 18 Aug 2021 14:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa5-0005Xf-Sp
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa1-0004v1-5X
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=25YRiMMOC3uNZVcQQbbQmyEY4BVI6041cMDsxRlsREU=; b=2cX9MIzZfEfVaK
	3sDhDEko/Grdrv/l6SqQQqAnH5+F/RevDg/5kTrGUzOkGd3A5MLadf6YjLknPJLJ/XE8eHxAgmkJa
	T0ypARoAUriVwcJEkYMwk6HubQ+/W1YV7ZTnZlXCV9ReEbKWkFuhXRHftwRGfTddPHhF737I8NJO9
	GXaExVVbfG+qujVkeFSzymIdvG0PJmvpHkswanfsLELWqWwnTcAbYvhVByIkdROeQQoKsgTZV4fnR
	zBNv44HrsZIL1gtBDmOF7fMop2z6+OMj6H3hOQSRLAM4YDfuDicA0k57mTGKf6zteAC5Nr8qs9UdK
	VwsSB4OB9/6hR0+sz7EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKY4-005Tet-GR; Wed, 18 Aug 2021 12:20:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbb-Qw
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0004Jk-Tl; Wed, 18 Aug 2021 14:19:47 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006nh-GW; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:39 +0200
Message-Id: <20210818121945.26089-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051954_939564_43F903C4 
X-CRM114-Status: UNSURE (   6.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 0/6] protonic: fix and maintaining 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series contains fixes and updates for currently mainlined
protonic boards.

Robin van der Gracht (6):
  ARM: boards: protonic-imx6: Run usb boot entry instead of bare device
  ARM: boards: protonic-imx6: Don't fixup MAC address for disabled
    device
  ARM: dts: imx6dl-prtvt7: Add brand state variable
  ARM: boards: protonic-imx6: Don't register SD with bbu
  ARM: boards: protonic-imx6: Add emmc_usdhc machine data variable
  ARM: boards: protonic-imx6: Enable bootchooser on prti6g board

 arch/arm/boards/protonic-imx6/board.c | 41 ++++++++++++++++++++++-----
 arch/arm/dts/imx6dl-prtvt7.dts        | 11 +++++++
 2 files changed, 45 insertions(+), 7 deletions(-)

-- 
2.30.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

