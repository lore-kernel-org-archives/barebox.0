Delivery-date: Fri, 25 Oct 2024 08:33:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Dsc-000WIA-1l
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 08:33:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Dsd-0002dd-3t
	for lore@pengutronix.de; Fri, 25 Oct 2024 08:33:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vscIudnYzaZwo7oG108IUs/LFelxMwHajK6qo+4hYJ8=; b=Z+Uqpk4zt6NxIiEnSGbQiU5wcq
	8dfFGPT1FeJfPBj6Ge5GXDzFbmrmgg4Gl0sPa0EJrchNfOGANijZ8EVNF4b9G5+zBsKwb0e8f1G9Q
	Wqx4ORPQKgvz3vIDGweZqUKAH+eRSIehOwmv9Pybk1t8zOsxqLHJD/0KvqOejbLx5FJCNKEMPCN7D
	c3iRwqnwuHfIyM4FZ0gWQ0cOrt5NP9EIrPpwWSr+EerjqhniCypCWXHPbkFj5rFrqcvd8cZBODWBH
	R/4Vx+0hXRG9W56zRqbHM0eH9Blghd9FEbKirybCjsXmzovBYToDs787YX6L+pmB6ZClfzEpT+3qy
	iW1AYxqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Drv-00000002ghi-0FsU;
	Fri, 25 Oct 2024 06:32:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Drn-00000002ggU-3XCs
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 06:32:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Drj-0002ZA-Ls; Fri, 25 Oct 2024 08:32:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Drj-000Jpm-0x;
	Fri, 25 Oct 2024 08:32:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Drj-005f8Q-0l;
	Fri, 25 Oct 2024 08:32:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Julian Vetter <jvetter@kalrayinc.com>
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, 
 Jules Maselbas <jmaselbas@kalray.eu>
In-Reply-To: <20241024130803.2208041-1-jvetter@kalrayinc.com>
References: <20241024130803.2208041-1-jvetter@kalrayinc.com>
Message-Id: <172983792723.1349733.3057984228980456443.b4-ty@pengutronix.de>
Date: Fri, 25 Oct 2024 08:32:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_233211_913126_BF459831 
X-CRM114-Status: UNSURE (   6.89  )
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
Subject: Re: [PATCH v2] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 24 Oct 2024 15:08:03 +0200, Julian Vetter wrote:
> Add support for a watchdog that starts as early as possible in barebox.
> So, if there is an issue the board is reset properly.
> 
> 

Applied, thanks!

[1/1] kvx: watchdog: Add early watchdog init
      https://git.pengutronix.de/cgit/barebox/commit/?id=7905ac59a488 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



