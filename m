Delivery-date: Wed, 19 Mar 2025 10:20:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tupaq-001OmY-1I
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 10:20:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tupap-0005aD-Ak
	for lore@pengutronix.de; Wed, 19 Mar 2025 10:20:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c2xtbC90B3+TfWFfkXooURvaQFr0Uf3vFrIMU0vmS+g=; b=uk0uVsF2x7f/PgNAUe5jWEMsnk
	hFIOrSf41LkrZTxnTBne2dbGEteMzj1vaY+UNkdAxYOBP2tsSEwwB4ZPL2fTI+LZh29H6Mfvmpz+8
	SG4HMjtFvIFS0wRydfb/gWLGkpWH6YVn8HF85IlnSDiNJsqPqxgL9MIEOgSMezBv99DM4ZaJ3ddd/
	SDAc97/dfzbjy23bqtGnqwCgxSv1ZLZbA9GsE5dmoiylYM0UlBl3dxaGxic1Qy+4cLzfmb09WMAGi
	Mj4/y/IG+ZeBv2t5bUioFbQ+9bOgYAX9vK9Auz2PnJLzedZSdB7coSzJbMWDv/Y9DoJ+NPZ5IMjJU
	a/Yboh5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tupaP-00000008Spx-0u0O;
	Wed, 19 Mar 2025 09:19:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tupaM-00000008Spd-2hnM
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 09:19:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupaL-0005Va-Cu; Wed, 19 Mar 2025 10:19:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupaK-000ZNy-1r;
	Wed, 19 Mar 2025 10:19:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupaK-009tgv-2z;
	Wed, 19 Mar 2025 10:19:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250319083623.2203370-1-s.hauer@pengutronix.de>
References: <20250319083623.2203370-1-s.hauer@pengutronix.de>
Message-Id: <174237597692.2358998.2140175256944818188.b4-ty@pengutronix.de>
Date: Wed, 19 Mar 2025 10:19:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_021938_694386_67E920DA 
X-CRM114-Status: UNSURE (   6.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: am335x_mlo_defconfig: disable unnecessary options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Mar 2025 09:36:23 +0100, Sascha Hauer wrote:
> - disable CONFIG_BOARD_GENERIC_DT which is not needed for the MLO
>   defconfig
> - disable CONFIG_MTD_NAND_ECC_SW_HAMMING. AM335x uses hardware ECC
> - disable CONFIG_BANNER. Saves another few bytes
> 
> 

Applied, thanks!

[1/1] ARM: am335x_mlo_defconfig: disable unnecessary options
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e62b722f190 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



