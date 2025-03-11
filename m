Delivery-date: Tue, 11 Mar 2025 09:35:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trv5f-00CbSE-1p
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:35:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trv5e-00020W-EI
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:35:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONqqWlqViVYIqZLInKregaCwI6G++XdlpGUKzDe72+A=; b=ewpZIIFqYGa0MEU0MXMCXqhNpn
	H3OgBZVxYtXhzHrITFWZyNLvR3hW9FBwq/sXuiiJv5a/Nm6Jiu8B88DQRGqa83zMDKhZ2sVp8GZD9
	BDDibM00htjr8DinM3P1hsq9XOPbFSfgZZxmcXSNgBVJK2i90yEoLuFtSNwJCHBus6wJvLm9IOhh+
	cNyLRkzbvpgMfEVy/ee9Q2uRNps8qBKJ6sRjFctotjJEpgHpnS/hdTguOvR6kSoDqEFZcY/9JBgLQ
	ZPOpb9ZSLCP7kHwmWFg+a4yN8PH2gFKUc0BmVK9RgkXbGo14vLl2KTomvjpmFk2HcsL1WOtRnI29k
	e+E2E+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trv5E-000000050qF-3ZHT;
	Tue, 11 Mar 2025 08:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trv36-000000050aj-3mIM
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:33:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv35-0001Z4-PO; Tue, 11 Mar 2025 09:33:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv35-0059EV-1v;
	Tue, 11 Mar 2025 09:33:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv35-0064TU-1i;
	Tue, 11 Mar 2025 09:33:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250307112145.3679965-1-eagle.alexander923@gmail.com>
References: <20250307112145.3679965-1-eagle.alexander923@gmail.com>
Message-Id: <174168199552.1447139.9217676884843884297.b4-ty@pengutronix.de>
Date: Tue, 11 Mar 2025 09:33:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_013316_941562_D3BD9977 
X-CRM114-Status: UNSURE (   7.06  )
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
Subject: Re: [PATCH] images: at91: Fix MAX_PBL_IMAGE_SIZE value for xload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Mar 2025 14:21:45 +0300, Alexander Shiyan wrote:
> he maximum allowed code size read from external boot source
> by SAMA5Dx bootrom is 64KB.
> It seems that the last allowed address is currently used,
> let's fix this value for the verification script.
> 
> 

Applied, thanks!

[1/1] images: at91: Fix MAX_PBL_IMAGE_SIZE value for xload
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d8bf1e1a678 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



