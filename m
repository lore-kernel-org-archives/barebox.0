Delivery-date: Mon, 08 Dec 2025 08:38:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVpK-0098iU-03
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 08:38:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVpJ-0002va-Er
	for lore@pengutronix.de; Mon, 08 Dec 2025 08:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1gEvDsTzoHSkR4lDD74CiJRv0YgJanx4GPKbW9sQEbI=; b=EougSskMUgZREhnE4hpbrVOh8G
	AJSMw0VPW9dStleInbRTN+mBvznpKrpdkwyaY/emuHrCX9bU/8+S3CwQdlcNhPQtyivNOgxGK2xbI
	DpP+c45t3WbRROb7jxBdAwWNlsGFlph4pLKubfhx9v+6JaGk/OCoYpQxE6F7RwIkv3IRbkYAtgAwR
	LpbsUDwNZwk6dUnB2NFHsp2fqQIu/6lMwnubc0VUNLzAlV0LzwGMGm4l42zWFIsBSeNEilmA9NjUr
	ZmN3iSVXND03AN21ThsikHZpUEry83G0G7mCUta1oriStlfFOWCZQhV4nqmhZx8ETUxGvzZ41Jeuw
	hgsAmygw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVoa-0000000Cm3B-3hiX;
	Mon, 08 Dec 2025 07:37:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVoW-0000000Cm1r-3w7n
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 07:37:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVoT-0002kj-29; Mon, 08 Dec 2025 08:37:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVoS-004ZcH-2p;
	Mon, 08 Dec 2025 08:37:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVoS-00000001Ixa-3QPx;
	Mon, 08 Dec 2025 08:37:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251203152020.524066-1-a.fatoum@pengutronix.de>
References: <20251203152020.524066-1-a.fatoum@pengutronix.de>
Message-Id: <176517946080.311139.1905627838335140401.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 08:37:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_233744_999358_845536E8 
X-CRM114-Status: UNSURE (   7.61  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] devinfo: print DMA offset and mask in devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Dec 2025 16:20:18 +0100, Ahmad Fatoum wrote:
> This is useful information to have in debugging, especially as
> dma-ranges inheritance can be hard to follow, so add it to the devinfo
> command output.
> 
> 

Applied, thanks!

[1/1] devinfo: print DMA offset and mask in devinfo
      https://git.pengutronix.de/cgit/barebox/commit/?id=870eb1d4e1ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



