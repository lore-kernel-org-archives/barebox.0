Delivery-date: Tue, 05 Dec 2023 08:28:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrJ-003u5T-1A
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:28:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrJ-0006XP-Es
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:28:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=spbGp7cGk1Ne5WswVVXnNj1KSi4Qt3170fTvYrWicwc=; b=Kq1gcZbWxitRngOmlB8ydnRPED
	YDBNt+PoyL3cn4+48h38F59frJlAw1WatER47OlUdA5AP8z7RP1YyZ2EOjKSQ0IyR5gxc+bkbkaro
	Cu+9mxC7IrY3cXRnoXx4u9HWuXSt94qU2hQRBNUsd04eltCASf4fVNYrIsbX6KJOdDTam0kxiOunQ
	MrjSzoTNsdmgpiB1XTtEPN/AwrBkBQg4p7gMimDe6rj4mZrm4EJlH1twIh0a+DGD8NavItqvgayTq
	7sa/MiHL/ETPuhXGvI13VrTE+0ppGptV6z8UVTrWH/mf18l5SlBCttJ7P2HZymf3MDT8xIaBthRzE
	K38qhFJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPps-006VF2-0v;
	Tue, 05 Dec 2023 07:27:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPpn-006VDH-0P
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:27:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-0006HF-Kl; Tue, 05 Dec 2023 08:27:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-00Dgyd-8B; Tue, 05 Dec 2023 08:27:08 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-002iTl-0b;
	Tue, 05 Dec 2023 08:27:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  5 Dec 2023 08:27:04 +0100
Message-Id: <20231205072706.647255-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_232711_162630_08DF7F6F 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] Rockchip RK3588 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3588 upstream dtsi files have evolved a lot. This series fixes the
worst regressions caused by this. We switch to use upstream dtsi files
and drop the downstream variants containing the PCI and SDMMC nodes. We
still have to overwrite the ranges property for the pcie2x1l2 node, I do
not yet understand what the Linux PCI driver makes different to work
with the Linux ranges properties. With this at least the PCI ethernet
controller works again. We disable some other PCI and USB nodes which
otherwise throw annoying warning messages due to missing phys.

Sascha Hauer (2):
  ARM: rockchip: rk3588: Use upstream dts files
  ARM: rockchip: rock-5a: Disable non working devices

 arch/arm/dts/rk3588-rock-5b.dts               |  39 +++++
 arch/arm/dts/rk3588.dtsi                      | 145 ------------------
 arch/arm/dts/rk3588s.dtsi                     | 126 +--------------
 .../rockchip/phy-rockchip-naneng-combphy.c    |   8 +-
 4 files changed, 44 insertions(+), 274 deletions(-)

-- 
2.39.2



