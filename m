Delivery-date: Tue, 10 Feb 2026 13:53:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnEy-000Aol-2U
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 13:53:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnEy-00088f-8A
	for lore@pengutronix.de; Tue, 10 Feb 2026 13:53:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+yl6VpK+vHey7Yj09sL6jbVfxXDX/9hW2chinTvWWcU=; b=adjT0pXe/zk8i2l/E67RdCbOVO
	GQ9ydSDOi+CqJB2dx4FT0uPFipwAkBCwCJQNhWkxJYPR7uDXZ0vDLhU7kIzNbPzHA7mpLjmH86GGB
	K+95Sx5ILLEgnrPNQ67SapFEZFmNWGm30XZpf5/C/Nq96fRyuJAGdPRtS5qs3om+joOq+4hWdUJS9
	mjdXKuTNi0CaefTeEeqlJMvtuPRxJ9XJAUKxq/btns3O0ANcg37EFkF+g/2d/N2AOmcu3ijxZ+nTn
	VFGxkmKHn4PSXoJEP3UTooiZaZAvhYjJR9ZbATfXHoXZikNpLsWEmwS07ID8vwhmvI63jpdsvmTb5
	bhNrVoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnER-0000000GxWJ-0ohe;
	Tue, 10 Feb 2026 12:52:43 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnEM-0000000GxUj-3wn9
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 12:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770727953; x=1773319953;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eSTjulsTR9UEezA4BGtTCKQJqqMMi/6qeVJzc5Qj8K8=;
	b=bkLaUbjMD+KRToE/6b3amqXJY1aekbP++cleZzt5fuQBfFPI8QXWo2rdUeY3eLVQ
	X83BlRGQLbZR2DFgrPzdjaW6mmr2sCCdRYhKAwrRkzdL5I9ycnYHhR1IjeHv2FcM
	sT56dXtuKjQkKZsLK+YWZXqnFbXkJMCddotXbDowjj/I+KGgcnA2fWLicfDLFMhY
	bq/3Dm1L+EqbSH9PWjVSm6BBFhvIfWHBzu04KTo2jcVni9CuY2Tl3c67tH6sqfYX
	LzDg+hYKFPz5OIt9TGr+E3yXL5VgFZ0iKlV3kzHSa6W9W1PZ5kvESFKA5tpX21IM
	/kkmZKbU46aiNmKfXzJ8og==;
X-AuditID: ac1001d4-33b8d640000daae5-40-698b2a11fc5a
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 68.8D.43749.11A2B896; Tue, 10 Feb 2026 12:52:33 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 10 Feb 2026 12:52:21 +0000
Message-ID: <20260210125225.981725-1-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDJMWRmVeSWpSXmKPExsXCtT5hnq6gVnemweolahYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBmH935hL5jCWTHjy1W2BsY3bF2MnBwSAiYSp85e
	Y+pi5OIQEtjJKHHs0R52kASbgIHEv6NfwYpEBOQl5u5vYwWxmQX0JDouTGQCsYUF7CSaZh8E
	s1kEVCWubDsO1ssrYC9x/uVlZogF8hKLdyxnhogLSpyc+YQFYo68RPPW2cwTGLlnIUnNQpJa
	wMi0ilG0NFu3KDUnsdLQWC8xN7UkNVsvOT93EyMwANYIMF7ZwXjn0we9Q4xMHIyHGCU4mJVE
	eH1N2jOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ867d8yFOSCA9EWhKampBahFMlomDU6qBibsk
	7WjalMIXq2xtPpxe2Pf5+4LegqeGj+Yr81U6Ldl/eOpkudpmRoXTZ5fOdSxzPCDBdKm4OK26
	Vs/t/hwzjenCb+7HdZjvEzxSzhkqUc91ZLZmXNrvV8z+P94o88UHiHfdE14jrTJrSlzknUzB
	ip716395zIw89khnybJ1oVuWSMySmLBO8MFU5g6RLXN0L2us3+1zRUU7KO9STv7z5Sz24lKT
	5r28LvMnb2JjstLppysZYib/iI17KZoqdL9eNPLtgicf5ZackNxeK7p0G0OODI/V7i88Sz+u
	5hdxZzbxkC2O6CyLauUW5vq54WLBl9nGrrbaq8TLZ/t7TtovoLjKecfC5WcvBSXsq0rQVmIr
	zkg0MjXTYi4qTgQAArxCjHECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_045239_278177_7889B8A5 
X-CRM114-Status: GOOD (  10.66  )
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
Subject: [PATCH v3 0/4] net: expand gianfar support to ls1021a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds limited support for the Ethernet controller on the NXP
LS1021A:
    * Only one port has been tested i.e enet1.
    * The PHY negotiation has been limited to 100Mbits-FD.

In this version 3, remove code that was meant to make the difference
between the mdio register offset between PPC and ARM if retrieved from
the device tree. However, the PPC platform does not support DTBs and the
mdio offset is already taken into account into the mdio access functions.
Hence, the clean up.

Renaud Barbier (4):
  net: gianfar: disable link information
  gianfar: apply checkpatch recommendations
  net:gianfar: add device tree support
  ARM: ls1021a: initial Ethernet and mdio configuration

 arch/arm/boards/ls1021aiot/board.c       |  35 +++
 arch/arm/configs/layerscape_v7_defconfig |   7 +
 arch/arm/dts/fsl-ls1021a-iot.dts         |  16 ++
 arch/powerpc/include/asm/dma.h           |  34 +++
 drivers/net/Kconfig                      |   2 +-
 drivers/net/gianfar.c                    | 310 ++++++++++++++++++-----
 drivers/net/gianfar.h                    |  32 ++-
 7 files changed, 367 insertions(+), 69 deletions(-)

-- 
2.43.0



