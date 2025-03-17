Delivery-date: Mon, 17 Mar 2025 11:59:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8BX-000aFu-2a
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 11:59:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8BW-00032s-Lx
	for lore@pengutronix.de; Mon, 17 Mar 2025 11:59:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dHo9NkqnhwJf6fqAwly0+2v8cs2ZvhcWsXPbyqHgSXE=; b=IHuZL5mfUqbIIA7BABL6MaW9Ai
	GgfPoN69gO1EExShBBvFO75d5WlJBJAsLghLXmJrtZw7ogXjz34WwCS1r8x2a10QooyO3dzDShrc6
	LGB2tv1kpHx1oo/j12SB4Nm8b3zgphXI1nk7ppZJT3f5ZYF/ev+g8ShDg7vpQW2CWdm5pwJLBj66L
	EfuozZD3HEPHWym644UdyS4SNxV1ICzl4drelBHLSFT4g9aGxQK2Su6gbdEN/orlng6BmSC1G0dTw
	TiI3QqeeugoJlW1McgSywr1xpkSS0od9Q6lCb+AbCmYzRmRExv8FF4r5edXKmTFBV/pKlX7waXyic
	nmBJoA3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8B5-00000002HbT-2E9o;
	Mon, 17 Mar 2025 10:58:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu86i-00000002Ga4-2Wd9
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 10:54:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu86h-0001ti-7j; Mon, 17 Mar 2025 11:54:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu86g-000ENj-22;
	Mon, 17 Mar 2025 11:54:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu86g-005b9A-3C;
	Mon, 17 Mar 2025 11:54:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313064210.74011-1-a.fatoum@pengutronix.de>
References: <20250313064210.74011-1-a.fatoum@pengutronix.de>
Message-Id: <174220884698.1334182.4751128920348280614.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 11:54:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_035408_645955_E9FB0B0B 
X-CRM114-Status: UNSURE (   7.33  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] vsprintf: make basprintf an alias of xasprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 07:42:09 +0100, Ahmad Fatoum wrote:
> Less than 12% of all our basprintf callsites actually bother to check
> for allocation failure. It's highly unlikely that barebox will be able
> to function when the heap is so full that the usually small basprintf
> requests fail.
> 
> Therefore, make basprintf an alias for xasprintf, so barebox panics on
> OOM instead of possibly triggering undefined behavior.
> 
> [...]

Applied, thanks!

[1/2] vsprintf: make basprintf an alias of xasprintf
      https://git.pengutronix.de/cgit/barebox/commit/?id=12528e292f04 (link may not be stable)
[2/2] treewide: remove NULL checks for revised basprintf
      https://git.pengutronix.de/cgit/barebox/commit/?id=c574a452bd49 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



