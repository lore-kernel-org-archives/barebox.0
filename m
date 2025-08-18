Delivery-date: Mon, 18 Aug 2025 20:17:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Q0-001yEl-1P
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:17:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Py-0000jI-OV
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FEDvDlb25Z6ONe3XFfuoC6mSGA4pvJ/8VTFh3oXgvV4=; b=fL27feZ3s+Wrwp
	ij5nHi88PkM4JjVwN7ybBqMuXDo4lmgIbVseUyyZ8rFsQh0eGViLhfX7yNhVNosw/WwHxFmKFfOL4
	7mvgxdENOzYvMhLShqg2mcuIRELcuAsztjcSr7Gq1pBkimui/gRRyO6fbTXfKf3Ha4NjyVSu4+i1V
	KGiDy85q+Sr3X9HRMN/03ROgHNgApY0V/9Z287WK8qPW4mvecXTTZrXmtZKzeF9YBjxabq5cTXyAt
	Y1g+N2uZplMF4o3ZAE75eWphVhjUxRlSszrwMdV8VxBtU/Ite08vlEVjDTSjxT59+c80DH+PTXMOZ
	0SOCnIqqdKhDuTCN5Big==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4PW-00000008Ikc-2koa;
	Mon, 18 Aug 2025 18:16:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3cZ-000000087uA-2jOf
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:26:14 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3cY-0008EV-7N; Mon, 18 Aug 2025 19:26:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:26:08 +0200
Message-Id: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADBio2gC/43NQQqDMBAF0KuUrDslGjXYVe9RugiZiQ4UI4kNi
 nj3RqGrLtrd/P/hzSoiBaYorqdVBEoc2Q851OeTsL0ZOgLGnEUpy0pqqSDtF8gaJEx+ZAuOJ/C
 JwtMsoBusC93YAisSmRgDOZ4P/v7Iuec4+bAc35La2z/hpHJtC4e6aRyqAm8jDd1rCn7g+YIkd
 j1VH7GWumx/iHkB45TBtjUWqfwSt217A4AZSnQfAQAA
X-Change-ID: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_102611_822125_B915DF71 
X-CRM114-Status: UNSURE (   8.73  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v5 00/11] Add FIT image overlay support
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
 common/image-fit.c                |  76 ++++++++++++--
 drivers/of/overlay.c              | 211 ++++++++++++++++++++++++++++++--------
 include/image-fit.h               |  10 +-
 include/of.h                      |   3 +-
 6 files changed, 275 insertions(+), 65 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



