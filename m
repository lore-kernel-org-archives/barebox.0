Delivery-date: Tue, 10 Mar 2026 11:08:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu1G-00A3jr-1N
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:08:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu1G-0005fv-PR
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:08:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yVrPyrMkKGbky1QAkiH5l68UXjxTAhRjG13uJRfI6KA=; b=T5ykUQ2wPItWQF7CjU3sREHCru
	OIbclAhPrSwenVW8RfNew4/tswRUsaVjDSQCZpo5KKl0v4lljmzvhwi82vRUtgrCrkVbm7bC0E6EO
	Pk42FGWVbQM9mwf7/c/afvMcn4zT/z8BSMx2x39p44Ehj9KEOSzV9W2SuTIWWDMryi0P0PlVGwAVp
	muSGHCEG+UgKrFCnRJaODnEEnHsnABOzoFTUpz92C5YIXgtjefN4z97jaNzPpZ+gSFAzoDZwBfQ6L
	BnC+wErZ2Dp8Oic6vYMZalFB4gKkA2KNsKYTSPBPWqfeZ6yfkvinn/2VydWXWMyvq/Lu5GWfmNBU4
	5oAKUZiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu0h-00000009AAR-2ryQ;
	Tue, 10 Mar 2026 10:08:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu0e-00000009A9u-2wAN
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu0b-0005Yu-CG; Tue, 10 Mar 2026 11:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu0Z-004g3P-2G;
	Tue, 10 Mar 2026 11:08:13 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu0a-000000033OY-3y7e;
	Tue, 10 Mar 2026 11:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Picard <david.picard@clermont.in2p3.fr>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
Message-Id: <177313729293.727523.5790652558262521192.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:08:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_030816_742256_E3F33375 
X-CRM114-Status: UNSURE (   7.64  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 15:00:44 +0100, David Picard wrote:
> Enable high-speed USB on Enclustra Mercury+ SA2 module:
> - Enable options in the defconfig.
> - Enable the high-speed USB 2.0 controller in the devicetree.
> - Change 1st stage image compression method to keep it small enough.
> 
> 

Applied, thanks!

[1/3] ARM: socfpga: Enclustra SA2: add defconfig options
      https://git.pengutronix.de/cgit/barebox/commit/?id=f992151a6c04 (link may not be stable)
[2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
      https://git.pengutronix.de/cgit/barebox/commit/?id=8972f106fac4 (link may not be stable)
[3/3] ARM: socfpga: xload: compress image with xz
      https://git.pengutronix.de/cgit/barebox/commit/?id=7693d5f1de9a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



