Delivery-date: Fri, 28 Nov 2025 08:12:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOse8-005hnk-1s
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:12:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOse8-0003eb-2L
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:12:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oLoZIJaKx6CgMSHQJFDWVrwPNb/oyZQVxHb9sD4JNRU=; b=mGcFSdkfLGbYZjWeQYJHMgtwcD
	xlRldk6UVzbCeonF0PP/td29oOYZTWyecGtNlNFNMs0AlyM+aKHBSv/rHPOtWrXbYkkcfV4pcalI2
	JKJf3SH2HT/5EonBnTV8J8XhTw9XOUK022TycWK79r+/BezKeoQmLI3qlxWaOCJCPVESUO1MxYJpF
	36HrLbX+nwC8vMvMy5mSsZ9HmFg9rR6Igc9WkKkab7uk1a7vrgj9ZmeRUwogIHYLd9JS2cYQJGDF8
	NEW7NnVYGNWewdAo2skRoJ4eADXIF20KYLj169R95HmfsvpEMmy+W02Jvd/y+8HbDJIl5MywF2fY7
	i+SiUlbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdi-000000004oi-1APi;
	Fri, 28 Nov 2025 07:11:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdf-000000004nu-2KuL
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:11:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsde-0003N9-6i; Fri, 28 Nov 2025 08:11:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdd-002uxd-2i;
	Fri, 28 Nov 2025 08:11:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsde-00000009Pnz-0wZg;
	Fri, 28 Nov 2025 08:11:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <20251127-ddr3_size-v1-1-cb26cadcb348@gocontroll.com>
References: <20251127-ddr3_size-v1-1-cb26cadcb348@gocontroll.com>
Message-Id: <176431388977.2244131.11905227239642749300.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:11:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231131_597347_6BEFA44B 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH] ARM: i.MX8M: Fix the RAM size calculation for DDR3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Nov 2025 15:18:52 +0100, Maud Spierings via B4 Relay wrote:
> The default value in the MSTR register for DDRC_MSTR_DEVICE_CONFIG is
> 16bit which causes the calculation to be half of the actual RAM. Add the
> BIT() define for DDR3 and add it to the workaround for calculating the
> correct amount of RAM like LPDDR4.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8M: Fix the RAM size calculation for DDR3
      https://git.pengutronix.de/cgit/barebox/commit/?id=35460da74285 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



