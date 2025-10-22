Delivery-date: Wed, 22 Oct 2025 08:48:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSdx-00AWHD-11
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 08:48:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSdw-00020L-QA
	for lore@pengutronix.de; Wed, 22 Oct 2025 08:48:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayPcrKBiR6LEYY8rX6x81qTT0zjb1tsQqsJHELx3a50=; b=d6tqIyEGROWjYE/uq3Wz6mk4AT
	D1CySGHAyB2L4DOJn8T0dgBiCX5U69bd+YHtGAah/pgSBstWAZa4IUYxF+T8zY3PDQIyjBpi7EnaQ
	Df8H9y54HEtx4aY258pDyiv/44yz3A5QtggCRb1sPUsxVbIVIhKPjgLyYc6nrWP2rPwXaCrVcvAEi
	2+9Lg5L5i/3oHuEECNnIa8svjC67a8w345Hf0+CEZupZF/QnkkBwfpKLdMDlgxy30X7vS2S6bUZ0N
	OWOTYGcA6Q5vrRq4k74l1o45/2hIpYuyN0981HnZDFu/xRUs82aWYFFg3lKfbkyA4+Pg5cj+p2wxw
	ics7ItIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSdR-00000001iOB-2wY9;
	Wed, 22 Oct 2025 06:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSdN-00000001iN2-30Ci
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 06:47:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSdM-0001tQ-5p; Wed, 22 Oct 2025 08:47:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSdL-004qei-3C;
	Wed, 22 Oct 2025 08:47:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSdL-0000000H5Gu-3sR7;
	Wed, 22 Oct 2025 08:47:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251021110149.1151936-1-f.pflug@pengutronix.de>
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
Message-Id: <176111566392.4071821.4204354550781897409.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 08:47:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_234746_479592_C44F6F26 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Oct 2025 12:59:38 +0200, Fabian Pflug wrote:
> Add support for the i.MX93 FRDM board from NXP
> 
> v2:
> - remove init from board.c
> - use iomem in lowlevel.c
> 
> Fabian Pflug (2):
>   common: deep-probe: include of for of_device_id
>   ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
> 
> [...]

Applied, thanks!

[1/2] common: deep-probe: include of for of_device_id
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce1f18b65994 (link may not be stable)
[2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=650a98ec69fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



