Delivery-date: Wed, 30 Oct 2024 12:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-002gAu-05
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-0003ww-6z
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:47:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KhdVCaH+x8aNRD1RzUazePpXdhb1KcCVcogjxAvI8cg=; b=D4jao/HuiiqhFJhEzr9L3Jdg8k
	+41mgjT4ASiCal85YEeGnOiE4tK7S2qcGn90IVYX590LBbKul/fBPJKj8M8xEv2TYNkR2Yq8zIpLr
	UDxUxLmro0K6Q4w9zQ0sZPQdXDO+EXMkIk6+yv3AQOhcMh7omS0OEJkwmhr+uq0UwVCmAngNcw2UX
	6AVhQm2ckRfGY3nr7buSGtzAUJieiFxYjEnFx649XYrBqeWykEnhbKespC+bCCV1/9bvN8lVub5Ru
	bY9bbM0tDGFLZyGVakXA8GBjlbyhRUOIHLoIzBHr2bqyTjjFI4bQv3DTVBD1T9mgn63ibrNbHITlB
	JjmVrMNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67A7-00000000CWp-3lhz;
	Wed, 30 Oct 2024 11:46:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t66uL-000000008ow-3oWD
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-0001gX-Hg; Wed, 30 Oct 2024 12:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-001Bh8-0l;
	Wed, 30 Oct 2024 12:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-00333E-0Z;
	Wed, 30 Oct 2024 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 12:30:35 +0100
Message-Id: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANsYImcC/x2MywqAIBAAf0X2nOAjivqV6GDtWnvR0IhA/Pek4
 wzMFMiUmDLMokCihzPH0EB3AvbThYMkY2MwyvRaWSWbxOi9RHc7iZu1zo4TDsZAS65Ent9/t6y
 1fk8yaaReAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730287836; l=975;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jxIgR8AOQj0GwiLn9dJ5yBymxJD1xEEI2pa0646FwMk=;
 b=XSBUGCjynSPVfNjVBvknu10Q8W7+VCKOvgYvF4DxTmxaoJSi1gctsqI5ITxpgCLuTPnntUEU0
 mbyFeWs8CzIA+0kMSGN1t6kQEZl2cpd5PlZTyNbi78GQfjvqL/+CvwZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_043037_986400_ECDD9B62 
X-CRM114-Status: UNSURE (   8.13  )
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
Subject: [PATCH 0/4] handoff-data: some update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some misc updates for the handoff-data support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      handoff_data: add handoff_data_add_dt()
      ARM: i.MX93: add destination argument to imx93_romapi_load_image()
      handoff-data: set flags of moved handoff data entry
      handoff-data: add protection against multiple invocation

 arch/arm/boards/tqma93xx/lowlevel.c |  1 -
 arch/arm/cpu/uncompress.c           | 18 ++----------------
 arch/arm/mach-imx/atf.c             |  2 ++
 arch/arm/mach-imx/romapi.c          | 11 +++++------
 include/mach/imx/romapi.h           |  2 +-
 include/pbl/handoff-data.h          |  6 ++++++
 pbl/handoff-data.c                  | 16 ++++++++++++++++
 7 files changed, 32 insertions(+), 24 deletions(-)
---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20241030-handoff-data-db33a379d622

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



