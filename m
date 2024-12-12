Delivery-date: Thu, 12 Dec 2024 09:36:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegD-0077O3-1E
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegD-000425-Ct
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pj32Vg1k6mmsjYbdOZPqfBXzizwvFKVAqHt46NE8YM4=; b=Pb10/0+0joh+2ZNg8qUtdvV8N3
	zhtyeyrIQB/R3y8386OIKvRCdsQQ0b9So6/my3qx77AeQFuAPYydLSQXLwGKHKeufoLMRhZiJefrt
	4018fNO5sGB3GXaMYm41us2mp+Ws96nti0Z8hgdD+z4zja3h7JXB3OBzVoR66KtqIlLCaetDqVUIQ
	i+FXzH+8kOg2dfE+9y0GOcraAkXyv7i/nJhU58SW0yHMKXbIt+eUwvL+LdA86e21fXKLws2Y35UcV
	tDimBpfatCyr5pzzhcoa7jDe6E1b87dKBEaF0bwo7fCBddlnLqQXosKUE0PL4Kz3Q5PYZOlMJQ9CA
	6inu190g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefo-0000000HKFP-3PaN;
	Thu, 12 Dec 2024 08:35:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLea2-0000000HJ88-1P5v
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLea1-0002zb-7g; Thu, 12 Dec 2024 09:29:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLea0-0030Ef-0u;
	Thu, 12 Dec 2024 09:29:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLea0-00DR6X-3D;
	Thu, 12 Dec 2024 09:29:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241211143132.2990471-1-eagle.alexander923@gmail.com>
References: <20241211143132.2990471-1-eagle.alexander923@gmail.com>
Message-Id: <173399219299.3201865.8539839426352958683.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 09:29:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_002954_375555_D2833A1E 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rk3588: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Dec 2024 17:31:32 +0300, Alexander Shiyan wrote:
> This updates the RK3588 clk driver to the one from Linux.
> 
> 

Applied, thanks!

[1/1] clk: rk3588: sync with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=0cf7b5c64c0b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



