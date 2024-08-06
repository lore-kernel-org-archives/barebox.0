Delivery-date: Tue, 06 Aug 2024 07:57:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDBt-006jRq-0T
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 07:57:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDBs-0004DQ-Jb
	for lore@pengutronix.de; Tue, 06 Aug 2024 07:57:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N5/gAAgoDHv8bdweGr1ODG1MVjM69k9T7RllUqcEJYE=; b=G/2Q9BvBNuQs0OTFd2CTLGxCy2
	zL3A0TpXU/54UN84JLDSIVceC5JSCSfB8wrEWLakQpnq6lJBxMhqCu3w+Buv/vjh/jeIReKHV2uE4
	8PANe4UILu30JvtpTkDe4ME2ieLvudY9BL6b3nnveyQvfgs4EpRRlQHtJ/T4l7GDg3UUM3RwNqO37
	FbqsqrI7ZxASm0F3u/N0I71k9Dizv0bLHYG3+jpF2c0T3hcvZybr3Hibl/ZihrkTith7kAl9Ge+dY
	j0g8wLW8Vvq+pgP5aLmR/uMBwC/S00jyVIZIQG7VldMOtOmdvYwvuuBb/RM+uV+7COqTtYF6wWBTa
	EaLZVRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDBT-00000000cOY-1cOs;
	Tue, 06 Aug 2024 05:56:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDBP-00000000cNv-0UVe
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 05:56:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDBN-00048p-9u; Tue, 06 Aug 2024 07:56:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDBM-004sdX-TD; Tue, 06 Aug 2024 07:56:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDBM-002jh2-2h;
	Tue, 06 Aug 2024 07:56:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240805152611.3015730-1-a.fatoum@pengutronix.de>
References: <20240805152611.3015730-1-a.fatoum@pengutronix.de>
Message-Id: <172292378883.652279.65205050224196614.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 07:56:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_225631_189305_C52E8769 
X-CRM114-Status: UNSURE (   6.12  )
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
Subject: Re: [PATCH master] usb: xhci: fix erroneous USB_DT_CONFIG
 descriptor size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Aug 2024 17:26:11 +0200, Ahmad Fatoum wrote:
> This bug initially manifested itself as an infinite loop printing the
> message:
> 
>   ERROR: usb2: ifno = 17 > USB_MAXINTERFACES = 16 !
> 
> Such a hang could equally happen if actual USB devices besides the root
> hub report bogus descriptors. This was fixed by not trusting device-reported
> sizes blindly in commit b6a510525e63 ("usb: Use well-known descriptor sizes
> when parsing configuration").
> 
> [...]

Applied, thanks!

[1/1] usb: xhci: fix erroneous USB_DT_CONFIG descriptor size
      https://git.pengutronix.de/cgit/barebox/commit/?id=37264b456e0d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



