Delivery-date: Fri, 03 May 2024 08:57:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mre-00Gm7v-2c
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 08:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mre-0005A7-8B
	for lore@pengutronix.de; Fri, 03 May 2024 08:57:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hizae4AeL8k2iHlRGO5ehMAM/BnTGiKyL4ziDwQwxlk=; b=ee967mdbdzX56jESQQzHp/vyFg
	wbBohMM6pTgZhpKwlt1pk69pI43yQNmfaN6MDQYSX/xUg1by+J3436e8XvmYTysYCm7R7ND3DoGpu
	5jclRozopE81kHgzIc2n15Ug/v6uSvQKlIrlPUrjnuFlBxpcwhCTwrOQOiOwQIq/MrE6GzQ6b7JUY
	aaQqHDQvrYGID6DrLfCBmzzS/2iYogbmORktsa98grGhAuHVXIyY6vSLwNCpo7PCEJ92/SWzyUbR6
	SeF8hljNrWEBsVN5I8gHfdQ9XisrTSW9RwBszyVZRiJ0Mvy42lO5pvQMxVR2++tXiLTA7CooZmWzF
	IGhrb1Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mrC-0000000FNXm-41vK;
	Fri, 03 May 2024 06:57:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mr9-0000000FNX2-2kva
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 06:57:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mr7-00053o-QU; Fri, 03 May 2024 08:57:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mr7-00FegQ-ED; Fri, 03 May 2024 08:57:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mr7-0003bP-1E;
	Fri, 03 May 2024 08:57:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240502070328.2218748-1-a.fatoum@pengutronix.de>
References: <20240502070328.2218748-1-a.fatoum@pengutronix.de>
Message-Id: <171471943737.13776.6285755841265331173.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 08:57:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_235719_730754_5AB2C947 
X-CRM114-Status: UNSURE (   6.42  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: workaround NICs and MDIO busses sharing
 same OF node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 May 2024 09:03:28 +0200, Ahmad Fatoum wrote:
> v2024.04.0 broke Ethernet on the Skov IMX6 board:
> 
>   ERROR: KSZ8873 MDIO mdio1-dev00: can't find ethernet master device
> 
> The board has an Ethernet switch controlled via a bitbanged
> MDIO bus and the MDIO bus of the Ethernet device is unused.
> 
> [...]

Applied, thanks!

[1/1] net: workaround NICs and MDIO busses sharing same OF node
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d0598d894fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



