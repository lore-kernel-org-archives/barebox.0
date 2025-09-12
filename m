Delivery-date: Fri, 12 Sep 2025 09:44:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwySk-0029eT-1U
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 09:44:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwySj-0003cb-UP
	for lore@pengutronix.de; Fri, 12 Sep 2025 09:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14WDImyiUuV5NrgdkRViQu21dJbUwQxeRwmBOKpFPBQ=; b=cGi+EGywrhf+jQ7UcWuQ6FDYnM
	0kSbnv2fQObYOlRUt4mk/aDL2FdFR6/HK0vOBG23Qt8E9Hszw8NlmEv1TfwM0gk2DE+jQf6NDklaw
	oBHxMqYeYD59y6fCAieNYzah+b9cGi50HjsWHSYUV+8r49lOgQNSFdi5Z3HskCXsRPyoSkyIQ+OkA
	DCUBEdifs66zYRUTv2Do1SB4ECxVlh9KDHfX//OzfTBxmQBGo++kPNnaUeA/25SjV8khq04WuwMk2
	bjQsJegkCgWnNKtegplYymJ+JGkXp8Zm5vVUeOwhNW3DBxp9o8Y2TYNzo83LejV+ubCxEXk8mUd2k
	7pWPkGAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwySC-00000007iTo-1dMB;
	Fri, 12 Sep 2025 07:44:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyS9-00000007iTI-1PwQ
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 07:44:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyS6-0003Ww-CY; Fri, 12 Sep 2025 09:44:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyS6-000teT-0c;
	Fri, 12 Sep 2025 09:44:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyS6-00000007N5d-0X2N;
	Fri, 12 Sep 2025 09:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20250910-v2025-08-0-topic-mvebu-spi-v1-1-c3e57dbb7503@pengutronix.de>
References: <20250910-v2025-08-0-topic-mvebu-spi-v1-1-c3e57dbb7503@pengutronix.de>
Message-Id: <175766305411.1757044.14258182261681475716.b4-ty@pengutronix.de>
Date: Fri, 12 Sep 2025 09:44:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_004417_380725_BCCCBBBC 
X-CRM114-Status: UNSURE (   6.32  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: mvebu: move timekeeping out of hot path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Sep 2025 07:42:25 +0200, Steffen Trumtrar wrote:
> The wait_on_timeout uses get_time_ns for timekeeping. It seems that this
> considerably decreases transfer speeds, because the wait_on_timeout loop
> gets throttled by the timekeeping.
> Moving the timekeeping after the hot path results in ~3x transfer speed.
> Keep the wait_on_timeout after the hot path to be sure, that the code
> nevertheless waits long enough once.
> 
> [...]

Applied, thanks!

[1/1] spi: mvebu: move timekeeping out of hot path
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ac86ef4ef1e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



