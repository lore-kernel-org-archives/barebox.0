Delivery-date: Thu, 01 Feb 2024 16:09:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYh4-00FoLu-2H
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 16:09:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYh5-0005LZ-B7
	for lore@pengutronix.de; Thu, 01 Feb 2024 16:09:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HM4nm22sLu5Frfl0UIH5RLc+kbxGMkKpEfdybXynSrc=; b=Ua36MImGXUCwKyBui9H8sDHfsb
	3NXdT1F6Xa36vKqMZvh7A5/Nw++oQoFatYCDO8l0xC7Gn4ruvjp2bhPUSOjTlIHdH+675+X58zPA+
	bxDX3U8ENaiqGBRP7aQibB+Dck6S/zcCFqTqAgU2/hjWUQ43Z12fWFGO2jBw/v2f63rNzzjm05TUr
	nRSUZ8tmeZU0k3eJaNaFSg7r1Znyl/uSFNxZtDgtASUMe2NldCsntRDyzbJRGHNs37hkWBAHSsAsY
	KeyHVZTZorMZ8Bf4fuPW1YD14t1m++kkeKHpbGUM3u9lxQp5RzD3ObtXOe5AmioD7MxnLm4R82yVx
	C5e1AlwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYgh-00000008NvR-0Nn2;
	Thu, 01 Feb 2024 15:09:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYge-00000008NuQ-06Bj
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 15:09:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYgc-0005Gz-S3; Thu, 01 Feb 2024 16:09:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYgc-003sft-F9; Thu, 01 Feb 2024 16:09:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYgc-00Er6n-1J;
	Thu, 01 Feb 2024 16:09:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240131230347.1747216-1-a.fatoum@pengutronix.de>
References: <20240131230347.1747216-1-a.fatoum@pengutronix.de>
Message-Id: <170680014640.3540726.3146627505998506269.b4-ty@pengutronix.de>
Date: Thu, 01 Feb 2024 16:09:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_070908_094495_81D4CC9B 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mtd: spi-nor: fix format specifier in debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Feb 2024 00:03:47 +0100, Ahmad Fatoum wrote:
> The type size_t is to be printed with the %zu modifier as it's not
> necessarily typedef'ed as unsigned long, even if for barebox purposes,
> the sizeof(size_t) is always equal to sizeof(ulong).
> 
> Building the dw-ospi-nor driver for 32-bit warns about this, so fix
> that.
> 
> [...]

Applied, thanks!

[1/1] mtd: spi-nor: fix format specifier in debug message
      https://git.pengutronix.de/cgit/barebox/commit/?id=eca34ec9b611 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



