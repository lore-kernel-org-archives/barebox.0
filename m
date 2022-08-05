Delivery-date: Fri, 05 Aug 2022 06:11:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJogF-00C3lp-PR
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 06:11:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJogG-0007ch-IY
	for lore@pengutronix.de; Fri, 05 Aug 2022 06:11:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4AaFIwlIIXXWzxqlXbx3UbyXxZgfMk2Xaww9c/+Cr/Y=; b=QFT0/rvPYmrm6oYBctIrxdQKzL
	hr+LocjShXP/nN36eJM7on79kWvW3QC/0DdGvTf5r8aFFb9pYl+En3kIWue9WNEGOYLj5B3y+5zpF
	Cl9QfWnVl9QCXL+2VNAG2LayFTfvtxSpq6CCG4a2u0DYBlkRcuQrhYUXu2DwC4HfuilgV6hwx6Yqf
	z3hWv/QGOqxxWd5sydaozAfkPG0qYHOByZirpJJ0IH1Kmor93FBxnV49g8OcvYgvKK5N4PdngdIic
	XjJI0ymXlWDUtWK1TCOe0cGu4bHjVq27TNFj6tXENABUkDkfLMN83WUNGqtASLf5RXjGojl8KFQIP
	ZI3eEUlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJoef-00BdRC-2a; Fri, 05 Aug 2022 04:09:45 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJoeZ-00BdNw-2c
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 04:09:41 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 413B4FF803;
	Fri,  5 Aug 2022 04:09:31 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  5 Aug 2022 06:09:26 +0200
Message-Id: <20220805040927.1658824-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_210939_279938_7CDE7674 
X-CRM114-Status: UNSURE (   7.49  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Documentation: devel: project-ideas: update after DSA framework addition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a proper abstraction for switches now, so drop this idea
from the list.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/devel/project-ideas.rst | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index a3643298ab08..e49bfa6ca4da 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -20,10 +20,8 @@ For GSoC, following barebox developers are mentoring:
   - Rouven Czerwinski (IRC: ``Emantor``)
 
 This list can be edited and extended by sending patches to the mailing list.
-Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs).
-Switch device framework (currently scripts write into a ``/dev/switch`` file
-to configure passthrough), Improvements for barebox-efi (e.g. as a coreboot
-payload), ... etc.
+Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs),
+Improvements for barebox-efi (e.g. as a coreboot payload), ... etc.
 
 Ideas listed below should contain a title, description, expected outcomes,
 skills (and HW if any) required and a difficulty rating.
-- 
2.34.1



