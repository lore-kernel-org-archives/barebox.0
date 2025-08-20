Delivery-date: Wed, 20 Aug 2025 12:30:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5J-002aRd-08
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5H-0007YD-0q
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DanRcYUzKP+ANRqPib//mAAE6v+xf3zUyunELfNW0Os=; b=CDZGqAA6trqb+K
	pBrUjr2kJO8em34A5fezMBisuHy6ER/GgggqWfHFB8f8l9qFjRt4+ljGJwylXuTrb1sJr0ijDWfXe
	TveoGwLWd/MrH0OP7K0jseJusLMSVJUOOFWIU1cmcOI7AZJaCBUX3KVXZNY+42CzZHJnLvVhXbBpj
	LUUp9YhTs7+adnd/Mqvg1VDh/Y7mY52XP773kzzyp1Mlww+XBmcdSt0evm20gvebNlLLsUedPeBEW
	aAS5JmHcnoqrO8Vmw8GuuDwXGkosuO4QRQCUbPpOmb2kCKAEmRLwEgm5EI1dbQvDIMkzy9GUjXbuM
	DV25m2b4atG5b6pGVGvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4m-0000000D9My-31U7;
	Wed, 20 Aug 2025 10:29:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofR2-0000000D0sM-0CI7
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=DanRcYUzKP+ANRqPib//mAAE6v+xf3zUyunELfNW0Os=; b=Tm1jaVI6+U3HuoeexaFtMEhfyt
	bJ2L8dKfhIls4wgjoIDCzWtO6vDH9qCcCA1yQO/1Avygj3vJj/bczsa/GpQs6iYKKrXnWkJXEeX3v
	u7mPIoFhBxmXG/GHKCCydHRHWoVQbVeTd3B/cKQDfnWkdp+XDDmUv5uIimfaTM7oPGmLJzL4ChIBJ
	bnnitLLBojGerWjtrD8kfLHBaFLodxgtWQVhSxfk+19lDH8sD+sExS28YUZo5B+SL2FtNWeV6s2OI
	oRdH8HIAaEdqrzXaqYSXIoPyp/tXB6ig5q3O5IO3dsiVtfQVjQFxvEY0OYBZfi1PqLBYax8BjDk8P
	oEw2mWig==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQy-00000000HaX-3ilM
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-9z; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:32 +0200
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPCZpWgC/43NTWrDMBAF4KsErTtBP7YUZ9V7hCwUzSgZKJaRX
 ZFgfPfIhtJFCulu3nvwzSxGykyjOO5mkanwyKmvwX7sRLj5/krAWLPQUjfSSQNlvUC2IGFKAwe
 IPEEqlL/8A5zFVjkbFDYkKjFkinzf+NO55huPU8qP7Vsxa/tPuJhaBxXRWRvRKPwcqL9+Tzn1f
 N8jiVUvzY/YSqe7N2JdwEfjset8QNJ/iu2veFCHN+JaXzpNjbVeoXkVl2V5An62t1pxAQAA
X-Change-ID: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104845_202797_220CDBC1 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v6 00/12] Add FIT image overlay support
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
Changes in v6:
- Link to v5: https://lore.barebox.org/20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de
- devicetree.rst: Adapt documentation, drop absolute path requirement
- of_overlay_global_fixup(): Make use of %m instead of strerror(errno)
- Add more overlay matching debug output
- fit_open(): Drop absolute path requirement to allow "bootm bar.fit"
  use-cases.

Changes in v5:
- Link to v4: https://lore.barebox.org/20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de
- fail if CONFIG_FITIMAGE=n and fit overlay was requested
- of_overlay_global_fixup(): adapt pr_err() if stat() fails
- of_overlay_global_fixup(): Drop duplicated pr_err() if FIT overlay load fails
- of_overlay_global_fixup(): Drop filetype detection
- devicetree.rst: Fix documentation

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
Marco Felsch (12):
      FIT: fix missing free in fit_open error path
      FIT: fit_open_configuration: add match function support
      of: overlay: make the pattern match function more generic
      of: overlay: make search dir more generic
      of: overlay: refactor of_overlay_global_fixup
      FIT: make fit_config_verify_signature public
      of: overlay: add FIT image overlay support
      of: overlay: replace filename with an more unique name
      of: overlay: add more debugging prints to of_overlay_matches_filter
      FIT: fit_open: canonicalize provided filename
      FIT: fit_open: save the filename
      FIT: add support to cache opened fit images

 Documentation/user/devicetree.rst |  26 ++---
 common/bootm.c                    |  13 ++-
 common/image-fit.c                |  70 ++++++++++--
 drivers/of/overlay.c              | 222 ++++++++++++++++++++++++++++++--------
 include/image-fit.h               |  10 +-
 include/of.h                      |   3 +-
 6 files changed, 278 insertions(+), 66 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



