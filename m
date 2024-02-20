Delivery-date: Tue, 20 Feb 2024 08:17:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKNl-00FhzI-18
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:17:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKNk-0004ti-R4
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:17:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZGGQfVkYUg+orEZO1zToxu813avQo0wE+NBVdghesgc=; b=Yu6WjgmpEq7sqEBVqsgySZNa27
	uwBxE4RB5G3YkPnU9WDQFDJ6uiJWDQoH3WStqVOoFSu4sQ0Vpyua9WZ/qsQn4bbENwcL7zgXFNW1u
	p2pkgeYYdoFZuBxY/1bhXiLwkLJJad/XT/BWAC1sbh05MYRb+zCdWdxZ9kapOZavO2hM3yR7G5f2P
	A0tCjIsyuyRwPiERgDSLuGzPBdk8FJfFHNb2mEDu70vgwPlEG8rrdXQ1m1wr6h96hsajGqpNbwcL/
	N04cA/f8B9miMLbaeRxyWp4JbCkbQrlUMuCHzrd3oKXzDXDlWIqHYCzlwHf0XQONkn9Q5OEY+vSwf
	sL/NB7EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKNL-0000000DUE7-06LP;
	Tue, 20 Feb 2024 07:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKNH-0000000DUCK-20bq
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:17:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKNG-0004nP-Ak; Tue, 20 Feb 2024 08:17:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKNF-001nb1-UL; Tue, 20 Feb 2024 08:17:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKNF-001dbK-2p;
	Tue, 20 Feb 2024 08:17:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219133059.3771473-1-a.fatoum@pengutronix.de>
References: <20240219133059.3771473-1-a.fatoum@pengutronix.de>
Message-Id: <170841342587.390507.7487402194067769996.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 08:17:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_231707_548191_938C4480 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ddr: fsl: fix possible use of uninitalized
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 14:30:59 +0100, Ahmad Fatoum wrote:
> step_assign_addresses_interleaved() contains a loop that either sets
> total_mem to a fixed value or keeps incrementing it.
> 
> If we exclusively run into the "keep incrementing it"-case, we would
> start with an uninitialized total_mem. Fix this by initializing it to 0.
> 
> 
> [...]

Applied, thanks!

[1/1] ddr: fsl: fix possible use of uninitalized variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d8515a0d3f7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



