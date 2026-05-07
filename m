Delivery-date: Thu, 07 May 2026 12:42:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwBP-001w1E-2S
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:42:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwBK-00030X-KR
	for lore@pengutronix.de; Thu, 07 May 2026 12:42:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V8skKaXpr0ZOfodZer/VHkJbq7vRMBfj583Akf2K4gI=; b=Nw7cnQ01hYdr6gdzv36+hZwIJc
	9yVPe7GdRpmjT0XZHbfTJzUmzHZfx5nLuceZCedh22HeVuugblE8u+kKqNg/9Gi3v24pRpw5dGvcf
	UVByns9SQa1su6Bxe2n3bQwwS/cHrYagXWqvJ210kbdnbkQvlTALQfpKBdFpuH/jvr758gE3MzmIj
	GImGysKdWdQlK7GweEfrTAkFl4YJsVvOw1D3KeUmFfjh5H2dPZ8Wr8wSFwWYSBYVw0PJ0PoT+tZj/
	bXtZmtqqwXGLPU5zYA2J1wl0rIBZHEcHb4dJehknCQQlsX5EEUtxbufw8iCKUCQN1qvQ5SKPiOJG0
	9bylsO3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwAh-00000003Weg-2fgd;
	Thu, 07 May 2026 10:41:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwAg-00000003WeS-2ntm
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=V8skKaXpr0ZOfodZer/VHkJbq7vRMBfj583Akf2K4gI=; b=d5LZ7SdV9d29m6hvLP+M90YVOo
	L1qLeGqOF9WPEKTAH2klbfaE82+Md5KF8OJ9UoDjDxwEIyJuCiXjHXNIF2dRn4FVv3bBycKKTGNMY
	L0nYSqPofH0hO2CCMg5kUBA3CsjsqvhfRd8wvB67uWwiIAVsxvVmdhmuArAuezD/TViZqSu4pWAgI
	eTG2TBCdQ21pxZLpO9SRGfxeELk4vi90qB1p3W4Yvqla9bHACxE1NAd2HMR4vR/aWAhG+8nWcPR3W
	L/oWen3SniA250Wim0g/CBoHl2vShCXt8rfpNEy19EJBl+ENJ2iif367dq7iZMvLnYnnUio3TNipN
	s/JmCqfQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwAc-00000003Etl-1c0g
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:41:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwAc-0002Z5-Aa; Thu, 07 May 2026 12:41:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwAb-000uDv-1L;
	Thu, 07 May 2026 12:41:29 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwAb-0000000Bjri-3LkN;
	Thu, 07 May 2026 12:41:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, corentin.guillevic@smile.fr
In-Reply-To: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
References: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
Message-Id: <177815048979.2797907.14450104162191326915.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:41:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_114130_887894_30CC7C17 
X-CRM114-Status: UNSURE (   6.33  )
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
Subject: Re: [PATCH] x86: efi: fix objcopy flags for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Apr 2026 10:07:11 +0200, corentin.guillevic@smile.fr wrote:
> Since the 2.46 version of binutils, a stricter target checking has been added
> (see [1]) meaning that the --target=efi-app-x86_64 option no longer works:
> a 'file format not recognized' error occurs.
> 
> Replace the --target option, which defines both the input and output targets,
> with --output-target.
> 
> [...]

Applied, thanks!

[1/1] x86: efi: fix objcopy flags for barebox.efi
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f9dfc52ff45 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



