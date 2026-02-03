Delivery-date: Tue, 03 Feb 2026 12:03:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnECF-008NNU-1V
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 12:03:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnECE-0007rK-G4
	for lore@pengutronix.de; Tue, 03 Feb 2026 12:03:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EEh+XHpCGzwCOhUSscqxKPZb6qNa0Ncgxgg5xUN2Ey4=; b=Pp/6Nhh6gSLkKHW6cszDbja+Ce
	iuCeTpcmBVzz2S1WfmFK0oyDcOoi1KVUrmxwbNBxdPmzdnMSjXeGkIz4GcaQB9ML2C2IFgAF7Hknz
	dQboeuSSaer3fgfrIPZ91z125kxU2xz6yiMng8QsDY/o1TvDOk3F+chBpu3HSOM6AL/CsxYN1R6Hk
	mha4VYZ/0+2S2XgdTR96DFGsjDL9uHavEedvbKJ5OXcn/5w8rsFYV8SiwYsmamN5aQ9rhwWyzGgXP
	vS9rFgZ4maUg0ZEncUnaBBmhnXujNtS/EdrNvu7Zj8wBfeNUvn83pBJxjRrsZrAhBCTSW+a3DZRku
	VA5Z1Jww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEBm-00000006VeO-2dcL;
	Tue, 03 Feb 2026 11:03:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEBj-00000006Ve1-2Rkb
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 11:03:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEBh-0007mR-E0; Tue, 03 Feb 2026 12:03:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEBh-003tKY-2w;
	Tue, 03 Feb 2026 12:03:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEBh-00000007ipW-2es6;
	Tue, 03 Feb 2026 12:03:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
Message-Id: <177011659716.1840535.5109513295883452673.b4-ty@pengutronix.de>
Date: Tue, 03 Feb 2026 12:03:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_030319_625662_A0D541DF 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] regulator: Fix enable delay handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 29 Jan 2026 12:35:05 +0100, Sascha Hauer wrote:
> The fixed regulator has a "off-on-delay-us" property which we wrongly
> interpret as delay needed until a regulator has been fully ramped up
> and a "startup-delay-us" which exists for that purpose, but we didn't
> handle at all. This series fixes this.
> 
> 

Applied, thanks!

[1/2] regulator: fix handling of off_on_delay
      https://git.pengutronix.de/cgit/barebox/commit/?id=f7f6f176afbc (link may not be stable)
[2/2] regulator: fixed: handle startup-delay-us property
      https://git.pengutronix.de/cgit/barebox/commit/?id=7397e0536982 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



