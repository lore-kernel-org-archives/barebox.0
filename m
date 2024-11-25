Delivery-date: Mon, 25 Nov 2024 09:16:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUGM-0007mB-14
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:16:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUGM-0007xC-9w
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:16:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vlq9duJy7i0XppCLrr0KwhIfLFRX04+E3Vnqxq5bcHw=; b=NvCgCvW6hJ5CHCmNNBB3sWL2pz
	I7r/VRpmr/ZFhEsqVlrnCQstyusmvogwNPckEWmOOnlWJAqVlZ/qVfTLdBH/y3NlsE9IwEVB9DvAY
	XyQKAMXB0yCoeHoI/IbQQKB5s6FyFcnjCsjulo768GqKaMWYPENKPvClWEKUvYKpOXl0iPd1fc7Ct
	RNTiLFRt9NdrAzVlNxrwCICpyzmPLdPDUjAhjhBQYqcMGtDGFw1k7G0OR3f9GdQJqvG5iRhbD98AT
	buKtodjGI7AZ9SOgcuctWsSGn7HCJ76js4MW/dxnkg9KIo6fDKXEE0CdfMd04t0VsQWs2y3HBDKL9
	zIVAjXKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUFo-00000007LgA-0rc1;
	Mon, 25 Nov 2024 08:15:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUF4-00000007LTZ-0U1C
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:14:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUEu-0007aO-TA; Mon, 25 Nov 2024 09:14:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUEt-00030e-32;
	Mon, 25 Nov 2024 09:14:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUEu-000gv2-27;
	Mon, 25 Nov 2024 09:14:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241122095326.2877232-1-a.fatoum@pengutronix.de>
References: <20241122095326.2877232-1-a.fatoum@pengutronix.de>
Message-Id: <173252247665.164969.11822506804687659001.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:14:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_001446_154182_0779132C 
X-CRM114-Status: UNSURE (   9.75  )
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
Subject: Re: [PATCH master] usb: typec: fix freeing uninitialized memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Nov 2024 10:53:26 +0100, Ahmad Fatoum wrote:
> When the code was first added, a kzalloc was allocating the memory for
> the struct device. This has been recently changed to malloc as a
> shifting of the header caused the function to be no longer defined.
> 
> malloc() doesn't zero the memory though, leading to a potential freeing
> of uninitialized memory in dev_set_name.
> 
> [...]

Applied, thanks!

[1/1] usb: typec: fix freeing uninitialized memory
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae7b9c0383eb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



