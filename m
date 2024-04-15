Delivery-date: Mon, 15 Apr 2024 07:28:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEtY-001Z3b-2S
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEtY-0007eX-63
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s5ShRnT5R2RPRv2A91sbsVTwE7JN4lDEHDXAGzhPT7o=; b=zFXxhTtzSF6c+Yn3BzdMCB9gKl
	ogHSgJzqPzm5pmI4MJlUauFJjBiW/aUPbj6DvpradnjDyRx2/RxXYyQjV3xE7m4ACJG6mg/ctYtsf
	CcGekDIYVB86UcY2XOPVLSY4D92ZF3llhh4jMy3TnW3XPJnGTDdEvRwRT/nC94aGhhiCYS4kLyPQt
	EHSz9lnh5fYlWMbr7g2gtyOFebwVmAESdxJcwTE50vSQxjWXr973cOOQ7CQRKT/JklLXQB7JKzYHF
	4co2LJj6/LXA9gGhE/t7p8Axk3Cj8pdLIp6+FEp05GRh2849eUXDZX6/8zN29Mi1RBb8cq7PKqJ53
	jygM9WNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEtB-000000070F5-08fD;
	Mon, 15 Apr 2024 05:28:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEt7-000000070Dh-38cT
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:28:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt6-00078e-A1; Mon, 15 Apr 2024 07:28:16 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt5-00CMjF-Ts; Mon, 15 Apr 2024 07:28:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt5-001XM1-2h;
	Mon, 15 Apr 2024 07:28:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:28:15 +0200
Message-Id: <20240415052815.366527-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415052815.366527-1-a.fatoum@pengutronix.de>
References: <20240415052815.366527-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_222817_920058_9866680C 
X-CRM114-Status: GOOD (  11.40  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: Rockchip: bbu: allow forcing barebox update handler despite size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The update handler correctly refuses to write a bootloader when it would
interfere with partitioning.

Depending on use case, the user may want to override this check though,
so allow the barebox update force parameter to override it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/bbu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index f9681aad1aa4..f15b32937c3e 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -63,9 +63,9 @@ static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
 	space = cdev_unallocated_space(cdev_by_name(cdevname));
 
 	if (space < IMG_OFFSET_0 + data->len) {
-		pr_err("Unallocated space on %s (%lld) is too small for one image\n",
-		       data->devicefile, space);
-		return -ENOSPC;
+		if (!bbu_force(data, "Unallocated space on %s (%lld) is too small for one image\n",
+			       data->devicefile, space))
+			return -ENOSPC;
 	}
 
 	fd = open(data->devicefile, O_WRONLY);
-- 
2.39.2



