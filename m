Delivery-date: Fri, 06 Dec 2024 11:08:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVG5-004hOJ-0d
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:08:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVG5-00008x-6N
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:08:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ro/6aH5nWEg4vk3AMuqC+fe2fIIdgR9tsk87XY9dIxc=; b=vsf9lXK/xkl2NhnVRwjav8rgV7
	17ZNAAqHOm3Jnh1JeDqYzuCyRE8c/Y/mqq0tc9kY6O7DfjDZTHneYZz4ki+pgFNpxHP/eNbPoFCug
	mqwKO9TlwlrAPPQD69EmTVxRlsM1FlPNvz4bueA4NyZS+cjWz773afuYgARWnZEywrgS4dDH++RC0
	TPdRHUl1+pxJl9KnQdvZThmaqz9bfecQGbf5myFcw2k+vgw06HkS5fkFhyBwq2kLFOz2cKbhYE0T9
	ycWO7SokQgb472EW+dT7HMx6POFuYvKJ3ErKI0fQqdYXcAtWy8XEQJv3oPAQZWfGft2QofVCW5foP
	7VzuoMJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVFg-00000001CPw-3515;
	Fri, 06 Dec 2024 10:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVFd-00000001COH-2wUQ
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:07:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVFc-0008Ux-Fi; Fri, 06 Dec 2024 11:07:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVFb-001yes-1j;
	Fri, 06 Dec 2024 11:07:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVFc-000ZSx-0m;
	Fri, 06 Dec 2024 11:07:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20241203140125.2667446-1-o.rempel@pengutronix.de>
References: <20241203140125.2667446-1-o.rempel@pengutronix.de>
Message-Id: <173347967623.136288.1114953346140533182.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:07:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_020757_738988_43D855B3 
X-CRM114-Status: UNSURE (   5.31  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] net: designware: eqos: stm32: add stm32mp13 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Dec 2024 15:01:25 +0100, Oleksij Rempel wrote:
> Add support for STM32MP13x variants. Tested on STM32MP133.
> 
> 

Applied, thanks!

[1/1] net: designware: eqos: stm32: add stm32mp13 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9217ed45699 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



