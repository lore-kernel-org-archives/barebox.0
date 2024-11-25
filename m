Delivery-date: Mon, 25 Nov 2024 09:43:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUhK-0008HS-0X
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:43:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUhK-0003L8-15
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:43:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3y39wK/6LnDtkVCxf4Qr9VtPJ35zMZEF44I8eKJvDDQ=; b=XOtwnivdIH7Xr82t9hG4JLpWaW
	DmCedFqs/Z9RG71o3RDGkyk5L8gAFeSn9IBIBhOr++3qU8s3FvewDCg58pbsTf6PRtFVT5O0W5Qai
	J2Ou2iBazUsyxma4qQGXbz0azmeOwerZINl8Czuuyc5dMa4i+bIgWsD7hHfvkYOb5nSt/w7MLgeag
	0EmPvjXxfWkE5ftXPQN7Yv3l6RhfLyqpbIxQYiNxOmfU+svM/LjDQwuU5BPuTsDAsJe1eVH8dLaQF
	uYcwXO9q5hvumiDirraMsMEitcLjWt7n2tXTSyYm2e9AdhDW2tN3s9isVX4DOQ/C7FcU5+h6uQt+f
	Li18ZwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUgx-00000007QiR-0rvu;
	Mon, 25 Nov 2024 08:43:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUgu-00000007Qhq-3TjU
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:43:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUgt-0003Fr-Bz; Mon, 25 Nov 2024 09:43:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUgs-000394-1L;
	Mon, 25 Nov 2024 09:43:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUgt-000iFw-0P;
	Mon, 25 Nov 2024 09:43:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125083042.482415-1-a.fatoum@pengutronix.de>
References: <20241125083042.482415-1-a.fatoum@pengutronix.de>
Message-Id: <173252421112.170105.3021576964864523606.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:43:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_004332_871589_D538E548 
X-CRM114-Status: UNSURE (   9.80  )
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
Subject: Re: [PATCH v2 1/3] reset_source: have reset_source_set_device
 actually set device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 09:30:40 +0100, Ahmad Fatoum wrote:
> reset_source_set_device is given a device pointer as argument and it
> passes it to __reset_source_set, but the latter function discards the
> argument and unconditionally stores a NULL into the reset_source_device.
> 
> Fix this by actually making use of the argument.
> 
> 
> [...]

Applied, thanks!

[1/3] reset_source: have reset_source_set_device actually set device
      https://git.pengutronix.de/cgit/barebox/commit/?id=858815149fba (link may not be stable)
[2/3] mfd: rn5t568: refactor to call reset_source_set_device only once
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a065bd6b4d9 (link may not be stable)
[3/3] reset_source: give reset_source_set_device a priority parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=30322f4b5651 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



