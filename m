Delivery-date: Fri, 12 Mar 2021 11:14:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKeok-0004JJ-Ju
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 11:14:50 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKeoj-0001gL-Su
	for lore@pengutronix.de; Fri, 12 Mar 2021 11:14:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DP3flybS2bGO0jdUL/IX7ZY5cDSoRQBYX7faGFt1snQ=; b=T6gqSRpWoDmAGZH/fu2QLFIQXy
	joZk+PPBGH1nuUy6MHofpolEW1WihZmDgaZHrV07RgwcSHLgH8XpaRhYLGpnzqhckWJF+ZPBcrSwq
	uodsWSFgpooAfz17fN1fw0oi/xppt/NMZplxRBcY8X22Z1KXCQo26qPhUK9bWEY9dBv1/OMjfTt3w
	tv+H3eV7U6vaYPQMmm5CZFrDd5g8hDR3aKzUQwypTjlnj0ib/+pXBr8qFb9E8/Za/WCDlrI1co8kv
	Xc3XX8xgd6FLdCt3GSpcOlbKsgPu6owQ8GTgFLvxJaAYBUYYAkqTtg3zjEyy8kQ5ZiF97QA+2NkwW
	s7tkXEUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKenQ-00B829-H4; Fri, 12 Mar 2021 10:13:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKenC-00B80I-A0
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 10:13:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKen8-0001RP-Lq; Fri, 12 Mar 2021 11:13:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKen8-0007oL-DC; Fri, 12 Mar 2021 11:13:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 Mar 2021 11:13:09 +0100
Message-Id: <20210312101309.29650-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_101314_675481_CB333B64 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: phy: fix waiting for link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

phydev->adjust_link() is called only from phy_update_status() when the
link status changes during that function. phydev->link is also updated
in genphy_update_link() called from phy_wait_aneg_done(), so it can
happen that phydev->link changes outside of phy_update_status(), thus
phydev->adjust_link is never called and no link change notice is
printed.

Instead of calling genphy_update_link() from phy_wait_aneg_done(), call
phy_update_status(). This makes sure that a link change is properly
noticed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 622acbe40d..e8e8dad5bd 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -571,7 +571,7 @@ int phy_wait_aneg_done(struct phy_device *phydev)
 	}
 
 	do {
-		genphy_update_link(phydev);
+		phy_update_status(phydev);
 		if (phydev->link == 1)
 			return 0;
 	} while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND));
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

