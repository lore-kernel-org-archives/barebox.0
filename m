Delivery-date: Mon, 01 Jul 2024 11:34:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODQD-000SVV-0z
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 11:34:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODQC-0002nn-Mg
	for lore@pengutronix.de; Mon, 01 Jul 2024 11:34:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MMSzXkBVwI5Bnv/FcuiqdPqx94UqqxzbqkCLU8PaYmk=; b=iXyvlT9yd1eScmK3CY/nG4hSAG
	pRoCrKNYCOOUW2HeMnr2YYtyo9m2D5jsjl7TWRBiNVm+FyXO/KhGtWsiBKMnl4EmrUD2mM4SPJ4Zj
	OJlBC7NUCzaq1aSlRNOx9rAJWbxd5amewZsbdhcuJHwDH3R5pMDhI74CWlq24tPKnPHjeiWM/1dtX
	xkN2JwXbIGIyUfr8Eh1v8UO/Nxj58MkHIxWIhYfSo2Soe8cRwoVRZJ3Ni/skJjQT8JyfCMXmET+Dj
	7F17iFhPHfpCsomH0dfA0n8Jtel3pYTA1DKFleUmx3YtEhAwoYiDV4sFQYDkaJMFnVXh3f5b1ceWL
	tQIFBSqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODPj-00000002SSF-0bgQ;
	Mon, 01 Jul 2024 09:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODPg-00000002SRf-3IOM
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:33:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODPf-0002gW-9x; Mon, 01 Jul 2024 11:33:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODPe-006L5g-Ty; Mon, 01 Jul 2024 11:33:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODPe-009eYt-2n;
	Mon, 01 Jul 2024 11:33:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701073526.176353-1-a.fatoum@pengutronix.de>
References: <20240701073526.176353-1-a.fatoum@pengutronix.de>
Message-Id: <171982641086.2300304.4200887516127732492.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 11:33:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_023332_854315_0DEE6A8B 
X-CRM114-Status: UNSURE (   8.84  )
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
Subject: Re: [PATCH 1/3] e1000: mtd: remove needless error checking for
 device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:35:24 +0200, Ahmad Fatoum wrote:
> The invm device is specifically created for the EEPROM, so adding a
> parameter should not result in a name clash.
> 
> This leaves only -ENOMEM as possible error. As the driver is usable
> without EEPROM being writable, don't propagate the error.
> 
> 
> [...]

Applied, thanks!

[1/3] e1000: mtd: remove needless error checking for device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=580b39673a36 (link may not be stable)
[2/3] PWM: core: remove needless error checking for device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=27fef37a0792 (link may not be stable)
[3/3] fpga: bridge: remove needless error checking for device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c64cff18f95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



