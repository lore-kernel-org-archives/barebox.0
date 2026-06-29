Delivery-date: Mon, 29 Jun 2026 10:17:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7BF-00B3OE-2T
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 10:17:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7BF-0008DU-5A
	for lore@pengutronix.de; Mon, 29 Jun 2026 10:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ufr0KFTjcyBr5875WKirABIMQo0YD//Ax4E/sr1zBgM=; b=GeNZ1qBQZvNiPsrs9VWgOKyOLU
	qonyCvKfn7M+70vX+K4dxOJjqPc5IeClJsZlcLKSc6W7HMG8HGxc7skjE65yVbBdHZhm02snk0dnp
	8OXymXSNL/kekDpjiaeA5lP0Tsij5b1CVoWe5JryLfEvPvwSMwp52WMEbf685+kCTbh9WtmNuAYf6
	o83MA7y1oCPRgLIiA7aZ0jLcl9I+C0ex8Fe503wRVVYW6NTA/VCAfS6UM+MGa0iavhxJus9F/JDkE
	8wVvFmS20abBhCXbsN4GXuAsp5EenMETDNre3o5J+GGakppdRe0Fr+I9EGbiHbCqcyaJJJ9ZTSnum
	h3u8XUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7AA-0000000DzRc-1bPS;
	Mon, 29 Jun 2026 08:16:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7A7-0000000DzQy-2Ut5
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 08:16:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 277AE20027F;
	Mon, 29 Jun 2026 10:16:13 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7A5-005DCy-0G;
	Mon, 29 Jun 2026 10:16:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7A5-00000000hIc-05st;
	Mon, 29 Jun 2026 10:16:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
Message-Id: <178272097301.166427.4626314205886020468.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 10:16:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_011615_802953_DC81D594 
X-CRM114-Status: UNSURE (   7.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] usb: port over some U-Boot fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jun 2026 19:31:36 +0200, Ahmad Fatoum wrote:
> A user reported on IRC that the USB keyboard fails to enumerate on an
> MNT Pocket Reform, unless the laptop's power cable is connected.
> 
> This series collects a number of potential fixes for this issue.
> 
> Ahmad Fatoum (5):
>   usb: hub: wait after port reset recovery
>   usb: wait after initial device descriptor read
>   usb: wait after setting device configuration
>   usb: separate descriptor and config requests
>   usb: hub: tolerate transient disconnects during reset
> 
> [...]

Applied, thanks!

[1/5] usb: hub: wait after port reset recovery
      https://git.pengutronix.de/cgit/barebox/commit/?id=200c346c0678 (link may not be stable)
[2/5] usb: wait after initial device descriptor read
      https://git.pengutronix.de/cgit/barebox/commit/?id=2faa49a59e93 (link may not be stable)
[3/5] usb: wait after setting device configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec11da95a7ae (link may not be stable)
[4/5] usb: separate descriptor and config requests
      https://git.pengutronix.de/cgit/barebox/commit/?id=3efa0bef0621 (link may not be stable)
[5/5] usb: hub: tolerate transient disconnects during reset
      https://git.pengutronix.de/cgit/barebox/commit/?id=058cb900e304 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



