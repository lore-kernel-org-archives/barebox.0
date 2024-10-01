Delivery-date: Tue, 01 Oct 2024 12:36:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaEh-004vsf-2g
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:36:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaEi-0000ny-Ay
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:36:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L1VYG9GvkLNQyx+IfyuEmxmWskGERDNqnJ/LYdWmGzg=; b=SpZ4TnF9gLjfH0qSyk931mp5LE
	sqCiHZ0hek/VdEoNgsIFRX9XwIhxxaEK98gnzSfxWAkF1ybV2V8cENlPY4e0QiJZsxIy3TgLfk3fT
	Zq7OkyBzgVsp3swZje6fczXqVvwfNOsjvWjCVLwRwwiB7EB/qSLrcXvS/XAkN/UXAB1ZOQsNBVCDy
	Z9cpDHKz+yoQq8a99JcZkqrOQJXfOdKb07dNAvRTCvqcvlG3O04dzEuzOBiGDTkV7cM4vzGRPHIPU
	60CY5GX0ivwHRfAGwIMqhpFkydI27fULrpLwHDnO72fSlDZWvJvbRdRmjl/sanXA13Zmxd1oR8/Y6
	h1SWfDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaEI-00000002MlA-0vA9;
	Tue, 01 Oct 2024 10:35:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaED-00000002MkB-2Byp
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:35:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaEC-0000Uw-CV; Tue, 01 Oct 2024 12:35:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaEC-002qzw-03; Tue, 01 Oct 2024 12:35:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaEB-004KcV-34;
	Tue, 01 Oct 2024 12:35:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241001085213.522115-1-s.hauer@pengutronix.de>
References: <20241001085213.522115-1-s.hauer@pengutronix.de>
Message-Id: <172777893594.1032562.1399380459772491965.b4-ty@pengutronix.de>
Date: Tue, 01 Oct 2024 12:35:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_033537_593289_7D2E1EE4 
X-CRM114-Status: GOOD (  11.22  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX6 sabrelite: free USB VBUS GPIO after use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 10:52:13 +0200, Sascha Hauer wrote:
> The sabrelite board code uses a GPIO to enable USB VBUS. The same GPIO
> is registered in the device tree as a USB VBUS regulator. This regulator
> currently can't probe because the GPIO is busy due to its usage in board
> code. Free the GPIO after usage in board code to allow probing the VBUS
> regulator.
> 
> The board specific code to enable VBUS might not be needed at all
> anymore, but I currently do not have the board handy to try out, so
> for now just avoid the error messages from failed driver probe.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX6 sabrelite: free USB VBUS GPIO after use
      https://git.pengutronix.de/cgit/barebox/commit/?id=3995dd53d2fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



