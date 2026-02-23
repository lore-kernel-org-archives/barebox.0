Delivery-date: Mon, 23 Feb 2026 10:50:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSaO-004mpM-2x
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:50:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSaP-0004t2-9p
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zNWFKEuSKueJO/CcR9KL0o01RRPX0/Wn0tdUa1ACZck=; b=2g0Yju96+O/mXZtdiGLa8W5z4J
	Jw811DBHHeWulaY/Pv3c9yF9h2L+SqN+GyHZmMXSdC1hq5/zuL5kU9KHypo6NMNNerJMNSxNK8zef
	OChrWshcD/DTQxkS+yw3gAkoeHvfmIQdL6u4Iu1M6XO0Q6CDzk2sDcLG9G54BUiAOUiDt2kwYjpi3
	pL/dgTmK5jFz9gOkoor2x3s7YbMPJ86Wci6KjPFyXuzY7C7GW5Dxsoo+5jb7Nfk5wDhyMpC+EkeA6
	/gpxHl3+avfoxFtOshJK7gE//qnpeycO5Rry9BDRGK3YIWqwqWYR/xLthNR7gcoNvrtCx0uWjM9Dq
	25Hscmsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSa4-0000000HZqG-08a9;
	Mon, 23 Feb 2026 09:50:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSa1-0000000HZpH-1ObW
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:50:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZz-0004jl-K4; Mon, 23 Feb 2026 10:50:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZy-002CqG-0G;
	Mon, 23 Feb 2026 10:50:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZz-00000000pkm-1Z5P;
	Mon, 23 Feb 2026 10:50:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260215184413.2750217-1-a.fatoum@pengutronix.de>
References: <20260215184413.2750217-1-a.fatoum@pengutronix.de>
Message-Id: <177184021537.198843.2567980001238877839.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:50:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_015017_378590_90411C94 
X-CRM114-Status: UNSURE (   5.34  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gitignore: ignore /vmbarebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Feb 2026 19:44:12 +0100, Ahmad Fatoum wrote:
> vmbarebox is the stripped barebox proper ELF that will be linked against
> PBL. Add it to .gitignore like the rest of the barebox images.
> 
> 

Applied, thanks!

[1/1] gitignore: ignore /vmbarebox
      https://git.pengutronix.de/cgit/barebox/commit/?id=a855c5f7016e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



