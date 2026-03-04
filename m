Delivery-date: Wed, 04 Mar 2026 08:49:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgyu-007uMW-1a
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:49:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgyu-00061p-RE
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:49:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kL86K+2I3GwmpYmwTjJZbFRjzK8CxcTqHtREkn4lBfo=; b=JjkOnkGjhrLF6bu6w1pq+7l9s/
	skxHJJ+nHI6HJg+NcrPpUb3bXaGmf9V3QRwkV23RfSI4BzgEYhBvwfMi1TaWiY6Rg52/7OUnDRzCS
	ld/oqvNnw+IZZwLw72CGzB5IfdYypcI7/nadBIPXLZqK1i64vjQ3sgTYw11LsT0uXRV4Up/AANXXJ
	dnOb9XwZJS1eUZmz1K6ypmZ8Zu1LE+Qos2Qf8K6gXFiN6ZQPWP0rId5AjMI8iBFHP6OwUHfi2N9/S
	rdb0RcNdYWwuCHljGebsoS5dwyj2TSKDqoNT5K1SyigcSVQBJ5uQJY8rFP1GZm/FjQaaSLgtGB7zw
	NqFrbAPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyZ-0000000Ge45-1csd;
	Wed, 04 Mar 2026 07:48:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyY-0000000Ge3h-2KEb
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=kL86K+2I3GwmpYmwTjJZbFRjzK8CxcTqHtREkn4lBfo=; b=EEEvp/s19UBrtKMrRCerSpqHUS
	LEWFa+1/QI4UyUXugzKH+pPOjbOKFtSZ+vjwH5VZgSJJqVYL0eu05ANL+YhfNOvWglAKSLwGLJt8P
	7zubiOkeTgtgmqo/aebdyTFk4O+XHsdibOgLov8CqqfgYv0Csjg+23hGxC9PdkS8FgLAYoE09wszl
	h3mH9znpNUqN7DDrEb06QqBVXoyQupRz0S7gMBe1nGQYdOqfiz3mpfmyvm6asLcCTpHoCng7NF+31
	vsmAt7erPl0BlnFzHyrWAQjHuUw2jcb8ej+Ki6Id1yeHEEI6HHmh9gJUc8pQ/lZjwJv1Rb5iVUtEH
	LqA/Jn1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyV-000000042WZ-2F5e
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:48:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyV-0005uV-6M; Wed, 04 Mar 2026 08:48:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyT-003g4G-29;
	Wed, 04 Mar 2026 08:48:55 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyU-0000000GLuK-40ek;
	Wed, 04 Mar 2026 08:48:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260302172630.2713540-1-s.hauer@pengutronix.de>
References: <20260302172630.2713540-1-s.hauer@pengutronix.de>
Message-Id: <177261053495.3897308.6153512092977413139.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:48:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_074855_695352_A3E6B7BA 
X-CRM114-Status: UNSURE (   7.83  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: r8169: drain RX descriptor ring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Mar 2026 18:26:30 +0100, Sascha Hauer wrote:
> When not busy waiting for incoming packets we poll for new packets only
> every 10ms. Each time only a single frame is fetched from the hardware.
> On a network with many broadcast traffic there might be more than
> 100 packets/s incoming, which will sooner or later fill up our RX descriptor
> ring. Unfortunately the Realtek Hardware has no way to gracefully handle
> a RX queue overflow. Fix this by fetching multiple packets from the
> hardware in each receive callback.
> 
> [...]

Applied, thanks!

[1/1] net: r8169: drain RX descriptor ring
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba8dab21987b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



