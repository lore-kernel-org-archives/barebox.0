Delivery-date: Wed, 20 Aug 2025 14:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cCq-05
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmR-0007q7-U1
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PPaPQ+8fy63SeODG2fy6OKVm3ZGCLIcbqUUvYZTEwSU=; b=1h6CAiHq04F5u6xlpy3RxU/jEj
	UlFh0LUlukOYVYx3DMGZIIJK3MfUHxxXigg4pYOQDcbleRj2Sjx2K1wrPR1R2YQWAsCNgm6jMK5UF
	71FXlsm1a/u4Mk13AeOLZkTocqz3BwcS2OZKQsSxx2hrtbt4COiOE+x7BP2323RJwWMji2pTn60OF
	6Pg5luFzZNJ5FM3Vf9YE0bIxjCh04df6uXuXsn7AvioGHmapbknGBLCUFDUFjN7KPQM9eR1/RI1or
	sSr0klTM3tfCOXrQJ6yvkYgxacEM6dnxFScOrpmjqBHHHk+s62GWZhg+keLihUxGxkE9P1MvP0LNH
	33IlYuQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmF-0000000DXAw-1fhF;
	Wed, 20 Aug 2025 12:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsP-0000000D6us-3zHP
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uofsN-0005Ac-8l; Wed, 20 Aug 2025 12:17:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uofsN-001EEV-0G;
	Wed, 20 Aug 2025 12:17:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uofsM-008AHx-3B;
	Wed, 20 Aug 2025 12:17:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Aug 2025 12:17:02 +0200
Message-Id: <20250820101702.1946026-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031705_983900_550F38F8 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] fastboot: implement dummy has-slot:partition variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we enforce variables to be available, flashing can result in
following error message:

  ERROR: fastboot: no such variable: has-slot:rootfs-eMMC

Report the default no value to suppress this.

Fixes: dd377c937f8b ("common: fastboot: send FAIL if variable does not exist")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index 603391de7739..e5c79c22376c 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -180,6 +180,8 @@ static int fastboot_add_partition_variables(struct fastboot *fb, struct list_hea
 	fb_setvar(var, "%s", type);
 	var = fb_addvar(fb, list, "is-logical:%s", fentry->name);
 	fb_setvar(var, "%s", "no");
+	var = fb_addvar(fb, list, "has-slot:%s", fentry->name);
+	fb_setvar(var, "%s", "no");
 
 	return ret;
 }
-- 
2.39.5



