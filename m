Delivery-date: Wed, 06 Aug 2025 08:34:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXje-007YIc-1m
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 08:34:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXje-0004m6-1P
	for lore@pengutronix.de; Wed, 06 Aug 2025 08:34:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MjXrmAtzG0ybzmYa0eyGaM6WUfx/fTy/x5iSMgigZAc=; b=rB+L3DXj+yxu/K/UVtO9R5V2d/
	2/nQX8xxn9th+K+5XHkuJPAPmP3NCeZw9ZQ/5HwhyeSWX/arCynRfOY6/SrAFfglQU36EaLaYeDF1
	q6jNA/E36GCGheMHXe8YPtM5nmZqlsu6k3JB6Ru6xz895hgaprRiIv2LD5JhogY9rNy3tdL6HUFMx
	5flPTzOBSL+5kckRO6WNsMw7s2Ud63zHnNlmJ6M/bB3CaUJkL0NIPFLVRP7F0tvWymhIDuhJxMww0
	gZJz3Bu2agqnrImOnf+uWa16ykuaKIRL0NYJ/x+nk8R2VNoPeMqH4v8/mSlbwIuHEI4kCTBEgaL0s
	ugGb570w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXjC-0000000EPqs-2wtD;
	Wed, 06 Aug 2025 06:34:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXhZ-0000000EPkg-25ya
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 06:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXhY-0004Yw-5K; Wed, 06 Aug 2025 08:32:40 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXhX-00CAG5-3A;
	Wed, 06 Aug 2025 08:32:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXhX-008L67-2y;
	Wed, 06 Aug 2025 08:32:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>
In-Reply-To: <20250805185344.2691524-1-a.fatoum@barebox.org>
References: <20250805185344.2691524-1-a.fatoum@barebox.org>
Message-Id: <175446195991.1987570.2730997157621231538.b4-ty@pengutronix.de>
Date: Wed, 06 Aug 2025 08:32:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_233241_542045_BADEEC29 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] tlv: drop assigned MAC addresses from fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 20:53:44 +0200, Ahmad Fatoum wrote:
> A TLV blob may contain more MAC addresses than barebox can assign for
> the network devices it knows about. In that case, barebox should assign
> as many MAC addresses as it can and fix up the remainder, so the OS can
> deal with it.
> 
> This got broken during refactoring in reply to upstreaming feedback:
> instead of calling string_to_ethaddr on a string, it was called on a
> 6-byte MAC address.
> 
> [...]

Applied, thanks!

[1/1] tlv: drop assigned MAC addresses from fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a961db3d91f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



