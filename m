Delivery-date: Fri, 17 Apr 2026 12:46:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgit-00DAMn-1e
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:46:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgis-0001Cs-W7
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:46:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=shvtOwqmVmCJpeI0z74LfkSoSBkijXe6u9qIg5hTm4U=; b=EIMVT02FkL0ERglIasxIKzmsSw
	Z4iUEPz7HOyh3vay9PqhFp0/UW12hwBmxMIhYv69XQLruQvB7Yl7w4qlYZlRTwwvMdRj51m12b0Cq
	liih4EagcT1fFtSfNjqkHFXBdlk9MSVTbl9UBeD3NO9qwa9ADze6/Tvzi5AeaUs7lNO5+QiCfx4HD
	8XTSWJPOvGVaSMVfuGXyTD3zfBGzBWcyoONVRa/osU2UThUQAvrkbdRsFqJJDexIUlNl6x49YOsG/
	SaG932pT5eAMwMfK70sjBQYwLUAQI1QmjZLKvINOuOIPnBFZbKRNC0YcLye2/kw8QeFREr+Kpmnl9
	gbaAfOvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgiU-00000003vcC-29yh;
	Fri, 17 Apr 2026 10:46:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgiR-00000003vbt-398w
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:46:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgiQ-00013x-0b; Fri, 17 Apr 2026 12:46:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgiP-005pmt-2P;
	Fri, 17 Apr 2026 12:46:25 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgiP-00000000fqA-2qoM;
	Fri, 17 Apr 2026 12:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Yunus Taskopru <yunus@protonic.nl>
In-Reply-To: <20260417095640.3903125-1-a.fatoum@pengutronix.de>
References: <20260417095640.3903125-1-a.fatoum@pengutronix.de>
Message-Id: <177642278567.160675.7486131429987949080.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 12:46:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_034627_793102_1AF2D347 
X-CRM114-Status: UNSURE (   7.40  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: rk3588-rock-5b: fix SD card startup for
 Radxa ROCK 5B
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 Apr 2026 11:56:30 +0200, Ahmad Fatoum wrote:
> Both Rock 5B and 5T share a common rk3588-rock-5b-5bp-5t.dtsi and the
> fix in commit bd5518cd7e34 ("ARM: rockchip: fix SD card startup for
> Radxa ROCK 5T") is equally applicable to both of them.
> 
> As mentioned in the commit message, the upstream pinctrl change broke
> the SD card startup and the workaround for now is to revert back to
> the previous pinmux setting.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rk3588-rock-5b: fix SD card startup for Radxa ROCK 5B
      https://git.pengutronix.de/cgit/barebox/commit/?id=253307ab7737 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



