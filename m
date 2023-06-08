Delivery-date: Thu, 08 Jun 2023 15:42:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuF-00FoNg-Fa
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 15:42:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuC-0002IU-U2
	for lore@pengutronix.de; Thu, 08 Jun 2023 15:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yAw//SdQOD0PX+zIxnQUaSO+G/2XPGu2ThAw8pL+0fo=; b=lVo9RKmQQ3FwwX1RwxMrmooly3
	yMny6Xng1qFZMD3mEwr/RvBCm9t5GT3hINDLH4BJoLdIrCfa7h+b2Yd5KROQZePQQYEu4hgZIc2A8
	ZnyHGBW0JSHJ0qbWHgm5NPLjQIXWdiWp3okcwyCmivnJA29+KFgSunPTl+hmMiOvWQC+bGMQQzpjg
	GEyjbrFq5fYRPW4EpVt3cdNDShVxpWcmNhIKZZ4MBfUPvUfS3N4AX9gZMy/uYAIemZ+0WRcqajQh+
	R6dMQP1q5ULa8hX0C1qI7j6wJ8D/0uewQKWQvzBbykAVKihFTsSNB9ZS1CBbSBFx1f+6El/QhGV/a
	ZO+KPhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Fsq-009Uo7-2a;
	Thu, 08 Jun 2023 13:41:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Fso-009UnJ-0s
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 13:40:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsj-00023e-52
	for barebox@lists.infradead.org; Thu, 08 Jun 2023 15:40:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsi-005z9C-G5
	for barebox@lists.infradead.org; Thu, 08 Jun 2023 15:40:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsh-0093Py-US
	for barebox@lists.infradead.org; Thu, 08 Jun 2023 15:40:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  8 Jun 2023 15:40:38 +0200
Message-Id: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_064058_304050_F2CC0F0E 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] commands: of_diff: support applying fixups on arbitrary device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_diff - + is quite useful to find what fixups barebox would apply to
its own device tree. But for some cases, like barebox-state or OP-TEE
reservations, the nodes that would be fixed up into the kernel device
tree already exist within the barebox device tree and wouldn't be shown
by of_diff - +. To make them visible, let's redefine +:

  - Previously, it always meant the fixed up barebox DT
  - Now, it means the other DT with fixups applied

That way, of_diff - + continues to work, but kernel DTs can now be
diffed against their fixed up version by doing:

   of_diff /mnt/tftp/afa-oftree-myboard +

Ahmad Fatoum (3):
  of: change superfluous of_fix_tree int return type to void
  commands: of_diff: simplify error handling
  commands: of_diff: support applying fixups on arbitrary device trees

 commands/of_compatible.c |  7 ++---
 commands/of_diff.c       | 63 +++++++++++++++++++---------------------
 commands/of_dump.c       |  7 ++---
 common/oftree.c          | 10 ++-----
 drivers/of/base.c        |  3 ++
 include/of.h             |  2 +-
 6 files changed, 40 insertions(+), 52 deletions(-)

-- 
2.39.2



