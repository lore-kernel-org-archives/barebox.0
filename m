Delivery-date: Fri, 21 Feb 2025 13:17:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlRyh-0056nU-0b
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 13:17:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlRyg-0008Om-1g
	for lore@pengutronix.de; Fri, 21 Feb 2025 13:17:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8k3MXKAiG0tUOyUstv0XzUvtjT2fYgkQ+3OYl8H1M4s=; b=Kz2izKS26J5f0W/5Y4tGoyFzl0
	leO8A6KIVvlkt2eFWmNFMtOa5pdDKIl8yZtizYfspzAEWIkXruaxCbQeZwTe+DFTwWYG5EU/MGOH8
	f1TBab/TY6YElFsTyuDOJYN+5Gc1ou8Mzqraln3cWOVtI8Xyokr76Tfc/cjNJMxiGVyf9M6nB5ooC
	iSw8md2c1iQ86jLncvFdbuS4HDoJPm3Ur+987WgW6LLa8IQV5GnVnMeVqOIcvSIB2+082AdtyI3XK
	ANRzao4avNwiEeRfeb6jdhzk4FhsEli26UKNJkT5op32k/FfbJtMWwz7sPvCRT9pNKHui9THzdgLn
	P8ijw6ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlRy7-00000005RvM-2TJW;
	Fri, 21 Feb 2025 12:17:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlRy4-00000005RuO-33WL
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 12:17:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlRy2-0008IC-M3; Fri, 21 Feb 2025 13:17:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlRy2-0026Ga-1c;
	Fri, 21 Feb 2025 13:17:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlRy2-005xPz-1N;
	Fri, 21 Feb 2025 13:17:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250220202723.3349623-1-a.fatoum@pengutronix.de>
References: <20250220202723.3349623-1-a.fatoum@pengutronix.de>
Message-Id: <174014023842.1419851.1391645662739523261.b4-ty@pengutronix.de>
Date: Fri, 21 Feb 2025 13:17:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_041720_768255_CD2373AF 
X-CRM114-Status: UNSURE (   7.87  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: configs: disable CONFIG_NET_NETCONSOLE in
 sandbox_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Feb 2025 21:27:23 +0100, Ahmad Fatoum wrote:
> Sandbox users can register extra consoles via command-line arguments, so
> it makes sense to have CONFIG_CONSOLE_ACTIVATE_ALL enabled.
> 
> This also means that users get an ugly error message by default:
> 
>   ERROR: netconsole: port not set
> 
> [...]

Applied, thanks!

[1/1] sandbox: configs: disable CONFIG_NET_NETCONSOLE in sandbox_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=20876a9ad601 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



