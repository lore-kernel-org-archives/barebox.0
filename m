Delivery-date: Mon, 04 Nov 2024 13:07:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vry-004jXY-0t
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 13:07:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vry-00025a-W3
	for lore@pengutronix.de; Mon, 04 Nov 2024 13:07:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PA8Kmd2KwWRljc1XoxR+G0/z+qSbSLS37CBQLfANdEA=; b=RxN6zAo4XLlh2+M9qVY4aZIueH
	9C7S93G8xPAfZ+Tv2ldE00lYiHEn6WntSj4Z6gnBlPp/nCocIdF8U72RGPHM1CygzZP8JM4t1o7qG
	lX+QitfjpCWZ23ZK+v1DFWnZheX3/gCO9n/ozgOOLaLTgWhbauVD1p0bfyT9+SZuqYDTP18SYYE+F
	a4sYKMAbY4A2ZwTIabhiEsWaGm66vVfb2g8KzRLKWSn35b2THS5OKUNqRzLCTjQjwM2Baoi0dV2vf
	aKFRuvyarBsGZ5rpUrxThX9zEYI4NW9IYdtkG+l7/KIMs+RgX9SiAvmJDI4e5xdfyP9uViiGkUdia
	SRyYbIZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vrS-0000000Ddp7-33o0;
	Mon, 04 Nov 2024 12:07:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vfG-0000000Dbs5-2xqg
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:54:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vfE-0008Qg-JN; Mon, 04 Nov 2024 12:54:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vfE-001yPO-0v;
	Mon, 04 Nov 2024 12:54:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vfE-00Gb8F-0l;
	Mon, 04 Nov 2024 12:54:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
References: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
Message-Id: <173072127223.3955948.9765428077303380609.b4-ty@pengutronix.de>
Date: Mon, 04 Nov 2024 12:54:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_035434_779623_85532060 
X-CRM114-Status: UNSURE (   7.70  )
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
Subject: Re: [PATCH v2] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 02 Nov 2024 15:43:42 +0100, Johannes Schneider wrote:
> Extend the autoboot_abort_key handling to alow custom
> abort keys.
> 
> Allowed values to set in the env/nv/autoboot_abort_key
> are any single ascii charater corresponding to the desired keyboard
> key, or the strings 'any' or 'ctrl-c'
> 
> [...]

Applied, thanks!

[1/1] common: add custom autoboot_abort_key
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b559bd63205 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



