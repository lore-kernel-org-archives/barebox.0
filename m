Delivery-date: Mon, 14 Oct 2024 11:14:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0H9l-004Cat-1c
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 11:14:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0H9k-0003OR-TN
	for lore@pengutronix.de; Mon, 14 Oct 2024 11:14:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u/0vUNT9E5nK7tgwkqNwQXu4psa1Y/NMv23KKw+oNt8=; b=M8bsKQDHgVnzgXlGRYraITgEEK
	45xPPcLtjkFvmjZ1/FzGhqWzCSpQZjhCX1tiN3UKAA0sNfeOLOlKKntJ0nJvhahRTghFb2tb8YtWo
	fmaHVqCuVN4/lL0+gsSG7ko4Yer8HeqiU/qp1Cae1psS+xwVBWWRGnQknUNjF+D23rZnsEvzgDfVB
	49nouRP64eBKyAzUIdWH63WHUEqir+p/xkD6azxiIDXcp3YXoF2mqf0TW17Q4ZSrjewh2dopg1R3l
	Xhq6LoB8w/2nxgjk50DV+ZB23VUiyylE0n2P9M4lU9lOukaDBEBsCcOC2qej3OWMs2w6E9VUCsyHE
	f3ZLrpiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0H90-00000004Sgs-1vWa;
	Mon, 14 Oct 2024 09:13:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0GrB-00000004NiG-0D9w
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 08:55:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Gr6-0007cc-7f; Mon, 14 Oct 2024 10:55:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Gr5-001kc3-RB; Mon, 14 Oct 2024 10:55:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Gr5-009GRT-2Q;
	Mon, 14 Oct 2024 10:55:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 10:55:06 +0200
Message-Id: <20241014085506.2207866-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_015513_221049_3B753521 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mdio_bus: add NULL check to mdiobus_read/mdiobus_write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These functions shouldn't be called with a NULL pointer as argument in
the first place, but this happened at least twice so far[1][2], because
drivers weren't tested in fixed-link setups without PHYs.

To improve user experience, let's return -EIO instead of crashing
outright. The proper fix is still to adapt these drivers, so they
do not try to access non-existent PHYs.

[1]: commit 6269556397 ("net: eqos: let phy_resume handle fixed link phys")
[2]: https://lore.barebox.org/barebox/20241010-fix-designware-fixed-link-v1-1-de2df5485a25@pengutronix.de/T/#u

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 30d5aeacff0d..68652e92a830 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -441,6 +441,9 @@ int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
 {
 	int ret;
 
+	if (!bus)
+		return -EIO;
+
 	slice_acquire(&bus->slice);
 
 	ret = bus->read(bus, addr, regnum);
@@ -461,6 +464,9 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
 {
 	int ret;
 
+	if (!bus)
+		return -EIO;
+
 	slice_acquire(&bus->slice);
 
 	ret = bus->write(bus, addr, regnum, val);
-- 
2.39.5



