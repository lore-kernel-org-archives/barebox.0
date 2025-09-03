Delivery-date: Wed, 03 Sep 2025 08:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv1-007Y9x-03
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utguz-0000Pg-Sn
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mb2BGXoNdBzHv0RKfaQMYZmLPUIMLDhV0UOsfmYALYc=; b=lhLUWYOSpjrLZTcgXD7UZv7rBC
	yVyuW1DTqkB32BKUPOvWLUVT9KFxBUM571VfTcuupeEEeKKKf2xnvemll++fIE9KFGdFMSfrO9Ss6
	21ssXxoT0wgpPIHw5AVJ9VbIOlNe/ZkOh2p3UEoliCmT0tTiazxOJiU+hCkFAE/rTO/ENqWg+7k51
	/DGypOgsmMIWTq1wJIv4kJBzbj6T7hRQ1KaELl4ra0SbB9kw2ZKP2IGRtF96snFyFqwZJjyRgbT1m
	TvvzpsFDtYvXHihoPLy6ex58Jh1pDWuc2rAgxRejvQhhtecEL31E9K5/T2Le3D5DGhDvv4IkUvcyg
	97t1h9Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgub-00000004bWf-28Ka;
	Wed, 03 Sep 2025 06:24:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgsK-00000004aTF-47me
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:21:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgsJ-000818-QX; Wed, 03 Sep 2025 08:21:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgsJ-003VyW-1r;
	Wed, 03 Sep 2025 08:21:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgsJ-00000009kwW-2ASr;
	Wed, 03 Sep 2025 08:21:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>
In-Reply-To: <20250831064551.30611-1-akurz@blala.de>
References: <20250831064551.30611-1-akurz@blala.de>
Message-Id: <175688050351.2325331.14199190082035445086.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:21:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_232145_022258_B067CEC0 
X-CRM114-Status: UNSURE (   8.11  )
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
Subject: Re: [PATCH] ARM: boards: kindle mx50: extend vendor ATAGs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 31 Aug 2025 06:45:51 +0000, Alexander Kurz wrote:
> Board and device specific details are passed to the factory-shipped
> kernel as ATAG, e.g. board type and device serial number.
> Extend the list of vendor specific ATAGs with wifi and bootmode
> parameters to improve compatibility with the factory shipped
> installation, e.g. to get the wifi MAC address correctly set.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: kindle mx50: extend vendor ATAGs
      https://git.pengutronix.de/cgit/barebox/commit/?id=4db0a78dbac1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



