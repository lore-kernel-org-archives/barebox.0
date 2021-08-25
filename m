Delivery-date: Wed, 25 Aug 2021 08:58:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mImrk-0007Lr-0W
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 08:58:28 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mImrg-0002y9-Sx
	for lore@pengutronix.de; Wed, 25 Aug 2021 08:58:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H3LsxaYpxZ17xZj1cf4E70dodx78aEwjo945Ntq5hKo=; b=1Ce4Lgu2ySYCfX
	JQGUfR5X+y5YI/ai1H4d/92niY8Yb6rDs+Y7XlNOR1sgK7Z+cBVG6L83kdzNyIdmwZpcDl5oOr4Dn
	ZyVmrwZYwQqQhDynIv6ZiBktIS/G069/egi1tdbjsjzczeRIkh9LJIGD6jY+CnWN07OiLQsoZ6UQo
	iHgAELDE4Z2Oo2ksLGLiRrJue9xXLoEByOeCoF+IWg9y8oA2G0oXtcQ2CbMmW03amoO5pbtKf5xt/
	dIkDD3tQf9/f6o7RIAxPxaS8sUJgYqFT29CNLBVpVqyDJMQNcMYSU0UxBWRI+w97MpBsuebM3ELt6
	8xysbdH2ZGK0NaleJpHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mImpb-005jwX-GL; Wed, 25 Aug 2021 06:56:15 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mImpW-005jvx-Pk
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 06:56:12 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id B80998C15D; Wed, 25 Aug 2021 08:56:04 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2a02:3037:409:5e20:2c2c:c7ff:fe20:ffc4])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 5EC5D8C154;
 Wed, 25 Aug 2021 08:56:03 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 25 Aug 2021 08:55:54 +0200
Message-Id: <20210825065554.23283-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_235611_038058_7EFA4398 
X-CRM114-Status: GOOD (  10.99  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] net: eqos: let phy_resume handle fixed link phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently barebox will try to talk to the phy over mdio, even if the
parent is a fixed-link. This will result in the following stacktrace:

  barebox@Linux Automation Test Automation Controller (TAC):/ dhcp
  unable to handle NULL pointer dereference at address 0x00000130
  pc : [<dfc01800>]    lr : [<dfc0f963>]
  sp : dffefd40  ip : 004c4b40  fp : d00286e0
  r10: cf25cc4e  r9 : 00000000  r8 : 05f5e100
  r7 : 00000130  r6 : 00000000  r5 : 00000000  r4 : 00000130
  r3 : 00000109  r2 : 00000000  r1 : 00000000  r0 : 00000130
  Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
  WARNING: [<dfc01800>] (slice_acquire+0xc/0x28) from [<dfc0f963>] (mdiobus_read+0x13/0x28)
  WARNING: [<dfc0f963>] (mdiobus_read+0x13/0x28) from [<dfc10685>] (eqos_start+0x85/0x32c)
  WARNING: [<dfc10685>] (eqos_start+0x85/0x32c) from [<dfc3cdf1>] (eth_open+0xd/0x24)
  WARNING: [<dfc3cdf1>] (eth_open+0xd/0x24) from [<dfc3e391>] (dhcp+0xb/0x3a)
  WARNING: [<dfc3e391>] (dhcp+0xb/0x3a) from [<dfc30fab>] (do_dhcp+0xfb/0x114)
  WARNING: [<dfc30fab>] (do_dhcp+0xfb/0x114) from [<dfc0490f>] (execute_command+0x23/0x4c)
  WARNING: [<dfc0490f>] (execute_command+0x23/0x4c) from [<dfc0a127>] (run_list_real+0x5bf/0x638)
  WARNING: [<dfc0a127>] (run_list_real+0x5bf/0x638) from [<dfc09a2b>] (parse_stream_outer+0xc7/0x154)
  WARNING: [<dfc09a2b>] (parse_stream_outer+0xc7/0x154) from [<dfc0a383>] (run_shell+0x3f/0x6c)
  WARNING: [<dfc0a383>] (run_shell+0x3f/0x6c) from [<dfc010b9>] (run_init+0x191/0x200)
  WARNING: [<dfc010b9>] (run_init+0x191/0x200) from [<dfc01153>] (start_barebox+0x2b/0x6c)
  WARNING: [<dfc01153>] (start_barebox+0x2b/0x6c) from [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164)
  WARNING: [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164) from [<dfc00005>] (__bare_init_start+0x1/0xc)

  WARNING: [<dfc4da7d>] (unwind_backtrace+0x1/0x78) from [<dfc01461>] (panic+0x1d/0x34)
  WARNING: [<dfc01461>] (panic+0x1d/0x34) from [<dfc4b6a3>] (do_exception+0xf/0x14)
  WARNING: [<dfc4b6a3>] (do_exception+0xf/0x14) from [<dfc4b711>] (do_data_abort+0x21/0x34)
  WARNING: [<dfc4b711>] (do_data_abort+0x21/0x34) from [<dfc4b454>] (do_abort_6+0x48/0x54)

Simply return with 0 if bus is zero which indicates that the phy is
connected to a fixed link.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/net/designware_eqos.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index f83ec12714..f83e5d6d9b 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -362,6 +362,10 @@ static int phy_resume(struct phy_device *phydev)
 {
 	int bmcr;
 
+	// Bus will be NULL if a fixed-link is used.
+	if (!phydev->bus)
+		return 0;
+
 	bmcr = phy_read(phydev, MII_BMCR);
 	if (bmcr < 0)
 		return bmcr;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

