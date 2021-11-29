Delivery-date: Mon, 29 Nov 2021 13:47:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrg4L-0000JD-Cp
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 13:47:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrg4K-0007jM-HQ
	for lore@pengutronix.de; Mon, 29 Nov 2021 13:47:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=whHA8D3YtMEcYj5jBQuyxAcx60eD40T9m4p9ucJ0nr8=; b=reeBYUNI4FH9Dn
	4V7FTNvW0oJqz/Gxr7CW7yGxG4UEmw/g+t3+uxY5a3oiqfTkXRSE7OnpifP03ShBtZXv3AmIXVWpW
	16Tdkyu7lnfceISx27pf/ubzEgDeBosZjVLKvsGKog99pe1OiFDevhnUa612MMqOLDvll78NSsGPx
	uoazRG16exUHAv6P5TkufefvGiPQQ7v7inN7LPtV+WAjcUYaB3LdA7EkOuuoOzOMW2IvnFnmNROSZ
	axIs4XY+3fV4hePWiVzLZd0WbISeRBevR/rnan8RLU7IPn6CmrCzWXXjs9x6v0MkNYk5rQUMm5t3T
	0jxW9t5sDVI+Ze7ymMlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrg2m-000jBI-V7; Mon, 29 Nov 2021 12:46:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrg2h-000jAR-Tg
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 12:46:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1mrg2e-0007Qb-5O; Mon, 29 Nov 2021 13:45:56 +0100
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <has@pengutronix.de>)
 id 1mrg2d-000404-Me; Mon, 29 Nov 2021 13:45:55 +0100
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Mon, 29 Nov 2021 13:45:43 +0100
Message-Id: <20211129124545.14171-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_044559_972908_B6861A99 
X-CRM114-Status: GOOD (  11.66  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] fs: jffs2: remove slab cache substitute with malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series aimes to handle a bug in the Barebox jffs2 driver where the
system crashes once a second unmounting is performed when more than one
jffs2 file system were mounted at the same time at one point.

- The first patch "introduce reference counting at probe" solves the
  initial issue.

- The second patch "remove unnecessary slab cache structure" performs a
  cleanup on the respective code with the opportunity for simplification
  being taken.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>

---

This series is a v2 of a former single commit now split up into two for
clarity reasons.

changes v1 -> v2:

   - split up v1 patch into two distinct patches
   - reworded commit messages

   by Ahmad Fatoum <a.fatoum@pengutronix.de>:
   - bugfix: perform jffs2_fill_super() with every probe() again
   - bugfix: removed unfunctional if-branch in probe()
   - use sizeof(*ret) instead of hardcoding the size in malloc calls

   by Sascha Hauer <s.hauer@pengutronix.de>:
   - additional infornation for commit messages added

---

 fs/jffs2/fs.c       |  32 +++++------
 fs/jffs2/malloc.c   | 131 +++++++-------------------------------------
 fs/jffs2/nodelist.h |   2 -
 3 files changed, 35 insertions(+), 130 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

