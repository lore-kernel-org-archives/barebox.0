Delivery-date: Mon, 25 Nov 2024 09:37:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUaq-00083i-1J
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:37:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUaq-0002Jk-Da
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:37:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZdIoyZDEfwBip5oTSK1jcftWreU3Sxk7Gg0yoaOupeY=; b=RlsnLyK8iwyjF6tEpNZph6CXu6
	KgB3PUkZ9Tem5en4/29rblzkbEwSR7aI++XfMWpHS4SezOg47e2UrZzwnOkosnh6h9oSqHP2lvb4q
	9tePS288bMWFyF0eZI2kt8jwATpx1H1jDgrAodLKpRd/MHfNZ2grGeKjdpEei9WcZN74dUEjOUIju
	y4PTCGaIXPB3H1fB08fe+8wjrfIl3wu0PqHrEvpMp2NyvyoaB652zTdrwIQ33Ia8iRmxFs/3ptCp8
	lK2HMic+wRubQKcVC32mNc/AMqfOt66NDTpC1D0E3oeZNgDtTDjjh2EZPIHceQ1sTml7IgVOeFn07
	QZHa7Jzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUaQ-00000007P94-1Un8;
	Mon, 25 Nov 2024 08:36:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUPd-00000007NHY-0lqK
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:25:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPb-0000xf-QH; Mon, 25 Nov 2024 09:25:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPa-000323-2b;
	Mon, 25 Nov 2024 09:25:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPb-000hYY-1d;
	Mon, 25 Nov 2024 09:25:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ukleinek@kernel.org
In-Reply-To: <20241120144912.4053300-1-a.fatoum@pengutronix.de>
References: <20241120144912.4053300-1-a.fatoum@pengutronix.de>
Message-Id: <173252313950.167421.5353914699232208750.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:25:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_002541_223842_92359E49 
X-CRM114-Status: UNSURE (   9.73  )
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
Subject: Re: [PATCH] of: fixup reset source device path into DT if known
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Nov 2024 15:49:12 +0100, Ahmad Fatoum wrote:
> The existing code has several shortcomings:
> 
>   - reset_source_get_device returns a static variable that's never set
>     due to a separate bug, so this could never have worked as-is.
> 
>   - A phandle to the barebox internal device tree is not a useful
>     information to fix up into the kernel device tree.
> 
> [...]

Applied, thanks!

[1/1] of: fixup reset source device path into DT if known
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca7d314cb07f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



