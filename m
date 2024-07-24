Delivery-date: Wed, 24 Jul 2024 10:43:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXao-002Puh-0t
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:43:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXan-0000XW-MK
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:43:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhydXhmtgGkj8WQNUSET7yftGPb6/NvSPhFpiq7rGPQ=; b=vzEgWpBzQp771E+lW+h7m58wee
	ZkwZyu+Yw2PqY8Ix2QvstjXT1j20pQ8YjIA0dGm62ptADAmTvt05elO22j9bC8nahuOlvmUWte/U0
	W8UoC/GEHYH5oFn1Qq97q+5PzSls4vgWPxPNYagBejNDYDMyuS/tGIn8Y6WDAIhznO3/wiRRKuCAB
	s7PrxUeJuMqujmbyyTKK3CFT6wlJ51VMi7iiJ6M5EyrySFU53UjihcN6STWcD2HhJlGLXaiUWE83k
	/nAXESmynBgqVylvZWEef2lMC7qi9eJdVy2jNAIoxFcbWC0cGtLuXlHN4dSlq3nkPsHbRwhQtPNjj
	54DXmfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXaL-0000000Enf0-0KcA;
	Wed, 24 Jul 2024 08:42:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXaH-0000000EneW-1dXv
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:42:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXaG-0000Tg-0I; Wed, 24 Jul 2024 10:42:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXaF-001ogc-JS; Wed, 24 Jul 2024 10:42:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXaF-00ApDx-1h;
	Wed, 24 Jul 2024 10:42:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Stefano Manni <stefano.manni@gmail.com>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
In-Reply-To: <9bf8686f882714867ac2dc864c8e5539ad06400b.camel@gmail.com>
References: <9bf8686f882714867ac2dc864c8e5539ad06400b.camel@gmail.com>
Message-Id: <172181057152.2579936.10127840573389033275.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:42:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_014253_463147_922AC600 
X-CRM114-Status: UNSURE (   6.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] habv4: ignore engine failure due to RNG self-test in
 boot ROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 23 Jul 2024 17:31:51 +0200, Stefano Manni wrote:
> boot ROM
> 
> Few i.MX chips which have HAB 4.2.3 or beyond, have oberserved
> following warning message generated by HAB due to incorrect
> implementation of RNG self-test in boot ROM:
> 
> 	HABv4: Status: Operation completed with warning (0x69)
> 	HABv4: Config: Non-secure IC (0xf0)
> 	HABv4: State: Non-secure state (0x66)
> 	ERROR: HABv4: -------- HAB Event 0 --------
> 	ERROR: HABv4: event data:
> 	ERROR: HABv4:  db 00 24 42  69 30 e1 1d
> 	ERROR: HABv4:  00 08 00 02  40 00 36 06
> 	ERROR: HABv4:  55 55 00 03  00 00 00 00
> 	ERROR: HABv4:  00 00 00 00  00 00 00 00
> 	ERROR: HABv4:  00 00 00 01
> 	ERROR: HABv4: Status: Operation completed with warning (0x69)
> 	ERROR: HABv4: Reason: Engine failure (0x30)
> 	ERROR: HABv4: Context: Event logged in hab_rvt.entry() (0xe1)
> 	ERROR: HABv4: Engine: CAAM (0x1d)
> 
> [...]

Applied, thanks!

[1/1] habv4: ignore engine failure due to RNG self-test in boot ROM
      https://git.pengutronix.de/cgit/barebox/commit/?id=04656c1bde1e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



