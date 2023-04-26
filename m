Delivery-date: Wed, 26 Apr 2023 11:05:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb5u-000W6l-1u
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 11:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb5t-0003Jf-Vx
	for lore@pengutronix.de; Wed, 26 Apr 2023 11:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9UvRBc5bfsrMnQ3Jd6vTyIyG1HFekjaZMSkqhQqntf0=; b=r0BZ1rkjUmjNBbkWk1z95SHQuw
	wWNaA2DEGcgzoejSTp+L46YfCbTFB67EmWgNZmW2FRUpjcBNj/6I32CrDIvJKNOGa6W4ItUvHnr5V
	5FGAa8nUMPYX+L22MOwyEpI0Mo+PznExyxn7l08ch+Hlrup2IhKEBP/YqaBAodDJnK/NB4JP0p3z2
	tIvbeBp+vSIR2D4kG+cAPaMCnb0p6gYtan/qWVfhcg+gHtbnlPN7wTtFgOC20f8FsJOdj36ZDxvSN
	P+E6Zx6jaENo+M9RJYRKuuvi3w/E0Ur7sVV8A11NmE7iMnMaujuSQNA+uKIonb92J3XVLZK6lJ6By
	7csWMiKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4e-003E8q-0y;
	Wed, 26 Apr 2023 09:04:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4a-003E7y-2C
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 09:04:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Y-0002z4-Km; Wed, 26 Apr 2023 11:04:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-00DtNT-UQ; Wed, 26 Apr 2023 11:04:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-005nZT-5k; Wed, 26 Apr 2023 11:04:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Apr 2023 11:03:51 +0200
Message-Id: <20230426090354.1350981-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_020424_738762_58674BBD 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] Compile boards only when firmware is present
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have recently introduced ARM multi_*_defconfig files to compile
for multiple SoC families in a single config. Before these can
successfully be compiled a bunch of firmware files need to be present
in the source tree. This can be inconvenient for users as they have
to grab the firmware files from several sources before they can
compile these configs, even though they might be only interested
in a single board.

To solve this make the boards depending on a firmware file selectable
only when the firmware is actually present. With this the
multi_*_defconfigs can always be built. Boards with missing firmware
files will be skipped from compilation automatically.

The next step might be to introduce a Kconfig option (or use existing
COMPILE_TEST option) to provide dummy files for the missing firmware
files which could help for compile testing.

Sascha

Sascha Hauer (3):
  Kconfig: source Kconfig.include earlier
  ARM: Rockchip: make boards only selectable when firmware is present
  ARM: i.MX: make boards selectable only when firmware files are present

 Kconfig                        |  2 +
 arch/arm/mach-imx/Kconfig      | 74 ++++++++++++++++++++++------------
 arch/arm/mach-rockchip/Kconfig | 11 +++--
 firmware/Kconfig               | 21 ++++++++++
 lib/kasan/Kconfig              |  2 -
 5 files changed, 80 insertions(+), 30 deletions(-)

-- 
2.39.2



