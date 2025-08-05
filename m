Delivery-date: Tue, 05 Aug 2025 11:34:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE47-007FWm-2i
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE45-0003Ue-LC
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IvFevTKi3mhEdFNcOVl7qmn8LoeuapF3LWfvzPpo8+I=; b=kegf+/HoJHHaYZeWfqC0qvu3vY
	JQIXq8lWwfpgBydiyh+Bfnr4Obzu+Hz0P4GmZ48Eoj8poN7bEQya8duYLGgYknWIK+LgnScC3GASt
	ZzcuUzE1vG6ZqGl2bCbTDKpkikiwPfRJ+n3P83cn5Ilfqi7BlcoCh6+ZKWoSTfbNb4Q0r9zC27TEn
	/b/W7HU1MCGLs7NFzAdBlpSrg5zGIOCHc7cE9htfV4O8aXRcZjy7sb8rJ4ksTAKoHkANtXIPwExnC
	Fr6D7HpPcTirQTzAtMMEs7R46sLDt7PTl3O8S2+T6scO5BeRLCccpcbaFMeE+ozNN045tDg0uWYx7
	s0WZ6bBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3W-0000000CMzQ-39UH;
	Tue, 05 Aug 2025 09:34:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDsO-0000000CLFb-29aW
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:22:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDsN-0001NW-Cg; Tue, 05 Aug 2025 11:22:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDsN-00C193-0f;
	Tue, 05 Aug 2025 11:22:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDsN-00Ej2B-0T;
	Tue, 05 Aug 2025 11:22:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250710090644.280957-1-bst@pengutronix.de>
References: <20250710090644.280957-1-bst@pengutronix.de>
Message-Id: <175438575114.3509654.6354776502939815412.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:22:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_022232_561457_0A0B8AF3 
X-CRM114-Status: UNSURE (   6.48  )
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
Subject: Re: [PATCH] ARM: riotboard: add habv4-imx6-gencsf.h to flash
 header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Jul 2025 11:06:44 +0200, Bastian Krause wrote:
> The header is necessary to add CSF data for signed barebox images in
> case HABV4_IMAGE_SIGNED=y is set. It should not hurt otherwise.
> 
> 

Applied, thanks!

[1/1] ARM: riotboard: add habv4-imx6-gencsf.h to flash header
      https://git.pengutronix.de/cgit/barebox/commit/?id=957a9aa86e6e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



