Delivery-date: Tue, 30 Jul 2024 09:50:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhdA-004OYJ-0F
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:50:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhd9-0001Hh-FR
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ClLSULnwRs5TH84lw+yVpFqN1ShavwVfy8kfYdW/Lhs=; b=N4hcg2ufpSE6SxtLlgNwHCbE2V
	7+6dsIDWiwLF6KL/tc4DgYMcUF3qROpP4R8BUERjHHas+pKcor1Xq2fZxNRfoXY5nvX2GGxIL++KX
	6dHceVjhGYSnKuvEsrFwJM7xo5yJl+6XshRu9qm/3xIAOMOV61hHqB6S+WRd27m6O4I5fceQvnLuX
	KN3LSVN4WP5MOOZyzhg7KH2WaA233O9xKYEXinJdC+uNdjlfVTwgOf0r4r76LahsayrwWl/SI2TFK
	GAX3D/Uy8T61Y2/ALfX9dG1JUhTPhnP+lvdAUOS+4zGOP0NVtAnsB5XV+nqpP4u33uf8DKxOXKbAx
	ABI/KnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhcj-0000000E5qS-1PVo;
	Tue, 30 Jul 2024 07:50:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhcf-0000000E5pG-10tz
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:50:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhcd-00019E-LC; Tue, 30 Jul 2024 09:50:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhcd-003EZD-7w; Tue, 30 Jul 2024 09:50:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhcd-004R3K-0Z;
	Tue, 30 Jul 2024 09:50:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240729172249.1708105-1-a.fatoum@pengutronix.de>
References: <20240729172249.1708105-1-a.fatoum@pengutronix.de>
Message-Id: <172232581517.1057249.10347588882806903772.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 09:50:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_005017_311681_CF673E8D 
X-CRM114-Status: UNSURE (   6.55  )
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
Subject: Re: [PATCH] watchdog: imxwd: more info in
 imx21_watchdog_set_timeout debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Jul 2024 19:22:49 +0200, Ahmad Fatoum wrote:
> The function behaves differently depending on whether priv->ext_reset
> and priv->suspend_in_lpm is set. To make the debugging prints more
> useful add this information into the debug message.
> 
> 

Applied, thanks!

[1/1] watchdog: imxwd: more info in imx21_watchdog_set_timeout debug message
      https://git.pengutronix.de/cgit/barebox/commit/?id=3778b0b2adb4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



