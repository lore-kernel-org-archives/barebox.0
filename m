Delivery-date: Mon, 26 Aug 2024 13:14:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXfn-00DZSZ-1d
	for lore@lore.pengutronix.de;
	Mon, 26 Aug 2024 13:14:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXfm-0005fb-UQ
	for lore@pengutronix.de; Mon, 26 Aug 2024 13:14:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvWdODyTRZsnKHfgfxgzbUkaCo60AkGYfyQgXK7a7A0=; b=qLVojmwBQz/Idgv73xMGENOzOR
	63eWUjBplg5IqFQU7NyQDIEayPAslAfv+FZAzWWnWMUvwpmfOYMJxOwLAEjh24pG4e/0ryCrJKAc3
	gUrkoZzpb8BGqCV/uWz3z+TtK+m6nvjxiyZt9fwqpAnHEqJylZpNhqmTpKvkKkblJ3FQU6INFnycS
	gVJdhYZntIoCZWYbc1t/6cXWgzDdk9VXinQDADXN1fDR5G/YYX94ZSf4f2LCf9EKQ1F96DuKQUyJL
	AgOHSphH9nfcYtAC8nuR2OWF043LxFMzproxnw+S1HDR2Ml8JVWBy4A4dHFem51UHfknfzsUHjaEt
	2y3fai8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXfM-0000000766s-19zC;
	Mon, 26 Aug 2024 11:13:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXfJ-0000000766P-0XNc
	for barebox@lists.infradead.org;
	Mon, 26 Aug 2024 11:13:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXfH-0005bU-DA; Mon, 26 Aug 2024 13:13:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXfG-003Awk-WF; Mon, 26 Aug 2024 13:13:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXfG-004bHM-33;
	Mon, 26 Aug 2024 13:13:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: spu@pengutronix.de
In-Reply-To: <20240824200406.2160679-1-a.fatoum@pengutronix.de>
References: <20240824200406.2160679-1-a.fatoum@pengutronix.de>
Message-Id: <172467081894.1096578.14575505833062355216.b4-ty@pengutronix.de>
Date: Mon, 26 Aug 2024 13:13:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_041341_200947_9EB42AF2 
X-CRM114-Status: UNSURE (   8.38  )
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
Subject: Re: [PATCH 1/2] fbconsole: support fonts wider than 16 pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 24 Aug 2024 22:04:05 +0200, Ahmad Fatoum wrote:
> We have a nested loop that iterates over all pixels in a font, but it
> only looks at the first 8 bits. This worked so far, because our biggest
> font was VGA8x16. In the follow-up commit, a 16x32 font will be added,
> so we need to prepare the code to consider the whole width of a font.
> 
> 

Applied, thanks!

[1/2] fbconsole: support fonts wider than 16 pixels
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f10cb1d1cff (link may not be stable)
[2/2] fonts: add TER16x32 font
      https://git.pengutronix.de/cgit/barebox/commit/?id=20fba924a13e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



