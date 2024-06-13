Delivery-date: Thu, 13 Jun 2024 14:59:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2t-005NMz-2D
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2s-0004TY-Q5
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ejZZb2AV/KZ6uDggZUXeU6JiNymCuHF4zSBmF1aWZGw=; b=euwUcHPPDbKgv0IlM9+N0iuE+a
	q/sCaxRIcHL9ptH5ddfxLAUVCDhGte1q/Oi2gqZutISvqi4VtAncBEhZUWzk/6Msle/MBm/Ffbg+P
	ARiWlh/AKgbEKa2+NgQ6wN1ZyNFZB2KkzpkGhIhji7FN/oKqzCznfZRlsLGZ0XL4g1Zy3sWZQxkIB
	8+mXKNgrdvdK4dTA/7h2idgMqsRlquBGLagHT1TVuQhBDjvbxO8b7nlVHXpI1+Vmz/yE59bwaapJ0
	cMtlP/PAlK8Fk2fzrrRHcVSfDvRFZsP3AEvnZJOq+65F4/JSd2dNBhL9dMHL7irKeBWn/RPufvEJR
	4HCrOHlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2H-0000000GbBs-3JKR;
	Thu, 13 Jun 2024 12:58:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb4r-0WjE
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:31 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-1f
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:07 +0200
Message-Id: <20240613125818.30499-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_326583_49AACA6B 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/11] Add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this series add the support to load FIT image supplied devicetree overlays.
The v1 of this series can be found here [1].

The overlay loading wasn't coupled to bootm due to the following
reasons:
 - By making use of the common overlay handling we can specifiy a
   different/separate FIT image which provides only overlays.
 - It should be possible to apply FIT image overlay to the barebox
   live-tree (not implemented yet).
 - Loading a single overlay takes ~20ms (depending on the overlay size)
   if the same FIT image is used to supply the kernel, initrd,
   devicetree and devicetree-overlays. This is an improvement compared to
   the v1 of this series which required ~1sec.

Regards,
  Marco

[1] https://lore.pengutronix.de/barebox/20240322164953.1772129-1-m.felsch@pengutronix.de/

Marco Felsch (11):
  FIT: fix missing free in fit_open error path
  of: overlay: add of.overlay.fitconfigpattern param
  FIT: skip possible overlay config nodes
  of: overlay: make the pattern match function more generic
  of: overlay: make search dir/path more generic
  FIT: expose useful helpers
  of: overlay: add FIT overlay support
  of: overlay: drop unnecessary empty check in
    of_overlay_global_fixup_dir
  of: overlay: replace filename with an more unique name
  FIT: save filename during fit_open
  FIT: add support to cache opened fit images

 common/image-fit.c   |  69 +++++++++++++-
 drivers/of/overlay.c | 212 ++++++++++++++++++++++++++++++++++---------
 include/image-fit.h  |   7 ++
 include/of.h         |   3 +-
 4 files changed, 246 insertions(+), 45 deletions(-)

-- 
2.39.2



