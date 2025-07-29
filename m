Delivery-date: Tue, 29 Jul 2025 17:35:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMA-004y2j-2w
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 17:35:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmM9-0008SM-Jh
	for lore@pengutronix.de; Tue, 29 Jul 2025 17:35:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CzFHRkkK1BIKNcTHMGGZpSZJG7MbotiMBhI3PcbkbrU=; b=qlYiVQHM0Roc37
	JhUc7z32eLdSUrkRtQ3VCq5CIe0qSqtX55/SNkyWw9NuKhne/apvh/BpiK8Un6cJrBri6ZoyVlcU5
	m1LvocbtNU/gpkFmXWkwL0BSMypwAzq5AODtALq1y8/YCFOUEMo2VTptBwFpBR92/5j0B7as+5ozk
	d6Xx0YhngeyhQ61K4SqdA7XUismw75WDmgZf414lhzRvLh+J/xHSlsBjoWYiYTeVlIlrvgd5m2ylN
	bnf5fE3/v/SG4bL2d6TACdPD3JXjOi3rJJ/SD35KGSNBluecajmDQHVh8U16EoqgITY7JYuMjQHq1
	3QgQLkLT8E9ppBFwlpfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLa-0000000H90n-3vdJ;
	Tue, 29 Jul 2025 15:34:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLW-0000000H8vo-14yB
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 15:34:32 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ugmLT-0007q6-GI; Tue, 29 Jul 2025 17:34:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 29 Jul 2025 17:34:25 +0200
Message-Id: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAHqiGgC/42NQQ6DIBBFr2JYdxoQhaSr3qNxYWDQSRowgERjv
 HvRE3T331u8f7CEkTCxV3OwiIUSBV+hezTMzKOfEMhWZi1vO665hHIt4D1wyGEhA44yhILxO+6
 gle2FVkbYDllNLBEdbXf+M1SeKeUQ9/utyMv+GS6yaiOc1Uo5K4V9L+inNcfgaXtaZMN5nj9L1
 ud9zQAAAA==
X-Change-ID: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_083430_363458_D0EA3AEA 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 00/11] Add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this series add the support to load FIT image supplied devicetree overlays.

The overlay loading wasn't coupled to bootm due to the following
reasons:
 - Users can add their own overlay filter
 - By making use of the common overlay handling we can specifiy a
   different/separate FIT image which provides only overlays.
 - It should be possible to apply FIT image overlay to the barebox
   live-tree (not implemented yet).

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changes in v4:
- Link to v3: https://lore.barebox.org/20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de
- resolve possible filename links to make caching more robust

Changes in v3:
- Link to v2: https://lore.barebox.org/barebox/20240613125818.30499-1-m.felsch@pengutronix.de/
- drop of.overlay.fitconfigpattern usage and make use of an match-fn
  instead
- fit_get_handle(): make use of strcmp
- open_fits: make it static
- fit_close(): use free unconditional

Changes in v2:
- Link to v1: https://lore.pengutronix.de/barebox/20240322164953.1772129-1-m.felsch@pengutronix.de/
- add caching to improve the overlay load time if the same FIT, which
  provides the overlays, provides the kernel, of, initrd.

---
Marco Felsch (11):
      FIT: fix missing free in fit_open error path
      FIT: fit_open_configuration: add match function support
      of: overlay: make the pattern match function more generic
      of: overlay: make search dir more generic
      of: overlay: refactor of_overlay_global_fixup
      FIT: make fit_config_verify_signature public
      of: overlay: add FIT image overlay support
      of: overlay: replace filename with an more unique name
      FIT: fit_open: make filename handling more robust
      FIT: fit_open: save the filename
      FIT: add support to cache opened fit images

 Documentation/user/devicetree.rst |  27 ++---
 common/bootm.c                    |  13 ++-
 common/image-fit.c                |  76 +++++++++++--
 drivers/of/overlay.c              | 217 ++++++++++++++++++++++++++++++--------
 include/image-fit.h               |  10 +-
 include/of.h                      |   3 +-
 6 files changed, 281 insertions(+), 65 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



