Delivery-date: Wed, 13 May 2026 16:08:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAGU-001HUP-0Q
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 16:08:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAGP-0004hm-Sx
	for lore@pengutronix.de; Wed, 13 May 2026 16:08:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6YeN2trsT5VBLRKr0aTSZd69yACmLaCBytvmfpPpV70=; b=NICuM3mmuG18un7wW83ciD2Iyu
	kBjyWMq8JTPDeazsp0ANy4n3umkEctXa8BggjB9ImnThJe7YqiyKCo1+Wh5RrcVJ4CWKqAU+oMj9O
	Ba2+MOZQ2KiFpdY0pWpghmTD5XV+l3KIY+7QlHaseFlqYmhgv1xh2RS2jD0FMs5ft2Ei31vZEcHKu
	jF75ZfhgCaKVNMQ+IUtiZ+orZfX7SWlqp+UndkpqnrKvYn4nj9QtX1UhZnL9nWMsRPsEcNaz0Z5QZ
	zDOj3s3vZzdkiRrtnr+ZbfwhC7G7WiRjGduUUKPjwF02TmM/Tm9CiUDvLXiBnbvghkv9wMOY14jEK
	NipQYl+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAG5-00000002sYR-0Zxm;
	Wed, 13 May 2026 14:08:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAG3-00000002sY4-1p7H
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 14:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6YeN2trsT5VBLRKr0aTSZd69yACmLaCBytvmfpPpV70=; b=dGshmCOyqEKac6jTxsuo+wB2ZG
	4pVYf9lqVN4xUInTNd33sX/IZg1ZgP9VYn7g6nrnUhK8NFAjQbsKwFozyXdYjwX//Fc7Xe+nlZ554
	rLSUtB2sZ5YSAguIGkLIVxq5FHZKWVhM1xg+0zTt2PJUR5iL7tz+JgvmyZoV+Yc8hTdr6Bnr4ahhq
	NwYBIhmbEx2r2DbLdYATJtuddD3LqXmx1+ezlISHt41ScXxvhjkQUNcC/dBDGAT9ejlElBUA0fYDX
	iu8L1G7Ns0nqTW8pqvsL+yc+k6isV6pK4DDxMSNVHo5/AJz/70rMDMzXQ3FAoRvqcn83N0SVHpssF
	vNQd69uQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAG0-000000007b2-0qeN
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 14:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFz-0004Wa-Ra; Wed, 13 May 2026 16:08:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFz-000bo5-2b;
	Wed, 13 May 2026 16:08:15 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAFz-00000001Dbn-37Ic;
	Wed, 13 May 2026 16:08:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260513-socfpga-axe5-phy-reset-v1-1-170199f652c5@pengutronix.de>
References: <20260513-socfpga-axe5-phy-reset-v1-1-170199f652c5@pengutronix.de>
Message-Id: <177868129573.290605.10890502587416734143.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 16:08:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150816_662070_733BADE7 
X-CRM114-Status: UNSURE (   7.36  )
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
Subject: Re: [PATCH] arm: socfpga: axe5-eagle: move PHY reset to board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 14:23:14 +0200, Michael Tretter wrote:
> The AXE5 Eagle low level code configures the Ethernet pinmux and PHY
> reset. This code is executed in EL3 and in EL1, and the PHY reset is
> toggled and waited for twice.
> 
> There is no reason to perform the pinmux and reset in the low level
> code, but it actually belongs into the board code.
> 
> [...]

Applied, thanks!

[1/1] arm: socfpga: axe5-eagle: move PHY reset to board code
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee2d3715da01 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



