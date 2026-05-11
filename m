Delivery-date: Mon, 11 May 2026 09:32:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML7a-000TtA-0e
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:32:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML7V-0007WB-I2
	for lore@pengutronix.de; Mon, 11 May 2026 09:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c+GFYhPS+ajqJCFo3lN/oI+ndRcOxKvKQ3OC8GUAEpc=; b=Aiily0YMyBzrKW6TnvFDIvTRYF
	I0hLv5bPT3YM4vrJnBrFAsov96OM8eCCtYe7HIh0L4w76DFSNzpEQEoRDDFwzhHEARq9Rdy5p4GPB
	u01kPPbH8/rsEU80fdMw7EepDNPot93k6t2g1h9gjHe5s8eU5sLhnv//L9hqV1F/Ad5ZRNDD5za/K
	z0hd48x9yezE/lbry0UKZ8BOx6Vgi/4X7s8i0mY1seQFxCYl5zADIsEydV/i1gSj/1x/lZh0G0D3X
	5K4AaTgMa99HQpBYANxrBKN9DVunvtWjGl/7Mh0TixpgRFthB859dQR4sE6u4kRsRX/J7LuW3h0ej
	LEBqMhwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML6N-0000000Cc4e-1hlB;
	Mon, 11 May 2026 07:30:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML6L-0000000Cc4R-22tI
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 07:30:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=c+GFYhPS+ajqJCFo3lN/oI+ndRcOxKvKQ3OC8GUAEpc=; b=dIdNoFTpye5FDqUEiwLbEAymC2
	S1W2fUtUOvVhzsF0/VCrIuAY17EJkQdE3hlZHBlrUuwpRr28YuTI7Oyikad+QhjBB8xJB5PjDw1pM
	GGEwLjvFpO+2xIzPVthjhFVDPSNf6by7If6okG33UVe1fnqheONMw5y4Fsi0IqqJng1CyjoKr530q
	oE1ogcTWmrLdCH/a6SVabMn1FM713Oy0VpiviXVhddAt0j7tkAhRWaC9W71Rf5NDWp2wMhQriMLJ5
	8WlVdc9HV+lIHvtG+d9tYuxOxsPIajeJkACannVfd7aGan/lI1JIYE5ML+dNjQMvLbX2hWXb+icCO
	7C0kLQ5w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML6H-0000000As42-2c0X
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:30:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML6H-0007Da-9z; Mon, 11 May 2026 09:30:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML6G-000DKY-1C;
	Mon, 11 May 2026 09:30:49 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML6H-0000000DFO0-0B5w;
	Mon, 11 May 2026 09:30:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260427-v2026-04-0-topic-csf_fixup-v1-1-a7178ecb1b6e@pengutronix.de>
References: <20260427-v2026-04-0-topic-csf_fixup-v1-1-a7178ecb1b6e@pengutronix.de>
Message-Id: <177848464903.3157397.9822796585257253590.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:30:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_083050_356733_5A285F58 
X-CRM114-Status: UNSURE (   6.71  )
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
Subject: Re: [PATCH] arm: i.mx: fix error in field return configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Apr 2026 18:22:55 +0200, Fabian Pflug wrote:
> In the previous version, the newly declared variable had the same name
> as the HAB-env variable, resulting in precedence for the HAB-env
> variable, resulting in included quotes, when substituting
> CONFIG_HABV4_CSF_UNLOCK_UID with the value from defconfig.
> 
> The csf tool in turn can't handle the string and replaces it with a
> single byte 0x60, which leads to non-bootable images.
> 
> [...]

Applied, thanks!

[1/1] arm: i.mx: fix error in field return configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8022f14fa24 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



