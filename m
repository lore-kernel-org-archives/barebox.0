Delivery-date: Fri, 31 Jan 2025 14:21:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqxD-006l5B-19
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 14:21:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqxC-0007MP-UX
	for lore@pengutronix.de; Fri, 31 Jan 2025 14:21:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L9NbBweso6EXtlHtT0vpkKJ2caRGj9ywbO/kT85xS14=; b=c90iquaB8IX/izeNPwqLyJSa8I
	4l3OHhtnmOhhBvZ5zuz43N464+/EE2tECdcOwRrIRIVPzo/JeL7pgN44o5Y7t+6MMXT3tJDVIk3Xu
	y/Tvonw2+aafUD3FibpNITrn0f6CGtcWQROP/eSr+oq/8sq0aUbDC4whBvbu0k1MRIVEtzbrTbMx8
	Fvp+DNU5NXEhoaleeairo9sovN+Vy+9KNqFXe0IPH9OHYNT6avEVqaWopIdL2PjLyXKrjB0LAaNxD
	7xekIRLLNkyWT2Z2aAwjhG5h9m9zlxarnVP858MN7KpxIVInX+56D5JM7IyvNtg/F6iijuRcSDjc1
	mx9QnJzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqwo-0000000Aft1-2t2R;
	Fri, 31 Jan 2025 13:20:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqwl-0000000AfsN-2Oo9
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 13:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqwc-0007Dy-E6; Fri, 31 Jan 2025 14:20:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqwc-002o02-0l;
	Fri, 31 Jan 2025 14:20:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqwc-00HYg9-0Y;
	Fri, 31 Jan 2025 14:20:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250129153329.3455632-1-s.hauer@pengutronix.de>
References: <20250129153329.3455632-1-s.hauer@pengutronix.de>
Message-Id: <173832962617.4184870.9082969484793227983.b4-ty@pengutronix.de>
Date: Fri, 31 Jan 2025 14:20:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_052035_616388_2D6FF584 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: am625: apply RTC i2327 erratum fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Jan 2025 16:33:29 +0100, Sascha Hauer wrote:
> The AM625 RTC has an erratum which requires an early fixup to make the
> RTC work under Linux. Apply the fixup. The code is based on the
> corresponding U-Boot code.
> 
> 

Applied, thanks!

[1/1] ARM: k3: am625: apply RTC i2327 erratum fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=f82fb6e17516 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



