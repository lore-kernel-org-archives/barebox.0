Delivery-date: Tue, 13 Feb 2024 10:12:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZopd-004biy-1Q
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 10:12:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZopc-00042S-S0
	for lore@pengutronix.de; Tue, 13 Feb 2024 10:12:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C1lUyhT8KCNBq/oUFdy5CAGuN13aCT4sxo/EnRnjw6Q=; b=Lkkh1ubACsVgbw6u+tYI9oRKgL
	bc5MTB1Z+vaeMCzWeKSHZHO/nc2T8L4M7Q58Q87GE9ayS9I0whDD6kXQhV6mnJD96+SOBgMHvFdyg
	8DOVlvHwqwwfXHGXKadv3NusZkGrolekT3UOt38GWMz69qrzaLpTozWms6+0yKQwwPKOTPbyncq4j
	wyw0MXk/2xAyfzypKv7B8Mu5GI46jxUhF3+VgIHU5UhdhtdUZQD/x6xSZK3O3YvbQs2USzaExmaYI
	qW57CvN5yRxX8YNiWh3eTueNzQbf4Jz8batkNcI28DfH+gmqvJcswBRz2ABEnRoMbs5Bn3RKQmNY2
	mG4b7psg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoou-00000008Yhy-3pIm;
	Tue, 13 Feb 2024 09:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoor-00000008YgE-0bHf
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 09:11:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZook-0003ss-ST; Tue, 13 Feb 2024 10:11:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZook-000S9c-Ez; Tue, 13 Feb 2024 10:11:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZook-009zor-1C;
	Tue, 13 Feb 2024 10:11:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: sha@pengutronix.de, Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <20240212132901.1641599-1-mkl@pengutronix.de>
References: <20240212132901.1641599-1-mkl@pengutronix.de>
Message-Id: <170781546637.2382541.14383170865389945959.b4-ty@pengutronix.de>
Date: Tue, 13 Feb 2024 10:11:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_011113_215780_94D4CFED 
X-CRM114-Status: UNSURE (   8.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] habv4/ocotp: style fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Feb 2024 14:27:50 +0100, Marc Kleine-Budde wrote:
> while rebasing an internal branch, I found some style fixes for the
> habv4 and ocotp driver.
> 
> regards,
> Marc
> 

Applied, thanks!

[1/3] habv4: convert comments to common coding style
      https://git.pengutronix.de/cgit/barebox/commit/?id=d25f91d2fa4e (link may not be stable)
[2/3] nvmem: ocotp: use tab for indention only
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f9093be28b4 (link may not be stable)
[3/3] nvmem: ocotp: mark data as const
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c2bec416b2c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



