Delivery-date: Mon, 01 Jul 2024 12:34:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOEN4-000TS4-2W
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:34:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOEN4-0000UH-8h
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:34:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UoHTetHNu4ruOYQ6IOBKcqV7KQhjjnoZ2UmoheeC9/s=; b=GBL7e6nWtzeHcYVw4Ddo6v5KGg
	+3/UucilsDa7ZdDlKmYNKYggxeK8r/3szFt7CrbcuOAyoKJYT9p5sGAF7yjteobFRIikgkZWp0hkg
	xkNOQ9BhtB0NXr2dprmf0vwaUG/YPKcEuFZL22fT+eNoRJqY3sMXq/Kp2tv6P5cjFY71VapkKkSO0
	1m8mMVu2XLxQke29QnYCJ/7raAxLTFdoHfa51N0V4APJJqeWOGxJOvmYws1K4bD+L6Q201BiUN1wR
	m3R6tXreMur2gA9n9badBR1pryInhbDiGTQMmWcAif2sGklZOSSnEJqfINTc8twnCPywA1B8YsFK8
	co+9OVAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOEMS-00000002htB-2vDf;
	Mon, 01 Jul 2024 10:34:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOEMN-00000002hq4-3YDQ
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:34:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOEMJ-0000Oy-Jr; Mon, 01 Jul 2024 12:34:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOEMJ-006LmV-7S; Mon, 01 Jul 2024 12:34:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOEMJ-00ExCa-0X;
	Mon, 01 Jul 2024 12:34:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240701-v2024-03-0-topic-imx93-designware-imx-v2-1-d5e05ff70389@pengutronix.de>
References: <20240701-v2024-03-0-topic-imx93-designware-imx-v2-1-d5e05ff70389@pengutronix.de>
Message-Id: <171983004716.3564107.1043595177049592136.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 12:34:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_033411_961659_7AC5AC89 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] net: designware-imx: add fix_reset callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 08:14:19 +0200, Steffen Trumtrar wrote:
> The i.MX93 needs to set the RMII speed to successfully reset. Add a
> callback that does this inspired by the linux patch:
> 
>     net: stmmac: dwmac-imx: use platform specific reset for imx93 SoCs
>     commit b536f32b5b034f592df0f0ba129ad59fa0f3e532
> 
>     net: stmmac: dwmac-imx: use platform specific reset for imx93 SoCs
> 
> [...]

Applied, thanks!

[1/1] net: designware-imx: add fix_reset callback
      https://git.pengutronix.de/cgit/barebox/commit/?id=391e50334811 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



