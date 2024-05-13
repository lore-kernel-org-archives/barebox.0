Delivery-date: Mon, 13 May 2024 11:26:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6RxE-00CMo0-0J
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:26:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6RxC-0007UN-Sj
	for lore@pengutronix.de; Mon, 13 May 2024 11:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WPq/sS+qlJ5wo+u0FOLW+PhRUH5Mzi2esv7R3kEA5TA=; b=kFNonfXUoHj+o7IKZMTCG2IZEA
	+JSTsgg7fFgNiCGUCZcXyrIhGrqxTu4TaIoEgmiHy34+GJr9HlZ4HF+bX0pif2VyQ0LuMpbXIm/Kd
	IkFe+LycsEIeRvHZCo5rZRB9kwWmWKD2ozPzHfOzk26oecmu2YPlA0LamDSNtEiGHJgBVdlzC2Ew3
	395BqYrh4DNcyk25uTqFlYrep11Cos4/5AUNOMnDByi6ZKzYQyz/ZNuYWfZrk+U9aVtwMZSQpdrQP
	hesG9PKnHflw3AOPjNyLfm4Xlky5qNp5sgWFObKH4RZqG+KyHcb2K94ZwC6NjR8EI79t1jgCoP7Mm
	y6ENRKtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6RwV-0000000CO0e-1rd7;
	Mon, 13 May 2024 09:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6RwR-0000000CNyd-3RwL
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:25:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6RwK-0007Gv-41; Mon, 13 May 2024 11:25:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6RwJ-0018te-Nv; Mon, 13 May 2024 11:25:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6RwJ-00EvM9-2A;
	Mon, 13 May 2024 11:25:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240508121445.312551-1-s.hauer@pengutronix.de>
References: <20240508121445.312551-1-s.hauer@pengutronix.de>
Message-Id: <171559234766.3557056.7713379840515916521.b4-ty@pengutronix.de>
Date: Mon, 13 May 2024 11:25:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_022555_890413_744013A2 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: imx-ocotp-ele: fix MAC2 layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 May 2024 14:14:45 +0200, Sascha Hauer wrote:
> The MAC address layout for MAC address 2 implemented in the
> imx-ocotp-ele driver matches the one described in the Security Reference
> manual. This contradicts the description in the fusemap though.
> According to the fusemap the layout for MAC2 is the same as for MAC1.
> It's not clear which one is correct, but at least the TQMA93 board has
> MAC2 programmed matching the fusemap, so change the layout accordingly.
> 
> [...]

Applied, thanks!

[1/1] nvmem: imx-ocotp-ele: fix MAC2 layout
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5ad67ce66ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



