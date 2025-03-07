Delivery-date: Fri, 07 Mar 2025 09:05:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSi6-00AvaF-03
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSi4-0006US-T6
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:05:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iEy5b8j528CH1+G5CrRtzyd4BrCbCkqNNfZYbTvCD3s=; b=i+evRsGN+zJ5iZpcOgyTT1RCf7
	HMw2933cMY3ymKufoGXrQ+voCsIp6BUkxqeFCxEMKZ/hI/QxLhG8xkCEe1FaEh47ZHbMJq3UH+kkt
	GJYtZ5AsyXY5Yh3Br6FG1oGFQC1HiAywnThraujVhMzF+ytz2s/16zkau8tor23gFgbcz+y15RjgM
	SWP7a/G0+W7JbcWwJHo/xrM/CMBR8s8p2xbEtTICkSUIxtWNWzTpxPheodQiTbxUihBpQDEmbmvav
	EmkPTDAm4omaJ0uvhzShDyzwNuMUf6w5Sk6uiqeW1IoyBgovA0WI+aAXbrh3CK6tvTjmsW+l3AtQ5
	zAksaHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqShd-0000000DV1f-40JK;
	Fri, 07 Mar 2025 08:05:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSfw-0000000DUo2-3p5a
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:03:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSfv-0006IQ-Ld; Fri, 07 Mar 2025 09:03:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSfv-004RxD-14;
	Fri, 07 Mar 2025 09:03:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSfv-0045Z0-0r;
	Fri, 07 Mar 2025 09:03:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250305074835.34782-1-eagle.alexander923@gmail.com>
References: <20250305074835.34782-1-eagle.alexander923@gmail.com>
Message-Id: <174133459926.974669.5364324896110381958.b4-ty@pengutronix.de>
Date: Fri, 07 Mar 2025 09:03:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_000320_957367_C9B13896 
X-CRM114-Status: UNSURE (   8.07  )
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
Subject: Re: [PATCH] at91: sama5d2: Do not use the contents of BSC_CR if
 the DISABLE_BSCR bit is set in the fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Mar 2025 10:48:35 +0300, Alexander Shiyan wrote:
> The DISABLE_BSCR bit in Fuse means "Does not read BSC_CR content,
> so the Boot settings are those from the Fuse".
> Let's ignore BSC_CR it this case.
> 
> 

Applied, thanks!

[1/1] at91: sama5d2: Do not use the contents of BSC_CR if the DISABLE_BSCR bit is set in the fuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d0c9343b7f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



