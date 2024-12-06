Delivery-date: Fri, 06 Dec 2024 11:01:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV8w-004gwi-1w
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:01:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV8v-0007SF-3V
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:01:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BNMthsMfhofOxI/KiBr9BK60Qh3tW963+yew9xXI4MY=; b=jrXhgY7TXyjyfOd5dcMOvk5eJD
	HmaLvwIioB836bDyGaLNKcTUbx70zWyunHz7LkilkWhrL4WnQNWRiWSSTaj3Oh8T5wcDlaOoWYN9P
	atcZt4DRmu0MZN3PCSlXxF90OOb4Vy8c4re4ORxRAWojjByNR6By5VPuZbBk+p8ZpEzr6iNZehcdT
	1Ys0zg3DiaO9EwdNeN9ATC7HKh+4FBjHlnsSjqo1bRjFHvgQG8vsE4fB/gYyqGrD4ijt9ZRW2UnRg
	VTQoJwz5EUf8c7J3BoHCYC3EisEKqXOycSP5x3fboy8UzDfLppOnmTNvmrURUTwFfzx3fJ+Mkmc/r
	D/0DgxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV8X-00000001BEJ-0fwb;
	Fri, 06 Dec 2024 10:00:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV8U-00000001BD2-2zZX
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:00:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV8T-0007Jz-K9; Fri, 06 Dec 2024 11:00:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV8S-001yYx-25;
	Fri, 06 Dec 2024 11:00:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV8T-000XyZ-19;
	Fri, 06 Dec 2024 11:00:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241204091418.438446-1-eagle.alexander923@gmail.com>
References: <20241204091418.438446-1-eagle.alexander923@gmail.com>
Message-Id: <173347923335.130592.15803984468720651521.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:00:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_020034_751478_1FF58612 
X-CRM114-Status: UNSURE (   5.67  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: Compile aic.c for SAMA5D2 only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Dec 2024 12:14:18 +0300, Alexander Shiyan wrote:
> at91_aic_redir() is only used for sama5d2 based SOCs.
> 
> 

Applied, thanks!

[1/1] ARM: at91: Compile aic.c for SAMA5D2 only
      https://git.pengutronix.de/cgit/barebox/commit/?id=bbed579e9f90 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



