Delivery-date: Thu, 28 May 2026 12:57:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYQH-004iCg-1D
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 12:57:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYQG-00025O-OG
	for lore@pengutronix.de; Thu, 28 May 2026 12:57:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g5ws2t2Oh2zup6JqFxJ/Q5bnyd9eQyi47PdMChkmS3I=; b=GRh0m6VKy8FSRJnJZxGEfN7lok
	6b4a8L0aC37J9nZWFM1EAHWIfb1vNLocGEe69NoGpfBW/fi10Z0IuSt6iaoMi+grozW3DC0Sk8MwA
	3h2LWr+tIxGJ99+sJDOmqL4bAzXSTuLzsFOVJosCyfLrtZMWQNPamPOr/dgyrKX5PMKP86kWI1jbO
	l2tk3e6dbN6R+EuqnQrB4y0iVOAj06LuqSwelXy7mIIbGVuchjHSa7ef05h1R0ZT9q2eQ8MDG/W07
	ZQg07iFqZEjTWh5ABO2xwaQGva8vqnv9J2Ph4ZUoTulNga6j7A/KXskqe+Lb8HV94RPtuQfhWAQq+
	PrvySFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYP7-00000005cOA-0Sby;
	Thu, 28 May 2026 10:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYP3-00000005cN2-0S9s
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 10:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYP0-0001sZ-Ts; Thu, 28 May 2026 12:55:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYP0-002G6z-0z;
	Thu, 28 May 2026 12:55:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSYP0-00000009HYs-3MU5;
	Thu, 28 May 2026 12:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260527084939.3113225-1-a.fatoum@pengutronix.de>
References: <20260527084939.3113225-1-a.fatoum@pengutronix.de>
Message-Id: <177996575078.2212439.13334560727060360642.b4-ty@pengutronix.de>
Date: Thu, 28 May 2026 12:55:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_035553_159598_129D0944 
X-CRM114-Status: UNSURE (   5.95  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: sdhci: suppress register dump on expected
 time out
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 May 2026 10:49:38 +0200, Ahmad Fatoum wrote:
> A time out is the usual way a non-existent SD-Card is detected if there
> is no card detect.
> 
> Emitting a whole register dump in that case is just confusing, so
> suppress register dumps on timeout during card probe.
> 
> 
> [...]

Applied, thanks!

[1/1] mci: sdhci: suppress register dump on expected time out
      https://git.pengutronix.de/cgit/barebox/commit/?id=f45ae9495f7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



