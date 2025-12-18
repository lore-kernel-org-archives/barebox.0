Delivery-date: Thu, 18 Dec 2025 14:21:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWDwx-00CqG2-0f
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 14:21:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWDww-0005WN-Mj
	for lore@pengutronix.de; Thu, 18 Dec 2025 14:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DHmAV0JOfP4yV1nxY+ujVTXWVgKNV9ShCk/PsBMxZPo=; b=P3BBqKLU2cGL3ePVisjSk/1D92
	1GrV+1NhfbvWzTrq0lTCImXwgVOZnTW1+AyH8cGc/VWKfoUlDYbo7Q511pM286ryrzx58uZMojaz0
	yNwVpLxpyWeReLKsAJyPuSEvVsWCjhENTOs+HimzeJpcfvGxHwcCv4sDy1MQM8TbAO77GOTAGTog0
	F5KRrp0oXlCorjD3T6hPIMXD63wDRHs4LMhMs7ONDsWJJ5PX6CBmpi+Y/4FfUwBtP+wggDUgUHoM1
	Z+xrpWj+4F9w14WIi97vQtyLoKpPe8hNX7G6DMrVVrfWRexS8ywqJULGKPP01Kot6sezUcpFLLUw9
	OE9WN4tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWDwJ-00000008VyQ-1vKq;
	Thu, 18 Dec 2025 13:21:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWDwA-00000008Vxs-06rJ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 13:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWDw7-0005PL-U1; Thu, 18 Dec 2025 14:20:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWDw6-006I0s-2Y;
	Thu, 18 Dec 2025 14:20:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWDw6-0000000BVSi-2wjw;
	Thu, 18 Dec 2025 14:20:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211204257.2605869-1-a.fatoum@pengutronix.de>
References: <20251211204257.2605869-1-a.fatoum@pengutronix.de>
Message-Id: <176606405469.2741484.16953752566180536591.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 14:20:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_052059_173841_AAC4CBAE 
X-CRM114-Status: UNSURE (   7.98  )
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
Subject: Re: [PATCH] boot: allow prioritizing boot entry providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:42:57 +0100, Ahmad Fatoum wrote:
> It's not unusual for an EFI system partition to both have boot loader
> spec entries and an EFI application at the default payload path for
> removable media.
> 
> In that case, we will want to establish a fixed order for boot entries,
> so add an optional priority field for this purpose. The default priority
> is 0 and providers can sort themself higher or lower.
> 
> [...]

Applied, thanks!

[1/1] boot: allow prioritizing boot entry providers
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f2c1d88a520 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



