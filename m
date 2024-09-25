Delivery-date: Wed, 25 Sep 2024 16:01:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaR-002cMq-0Z
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaR-0002kC-9B
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iGoZBILfiqu2cGFjbLiWga068oFBV6lZR8MySo9UDC4=; b=LHfFFHSN30EmgPpccT7LbGQUJz
	UJkpxvkx6J+ZkSHNPxb4m6mK1cif620LzG002NVtSDyZMGAeJYdHPs8cz16pu+xcViKeTvS2oFJ65
	hIjj0yBGO0k7E31JOiWuXv7bkO4uhNZE+66MuoXldBP/mRw7sLZ4tOAxP+4tnLkK9Kxn2CYKiDTyT
	jrqkHMzb3ZZvSzC7LD/qB8mq7uCPOF8MKmwzk2JUJFJ3q9RPuwvNEcsIdsvIaR3XUkf1EZ6asXkSE
	B+U62VpsFeAMp2OBNUHSW9XLN16U1NLpPuyOCPxkVbPWFOybGcg4ObSE/FyjbptVpiqAeNi6BkzjT
	gztuS3zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZw-00000005VZH-3rMx;
	Wed, 25 Sep 2024 14:01:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWc-03Nm
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JL-ME; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlE-71; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-1v;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:10 +0200
Message-Id: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKcX9GYC/x3LQQqAIBBA0avErBtIS8iuEi20RpuNikIE4t2Tl
 o/Pr1AoMxXYhgqZHi4cQ4cYBzhvEzwhX90gJ7lMWiqMDn026UbHLxUUxs3G2VVpZaFPKdMf+rM
 frX3J/8TmYAAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=864;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+P3P3BlwiHmy4Gyo7FK4iKUQncz12hO994Dlx808540=;
 b=9E7v1CBjr6FM6lBenIDmBt302Zrn5TGwrteNZTfyUHO2QnE51WoUBrMXID6bPoO80RdLTXRiQ
 MxN/kS5wYFEAtzNA1pbaKOUG0y1fQsDU4r3NjOIIx8O+sefFNtr5U9J
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_216177_07CB3670 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] of-graph fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming Rockchip VOP2 support makes use of of-graph which uncovered
some bugs in the existing code. This series contains fixes for it and
adds some missing functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (5):
      of: fix of_get_next_child() for prev->parent != node
      of: fix of_graph_get_next_endpoint()
      of: of_graph: honour ports subnode
      of: of_graph: fix of_graph_get_next_endpoint()
      of: of_graph: add missing functions

 drivers/of/base.c  | 104 +++++++++++++++++++++++++++++++++++++++++++++++++----
 include/of.h       |   8 +++++
 include/of_graph.h |   4 +++
 3 files changed, 110 insertions(+), 6 deletions(-)
---
base-commit: 419ea9350aa083d4a2806a70132129a49a5ecf95
change-id: 20240925-of-graph-fixes-1af3afb8595b

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



