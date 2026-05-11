Delivery-date: Mon, 11 May 2026 09:17:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKsz-000Tif-1G
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:17:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKsx-0003uK-JG
	for lore@pengutronix.de; Mon, 11 May 2026 09:17:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H6uErDa3wwcp7Brb9NcxJ6WHvINuxUqOVcsSfMqYvSY=; b=EfwumIMnW3P9WSpI4FSknaJbk3
	lAk9BZoQHO0Chis2D5epxhF5r394oAUL5KR4SEZAxZuLLlwLagezfycfxSy9smbhgcpdQzx4E5KkO
	+uFtM7oKRYouBajCI/iuqXp4hm4ZBanWGh78TUv4Iutn9QawnsD5zu6T2daI35yMsrYywJg3/Wmv3
	F+nvXq6hrDXVLYXyONpCWaR8BVaeW0SLgLU2kpNdJlYQCn4wJrKPDdBwfAmn07k/df1xkZWLWOyOz
	LiiijfcpBHVOoqTHw32mMj9MQbYpN/CFT0yeyFdVKJq6U9M40s19LVBgyjBXC7aRyAnhr3DkF3KKt
	CnW/ImaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKrW-0000000CZfv-2Skx;
	Mon, 11 May 2026 07:15:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKrT-0000000CZfF-3HUX
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:15:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKrS-0003PX-9k; Mon, 11 May 2026 09:15:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKrR-000DH6-19;
	Mon, 11 May 2026 09:15:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKrS-0000000DEi4-08ud;
	Mon, 11 May 2026 09:15:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260507114919.1366520-1-a.fatoum@barebox.org>
References: <20260507114919.1366520-1-a.fatoum@barebox.org>
Message-Id: <177848373003.3154785.16125083638500333558.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:15:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_001531_828503_0A80C3D3 
X-CRM114-Status: UNSURE (   6.78  )
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
Subject: Re: [PATCH] param: return error when assigning empty string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 May 2026 13:49:18 +0200, Ahmad Fatoum wrote:
> The fallback path that allows specifying enum values by index returns an
> error if *endp != '\0' to account for invalid values like my.enum.param=1z.
> 
> This fails to account for the corner case of the empty string which
> would also have *endp == '\0; with idx being the default 0.
> 
> Check for that explicitly and return an error.
> 
> [...]

Applied, thanks!

[1/1] param: return error when assigning empty string
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb0edacd3624 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



