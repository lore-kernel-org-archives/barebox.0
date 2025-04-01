Delivery-date: Tue, 01 Apr 2025 07:37:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUJC-006rrH-2u
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 07:37:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUJC-0002Qi-B6
	for lore@pengutronix.de; Tue, 01 Apr 2025 07:37:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLqqzPaGo011Scl3zdNObjBMGX/iiJ++xJl0zbc4BgQ=; b=DoIHT8OCS0PIYZsF2/NtiDKf1R
	2Z6ZZhDJQ9ekt3q27HJrXYmCk1dc8zUl91Ld6lZyoozMr72XDPQtX7ImVVCnTn14udGwzG+A2rDLF
	7OYFw+oL5AdcnRcr32UB4oqLuUJYOXqqnkpgIE9oQJoyoVFzmxfIHaiHxLHPkR1Ue+0h90hhpen/C
	3Bqz/atqo0FVfADGXN3ZYrzxCEx6TKyn1xKzWyK+joVVGCm+t0HdgxwBxtsln8DLe/8PLifu6WEOx
	dnKua3d6VQn8DPSUnPT7XES3Ml15b9BKja9oeWbjaYWoo4CTGUSq0SOk4dIasTFJbCFfKoDYitSky
	lKpPzY5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUIQ-000000020JP-3R0L;
	Tue, 01 Apr 2025 05:36:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUIM-000000020IK-4C3u
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 05:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUIL-0002KL-5H; Tue, 01 Apr 2025 07:36:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUIJ-002iI9-0m;
	Tue, 01 Apr 2025 07:36:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUIJ-00CoLe-0X;
	Tue, 01 Apr 2025 07:36:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
In-Reply-To: <20250331143343.3252321-1-robin@protonic.nl>
References: <20250331143343.3252321-1-robin@protonic.nl>
Message-Id: <174348577516.3053429.1918774994486876062.b4-ty@pengutronix.de>
Date: Tue, 01 Apr 2025 07:36:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_223619_043523_A8C09F99 
X-CRM114-Status: UNSURE (   6.21  )
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
Subject: Re: [PATCH v2] ARM: boards: protonic-imx6: Re-introduce generic
 boot target board string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 16:33:43 +0200, Robin van der Gracht wrote:
> This allows using a single bootable usb drive for multiple boards.
> 
> 

Applied, thanks!

[1/1] ARM: boards: protonic-imx6: Re-introduce generic boot target board string
      https://git.pengutronix.de/cgit/barebox/commit/?id=68c0cc7e0eec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



