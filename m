Delivery-date: Thu, 07 May 2026 13:20:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwmh-001wlU-1Q
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:20:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwmb-0001RV-43
	for lore@pengutronix.de; Thu, 07 May 2026 13:20:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YDzC9XWvZFbw2KQc3NkP7pcIOTwTBxTKhN6FmJJfFBo=; b=xGG9JRL+mkm3cXk+Tivl6UOCNi
	84qhk60fibkYSJDroQxVHj/5IgTj5vqnEuE+XNC+OhHEZKsvLqz31jyHxhsTIazeOa+hU7z9H7JwM
	1tZC4kgplwqBeyJcHUDgR4Mm9csxt0n1oBqH4ZnUruVQDy6f+ndImHrkmK+KPN4XZkMQF1tqnoccM
	UCJQSLLAJr9mJKb0i2LcIjIhosndc9CRPcpIlj2KpiNJ7iAszEgY2if2qudc/YhSyFwak93F9WOAE
	a9dw53InVApYUzWMc1SyrIa7NAStVAKnue3ez15JsvA0lFuZxhAgF+vTbe3EW1DsstjbAFulHc4a1
	tulw/UXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwmM-00000003bQP-1VBF;
	Thu, 07 May 2026 11:20:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwmL-00000003bQ3-0Q7W
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=YDzC9XWvZFbw2KQc3NkP7pcIOTwTBxTKhN6FmJJfFBo=; b=Zt50W/onaxmGhXnE+0uvWIRYVL
	DfAX2NFUJRKA5iIliFX3YQ3rYVAowHTVwXakMvR6goV34Nj9sByK5iSN5t/DlDiA7XtoS2FWhbgaz
	WLxYpKsH0HQ6UYsrXp/17muBvv2CyMDLRaPJyS7IOOSj4Aqu9A2muLJZ3vUYVKaFwJ4PhTZf8hIcz
	N+a13+vBNt/2F53poqJClWg7kjgbU9Ydu9mjzFe8IFmwi8B5jF2bEyGp/Vjdn/GGYHX47nYHOVTej
	Dc0UxrXrSTiK9tq1zLqer11hWVAbBDL0mXk9Fex/VFK+IRc/oieMZhCvU80vdxYhj3DGrlmVZL9oq
	VYSXisgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwmH-00000003L1o-3Vtj
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:20:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwmH-0001FC-Gb; Thu, 07 May 2026 13:20:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwmG-000uf9-2p;
	Thu, 07 May 2026 13:20:25 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwmH-0000000Blv2-14Ub;
	Thu, 07 May 2026 13:20:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260503082408.2757822-1-a.fatoum@barebox.org>
References: <20260503082408.2757822-1-a.fatoum@barebox.org>
Message-Id: <177815282524.2805795.6868016401494808843.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 13:20:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_122026_333284_25F2AF93 
X-CRM114-Status: UNSURE (   5.51  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: loader: gop: install device path to make GOP
 discoverable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 May 2026 10:24:05 +0200, Ahmad Fatoum wrote:
> The EFI GOP protocol handle was missing a device path, which meant
> barebox running as EFI payload couldn't discover it during handle
> enumeration. Use efi_install_multiple_protocol_interfaces() to install
> both the device path and GOP protocol together.
> 
> 

Applied, thanks!

[1/1] efi: loader: gop: install device path to make GOP discoverable
      https://git.pengutronix.de/cgit/barebox/commit/?id=f67553aae7ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



