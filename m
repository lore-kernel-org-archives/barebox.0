Delivery-date: Thu, 08 Feb 2024 08:41:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXz2a-008Ii0-0t
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:41:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXz2a-0007d4-AY
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:41:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DNDdlBeSNL1AH6TJbKTWH8IJSYhliMjzcw5AlYxLNts=; b=PwlZbXfIq51qilQj3+rFeD2Oqz
	55A/oxs6ExgTb5MGK9zS87OA/Y2tjAwoI1om4zk0BbVyG3WSH/Rhy3LKIMkm/0C1Z1NNyT7lifref
	hWQZ1elLIl0aZjiUA5KhGNhyKlVJmcpOBw092lr5ELuTz+79e7vNHHE10WoS4jofvVr01YcZD8Ueb
	97iuITMKDTO2ykOJl6/jKRIh3/8bwQE3i6I/FV1YFMldQKZwz/M2grhufYbfZBZgdwuJQWsyquAvd
	/ckrrVh4YrHO3Q9hbEEGPYfuevT8Vo8DdWo3cgMzG1Tsh6e5C0qTVpBTHA0mDNEaJGsbCVFhHhSVK
	B6WPYtdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXz25-0000000CvBa-3tvr;
	Thu, 08 Feb 2024 07:41:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXz22-0000000CvBF-2oJO
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:41:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXz21-0007Zz-AB; Thu, 08 Feb 2024 08:41:13 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXz20-005AiF-Tp; Thu, 08 Feb 2024 08:41:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXz20-001wPy-2h;
	Thu, 08 Feb 2024 08:41:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240205111627.2397633-1-s.hauer@pengutronix.de>
References: <20240205111627.2397633-1-s.hauer@pengutronix.de>
Message-Id: <170737807282.462783.2572099360817485257.b4-ty@pengutronix.de>
Date: Thu, 08 Feb 2024 08:41:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_234114_737534_55CAD24B 
X-CRM114-Status: UNSURE (   9.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gpio-vf610: always register 32 GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Feb 2024 12:16:27 +0100, Sascha Hauer wrote:
> The gpio-vf610 driver used to parse the number of GPIOs to register from
> the gpio-ranges property. This was ok to do when the gpio-ranges
> property only contained a single entry like on the vf610. On i.MX93 we
> have multiple entries though, so the first entry doesn't contain the
> full number of GPIOs the device supports. We would have to parse all
> entries instead. That doesn't give us any gain though, we can equally
> well just register the maximum of 32 GPIOs and just have a few GPIOs
> registered that are not pinmuxed to the outside.
> 
> [...]

Applied, thanks!

[1/1] gpio-vf610: always register 32 GPIOs
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc1d6f60e2b3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



