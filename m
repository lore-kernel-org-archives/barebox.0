Delivery-date: Tue, 22 Apr 2025 07:20:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u763P-003umN-0V
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:20:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u763O-00033Q-JG
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:20:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DdJ09phS4wmI1iU37SENyJZybEKf5xfo3/fiDKOEkYs=; b=oL0/Up2fmIyxgrIOqSz6n2T7Lp
	bSxSB0A9gLK+fajwMK412pEIXbCbXccVqin+cE+TJf6LUaLuveNgcU7tblaM9jm2kWBR/2Ub5a5b+
	Q2BKpNDbAyx+iGxqyjRFVvfl1K7EiPB3iIvuAoad8WgcJbChnPPUvpSnuJlB9dAVvvMH9CS7v3fni
	/Xa/p6Ih2UuztMF2kfc5rnVwP8LoB88Cs15E22JGkbVWokeIU0rQmfhGdj/D5lWkDyKQKzUQ5/POp
	2y+DepYeyvX7qdI821Qi1fkwFVJR9t5mGFqVFthFaNy7gtKjVSOIlDRem3yiUMcL80ElTa1I+pPX4
	CUVuY+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u762c-00000005qfM-2ESw;
	Tue, 22 Apr 2025 05:19:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u762Z-00000005qea-3krn
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:19:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u762V-0002uQ-GZ; Tue, 22 Apr 2025 07:19:23 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u762V-001UuX-13;
	Tue, 22 Apr 2025 07:19:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u762V-00EKSQ-0k;
	Tue, 22 Apr 2025 07:19:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 22 Apr 2025 07:19:20 +0200
Message-Id: <20250422051920.3415169-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_221927_933728_BFBFD4D9 
X-CRM114-Status: GOOD (  11.41  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: adapt warning message when resolving supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have the exact same message in the MCI core, but with vmmc hardcoded,
which makes it harder to see where the message is originating from.

As the message in the regulator core is printed out when resolving
a regulator's supply fails, mention that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/regulator/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index be98f4a27918..f18622cba80c 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -179,7 +179,7 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
 		 * we couldn't. If you want to get rid of this warning, consider
 		 * migrating your platform to have deep probe support.
 		 */
-		rdev_warn(rdev, "Failed to get '%s' regulator (ignored).\n",
+		rdev_warn(rdev, "Failed to get '%s' supply (ignored).\n",
 			 supply_name);
 		return 0;
 	}
-- 
2.39.5



