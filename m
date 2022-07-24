Delivery-date: Sun, 24 Jul 2022 08:40:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVIP-001jl1-3y
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:40:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVIM-00010r-U0
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:40:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y10DWEpsntQxqk4PuvF/8ILjL6WYn+Wfr9AzAWnA21A=; b=TdtEmgy5Ffp0VKGvTxNniMHwNO
	CYs1NBRQownCOpCdTwYxpgISSXBsFVYI733XJIWnBpoDQ6gsijdm3ZW3p3GHrmttJ2E1lYO/qWT1s
	xFzKpZKE6R8o9Hu318cfF0P7t5mKQ7Y7d2toku26c+VBXQ0+BN5MLy9aRc+dQfOWwk5us7lrlFnh8
	Bj8iWV6Mzxi+9oZeknp4qiNxclw18AC+ofWm5LHr6N6Gf8+FnB506FbMRn64pKed7gKzLJH1fbSaH
	AL4VOASLN5oN1r7oSMdMJfB6/r/NW6MsnPhlXXdb3zPP4o87Mo98myUcA/jNe/GuQMiK97mf3dtax
	SznQ6c1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVGz-00HBVn-N2; Sun, 24 Jul 2022 06:39:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVGu-00HBTo-QS
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:39:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVGs-0000rU-UV; Sun, 24 Jul 2022 08:39:22 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVGs-002rYN-8H; Sun, 24 Jul 2022 08:39:22 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVGr-007RhK-Kx; Sun, 24 Jul 2022 08:39:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:39:20 +0200
Message-Id: <20220724063920.1774718-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_233924_875476_15D04B91 
X-CRM114-Status: GOOD (  10.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: add hint on how to resolve warning about vmmc-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For legacy reasons, we do not fail the MCI registration when a regulator
can't be immediately requested, but we at least print a warning when
this happens. Add a comment guiding the user into how to resolve the
warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b8f71e15986e..8c08a4f61f63 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1941,6 +1941,16 @@ int mci_register(struct mci_host *host)
 
 	host->supply = regulator_get(hw_dev, "vmmc");
 	if (IS_ERR(host->supply)) {
+		/*
+		 * If you know your regulator to be always online on boot, but
+		 * can't easily add a barebox driver for it, you may use
+		 * barebox,allow-dummy-supply in your board's regulator device
+		 * tree node to side step this warning.
+		 *
+		 * If you run into this warning, because your regulator driver
+		 * hasn't probed the device yet, consider enabling deep probe
+		 * for your board, to probe dependencies on demand.
+		 */
 		dev_warn(hw_dev, "Failed to get 'vmmc' regulator (ignored).\n");
 		host->supply = NULL;
 	}
-- 
2.30.2



