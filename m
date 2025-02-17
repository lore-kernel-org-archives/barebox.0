Delivery-date: Mon, 17 Feb 2025 13:30:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0Gs-003TrA-1F
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0Gq-0000js-VN
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cY7IF5LlZaoIU5Tl/Kw/HxqbOA0rNC+OSecglPo7pyQ=; b=gbZXmZpuTn/0ExEkNEj5Cie38o
	F666aCJZUEi6RQX77L1Ksa2OkVFZ8FBd4b4iB2T872eFQlSPGm5SP48kLVZALUATu1T+VdGRyx1uw
	AEHOuthnoWl/Ws0MBzHtHP5XW/pkI613ZPVU9AR5WDFhABGzW/iTGC5W4MKXay/hZQ2kKxQHsVjvh
	ZBV6e1Vv18daoFkWsR0iudT0+NZZGNEcH28dB9y7Fw0OdMAl0lmOupJOaueC62LTZ79/lIm3MziCO
	y9eZY1RunSYO5WxWmb7tV1VBNRwtS26b8QOhlZXGEfo46HMVyP2wIXcsz0p6uGvbLYoT+QAWVS6Ja
	rEEzi1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0GP-00000004T1w-251b;
	Mon, 17 Feb 2025 12:30:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzlD-00000004Ogc-1cXK
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjzlB-0003zQ-Te; Mon, 17 Feb 2025 12:58:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjzlB-001Ox2-2L;
	Mon, 17 Feb 2025 12:58:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjzlB-00BHZR-29;
	Mon, 17 Feb 2025 12:58:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217113355.2099178-1-a.fatoum@pengutronix.de>
References: <20250217113355.2099178-1-a.fatoum@pengutronix.de>
Message-Id: <173979348166.2688784.6728682678487701.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 12:58:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_035803_426936_A27DC358 
X-CRM114-Status: UNSURE (   7.90  )
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
Subject: Re: [PATCH v2 1/2] mci: core: import Linux logic for higher
 preferred erase size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 12:33:54 +0100, Ahmad Fatoum wrote:
> As a comment in the file notes, doing too small a granularity for erases
> has considerable effect on performance:
> 
>   > Example Samsung eMMC 8GTF4:
>   >
>   >   time erase /dev/mmc2.part_of_512m # 1024 trims
>   >   time: 2849ms
>   >
>   >   time erase /dev/mmc2.part_of_512m # single trim
>   >   time: 56ms
> 
> [...]

Applied, thanks!

[1/2] mci: core: import Linux logic for higher preferred erase size
      https://git.pengutronix.de/cgit/barebox/commit/?id=cffa32cbd510 (link may not be stable)
[2/2] mci: core: reset ERASE_GRP_DEF on startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=b2c8b27dd73d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



