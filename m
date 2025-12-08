Delivery-date: Mon, 08 Dec 2025 13:11:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa5K-009Crl-21
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:11:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa5K-0003jd-3c
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:11:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tTwS4GO4HRrhg29+TjnUB7pytiDUmY7LP3+905tr4xo=; b=INsQpYl23qtMs117K5vKlmXKey
	/c0YdptoX/fkMuQMfzRGNUZKk2U0DONErCj9tYQIMimnX7yHWDIG+WwCOWMJRyXOO2fozZyPnqMON
	uQpLvkS6+00yiUaykzoRzsnlSgrVt6Y/bM4JtnWSduD8L5sn1pUtqoboPzQdoUjvPtz4yhilkn9Uz
	RrhwnxfUANILAJ2UlcXOuIfuuo5j3BlpXTYwiM0sJCs34zxpcQq5JIODWNJD6/cvnT6FcGHe6K8Mi
	yVQibegLxWnDPbtFcAzGfLZP37+2n5vOSWgdAMyarH3nNZXUC18BMzocx/k9xrICwhywhF4+saEU0
	W08ZmTjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa4v-0000000D36P-1Wj6;
	Mon, 08 Dec 2025 12:10:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa4s-0000000D35f-40Ib
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:10:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa4r-0003eq-7K; Mon, 08 Dec 2025 13:10:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa4r-004boR-07;
	Mon, 08 Dec 2025 13:10:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa4q-000000028l4-46HK;
	Mon, 08 Dec 2025 13:10:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251208103035.4129780-1-a.fatoum@pengutronix.de>
References: <20251208103035.4129780-1-a.fatoum@pengutronix.de>
Message-Id: <176519585297.510315.12095247625159146995.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 13:10:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_041054_999037_29B388C3 
X-CRM114-Status: UNSURE (   6.50  )
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
Subject: Re: [PATCH] fixup! efi: add option to generate vfat file for
 barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Dec 2025 11:30:34 +0100, Ahmad Fatoum wrote:
> efi: payload: move EFI_PAYLOAD_ESP_IMAGE into payload/Kconfig
> 
> Anticipating addition of full loader support, it's important to clearly mark
> things specific to the payload, so move the symbol there.
> 
> 

Applied, thanks!

[1/1] fixup! efi: add option to generate vfat file for barebox.efi
      https://git.pengutronix.de/cgit/barebox/commit/?id=1be6c35214b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



