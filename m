Delivery-date: Fri, 16 Jan 2026 09:19:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf3S-001tbJ-1M
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:19:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf3R-0005ay-FS
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:19:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BGW+AyGTZvYaCx+fMhXoXO6s4HaHBicN8dZEk79VSVs=; b=4epz7lz57QHuuEn6Qk/+IxE5E3
	p1QGjLSZ82TnZ/72/iMCEMg432ft1DtfT4/g6BgOqs+6WvcKs/eTZocSDlxpdLkBxDkMzd4KsA/tv
	Gus0oBt7F41rsGgNNj/R/SeRdx41W8aNySSrH4BL9JR1EYRZKX/p9LaTLdeEXa0LtscBLc+qZsvo9
	2IGAZcvwfybNqq+wULxBahd/Yx1h9/6DM9vOd6GtUWmScPAeCjzKhvVvDXSr8zJeEAEbuT7hLOqPa
	UIXEFxGjX0anFg0FwOfyr4arpSN5PyhTZTU0czcdC/ThJ+dOWM6xMylArbEZvbGAf9Y8eD/82SCgf
	WqQHO/HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf33-0000000Dkdy-3rNw;
	Fri, 16 Jan 2026 08:19:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf31-0000000Dkco-0aK6
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:19:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2z-0005UM-EU; Fri, 16 Jan 2026 09:19:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2z-000t6h-2l;
	Fri, 16 Jan 2026 09:19:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2z-00000005hpC-0Z6A;
	Fri, 16 Jan 2026 09:19:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260115104038.3714380-1-a.fatoum@pengutronix.de>
References: <20260115104038.3714380-1-a.fatoum@pengutronix.de>
Message-Id: <176855154913.1360085.2375497327396646565.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 09:19:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001911_180261_72D09A3C 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: layerscape: defconfig: refresh defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Jan 2026 11:40:38 +0100, Ahmad Fatoum wrote:
> PPA support was removed in c862c3d23d01 ("ARM: Layerscape: LS1046a:
> remove PPA support") in favor of use of TF-A as secure monitor as the
> former is no longer maintained. The TF-A config symbol is selected
> by the SoC symbols as needed.
> 
> Run defconfig to remove this option as well as other options that have
> become selected by other options in the meantime.
> 
> [...]

Applied, thanks!

[1/1] ARM: layerscape: defconfig: refresh defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=61fb00fd886c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



