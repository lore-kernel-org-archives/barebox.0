Delivery-date: Mon, 25 Mar 2024 10:56:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh3j-003gM0-1Z
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 10:56:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh3i-0000lw-CV
	for lore@pengutronix.de; Mon, 25 Mar 2024 10:56:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QKD7gxRzWpEFsXLrCFuh1ouGvQJMkWxkEOgudrrRBeA=; b=cezGCORfkKtbJa8miOymulUxpW
	ir5xfrvHY+QpNU+hz2lMXK97Wx9i6DO4z9YGPrUUQvx/x+/lpG9QvrrCcF78XNR4tLX/wjJUfyZEu
	wxjhtndWgXJT068eTeBhQJcohhirphw4G5aP8jS5d/P6ye3emxNlRrHGl3UVG7Twqgv/vzANjr5Tv
	dGuNEQqW2tDqrG13MkIoSfNsdmyE3pzefX/JOEqfKcIalvRUy710gE0tbNCFqSH5tjd3PHIf+LLqw
	pHYzlEiMGY93gk24wSzMcljrx2eavpxUEkc5vBDFFgo6Ho62Ke2okt3Ott28AyYLxgdhi1BNU5pA8
	tsOTe1Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh3G-0000000GZx7-11DD;
	Mon, 25 Mar 2024 09:55:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh3C-0000000GZvX-0GRS
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 09:55:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh38-0000g7-38; Mon, 25 Mar 2024 10:55:26 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh37-008ORm-FC; Mon, 25 Mar 2024 10:55:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh37-00CLyk-1I;
	Mon, 25 Mar 2024 10:55:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240321055312.1664676-1-antonynpavlov@gmail.com>
References: <20240321055312.1664676-1-antonynpavlov@gmail.com>
Message-Id: <171136052539.2944385.7756857187728453033.b4-ty@pengutronix.de>
Date: Mon, 25 Mar 2024 10:55:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_025530_138886_DEA88550 
X-CRM114-Status: UNSURE (   5.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: fix DEEP_PROBE_UNKNOWN misspelling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Mar 2024 08:53:12 +0300, Antony Pavlov wrote:
> 


Applied, thanks!

[1/1] common: deep-probe: fix DEEP_PROBE_UNKNOWN misspelling
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb4a469af628 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



