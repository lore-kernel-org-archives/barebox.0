Delivery-date: Mon, 15 Dec 2025 10:29:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4tq-00Bh8R-17
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:29:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4to-0000Ms-H0
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:29:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YAuKfDfqLpBGpYIbJxeAQ8Sf+qVKCI5b7fLZ5B58VNc=; b=AyWW+uR9wo+tEMJ4gcAWXbvexO
	WlgIfc3THR9WnPPdqIfI8ZT3VRBVR5q9MNK5Pe+lvsZPwBskmYp7A+eMqvFjSqtnxaE03bC7Y92do
	P0Ray7PxFxEMcWWuHL+XWxbFz3uJuNGtUehD9QHqBkHrwH0LGv4zAUTlw9Bmpx4Dy09YlJneaqhAz
	0L26egmQQ0zLIgj8rsgCZx8mC4iWs0H6Fds9cIO3wGQrGPpAgmpj6dg4/stcMwlKnT9Mwf8nGx/PK
	YczQDK0HEYaY+AX3XItzWNwu7P3c2MSi1a4KR5MiU+6iYMpaFE1/HbHjSgjbv2rtDovHong7KLK/w
	NGPLe0WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4tG-00000003MdD-35G1;
	Mon, 15 Dec 2025 09:29:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4tD-00000003Mcp-3UnF
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:29:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4tC-0000IQ-53; Mon, 15 Dec 2025 10:29:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4tB-005kyM-38;
	Mon, 15 Dec 2025 10:29:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4tB-00000001Bkr-3o1v;
	Mon, 15 Dec 2025 10:29:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
Message-Id: <176579094990.283490.13216135233850821199.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:29:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_012911_925327_12728297 
X-CRM114-Status: UNSURE (   9.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] resource: add support for walking resource gaps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:50:02 +0100, Ahmad Fatoum wrote:
> We currently keep track of regions with the SDRAM by requesting a struct
> resource from the memory bank. We will make additional use of that to
> request memory handed out to EFI applications when barebox is being used
> as EFI loader.
> 
> For that purpose, we need an easy way to walk the requested memory
> region and especially the gaps between them as well as support for
> freeing partial regions.
> 
> [...]

Applied, thanks!

[1/6] resource: implement resource walker
      https://git.pengutronix.de/cgit/barebox/commit/?id=f28805f5ffac (link may not be stable)
[2/6] test: self: implement resource walker selftest
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e5e0f7b7933 (link may not be stable)
[3/6] commands: iomem: add support for printing gaps
      https://git.pengutronix.de/cgit/barebox/commit/?id=2585a9ab6a1c (link may not be stable)
[4/6] test: py: add test for valid JSON output from iomem/clk_dump
      https://git.pengutronix.de/cgit/barebox/commit/?id=d93bb7e619be (link may not be stable)
[5/6] memory: add helpers for iterating over memory regions
      https://git.pengutronix.de/cgit/barebox/commit/?id=7bdc0bf05142 (link may not be stable)
[6/6] resource: implement release_region_range
      https://git.pengutronix.de/cgit/barebox/commit/?id=804c79319dcd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



