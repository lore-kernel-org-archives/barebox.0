Delivery-date: Wed, 15 Apr 2026 08:26:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCthr-00CKB8-1D
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:26:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCthp-0005CL-Cz
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zoTftFQAY+YjTcL9D4Eip0SnciH0Dci0Y8paaiMKT7o=; b=OH7oWPcuHOfVEnO560R1N8cvrL
	cp1BdgnHjonPGdJUXJStUU97HLTW4DmVEM6ESRNPnRdd5cv9rIPUFBA7dpBjZO/kNqp0NKl95K1xH
	wsAp/crOgrQlMimR50CkkUEPT3Mm1Bjo24IPghdvtyDWhefBx9tGtQWY3UsZ9S59XJ1dGGG9oxj+C
	GRgh0Y3typgigMoaOAKhtx6e0eNyv5Z0b37fRsFSCk3ma76pigjr1XMl+OXpsFxK4IfHesFbvi/5e
	qz4X7OBmivM2nbT2svCT6/QkyEguHDNPKZFQGP+1eUZ8xFc/113HPScFSMP9gP5MLZhc4TXUxr/vF
	glLJxQOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCthU-00000000eAG-3XcD;
	Wed, 15 Apr 2026 06:26:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCthR-00000000e9x-0FPC
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:26:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCthP-0004zd-Gb; Wed, 15 Apr 2026 08:26:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCthP-005SsH-11;
	Wed, 15 Apr 2026 08:26:07 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCthP-0000000DpZD-14pK;
	Wed, 15 Apr 2026 08:26:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Chali Anis <chalianis1@gmail.com>
In-Reply-To: <20260414150010.761563-1-a.fatoum@pengutronix.de>
References: <20260414150010.761563-1-a.fatoum@pengutronix.de>
Message-Id: <177623436724.3296399.717586581063357979.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:26:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_232609_101651_D3D9E4B3 
X-CRM114-Status: UNSURE (   8.56  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: gracefully handle empty dummy DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Apr 2026 16:57:33 +0200, Ahmad Fatoum wrote:
> We started registering an empty dummy DT on platforms with barebox as
> EFI payload to allow a multi-platform build where some enabled SoCs
> expect a DT to be available.
> 
> This fixes some problems, but causes others, because we have places in
> the code that assume there is always a compatible property when there is
> a device tree.
> 
> [...]

Applied, thanks!

[1/1] of: gracefully handle empty dummy DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=90ec6d81c1d1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



