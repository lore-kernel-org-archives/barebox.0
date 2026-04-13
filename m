Delivery-date: Mon, 13 Apr 2026 16:57:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIj2-00Bkhr-1Y
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:57:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIj1-0002ad-Ue
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:57:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdHpR/JX63MOWlWwfsIH9701Xix4szg9d1y4zmK8qgY=; b=LspXZRvbYRUt7kU8sL9RyBRL40
	iGZ1l7Z1MUkeUBFDwHHiowdjm7zxbgLj8QF143HhIMIREbbaW/MrCQx766L3XfR+zAQY9zToOHUYn
	BCfgmg8rXXD83kpyGoOZnIEb9YpnuWPrW+UrDDAg2fl9i6fA7SvLZ+kr8A06zdoT7VobV80uVYIcL
	me6Jq/95R/RlXdcUFGS+tfr3CiGdc6ZjU71LZZxQI27JDCdlj3CV732xxXTehAgFf5wPWMy9Y0vSN
	pqjRGRinWcz3aVaJa+UgdHBtqLeTVAZxFpsVn19rPsZIv8QaG0Xqz+jZpBIeOA/niUt8MGuuPphKd
	zgWAyywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIig-0000000FuL8-39Wj;
	Mon, 13 Apr 2026 14:56:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIif-0000000FuKP-0ah2
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:56:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIiV-0002Ub-Lt; Mon, 13 Apr 2026 16:56:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIiV-005Bmv-1X;
	Mon, 13 Apr 2026 16:56:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIiV-0000000FiiG-1jLA;
	Mon, 13 Apr 2026 16:56:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
Message-Id: <177609220740.3746419.12896854217767013918.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:56:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_075657_186074_56BC3E74 
X-CRM114-Status: UNSURE (   5.79  )
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
Subject: Re: [PATCH 1/5] video: simplefb: add r5g5b5a1 and x8b8g8r8 formats
 to SIMPLEFB_FORMATS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 12:06:56 +0200, Ahmad Fatoum wrote:
> The DT binding (display/simple-framebuffer.yaml) lists 11 pixel formats
> but SIMPLEFB_FORMATS only covers 9 of them.
> 
> Sync with Linux to add the remaining two.
> 
> 

Applied, thanks!

[1/5] video: simplefb: add r5g5b5a1 and x8b8g8r8 formats to SIMPLEFB_FORMATS
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e01b5a837bf (link may not be stable)
[2/5] video: simplefb-fixup: use shared SIMPLEFB_FORMATS table
      https://git.pengutronix.de/cgit/barebox/commit/?id=1330f491c3b5 (link may not be stable)
[3/5] parameter: allow enum params to be set by numeric index
      https://git.pengutronix.de/cgit/barebox/commit/?id=317917a16385 (link may not be stable)
[4/5] video: simplefb-fixup: add stdout-path mode to register_simplefb param
      https://git.pengutronix.de/cgit/barebox/commit/?id=451becb0e16f (link may not be stable)
[5/5] Documentation: add OpenBSD booting guide
      https://git.pengutronix.de/cgit/barebox/commit/?id=60b86d3f45af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



