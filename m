Delivery-date: Mon, 25 Mar 2024 10:56:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh41-003gN1-2j
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 10:56:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh41-0000rL-9z
	for lore@pengutronix.de; Mon, 25 Mar 2024 10:56:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kJZiuZioyqWml821f1r6HHX+kenJUFUoe4ejYccw7ag=; b=jx/KfQDkJDowbz9SgsX7YggLO2
	s4T+RkT3ckvXu/zU2BLQq5VoL+nvtlLZPGmX67hgQ1wfe/LgJ52YwV2c8xKnKfaV4ms+fzqAK8sds
	t7ctJRB1BVOREfh9aGl2UwJDqYyq9kTeq0WHMoBKyL3CQVh2nNqNODyBh5oZoKredK3uASHFcEGW8
	c+AkxlUhrzlAly3btFi65fSyw2ilJnE42vStiC3Xk20iWz6UQmVeE671y7vwXF052z+nSwwPhaQSr
	uRm70GpCdPL3GYB4kjUMRSjQBDf2D03/lUMRIzavIVgIOO+DZu9gT6NEqk9YIqQ9U26bvF6oHQ+p0
	pbkM8KBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh3d-0000000Ga3T-201r;
	Mon, 25 Mar 2024 09:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh3a-0000000Ga2R-1EWR
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 09:55:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh3Y-0000jr-Ir; Mon, 25 Mar 2024 10:55:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh3Y-008ORq-6W; Mon, 25 Mar 2024 10:55:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh3Y-00CM3N-0R;
	Mon, 25 Mar 2024 10:55:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
In-Reply-To: <20240322163924.192327-2-u.kleine-koenig@pengutronix.de>
References: <20240322163924.192327-2-u.kleine-koenig@pengutronix.de>
Message-Id: <171136055213.2944666.17139036410687952654.b4-ty@pengutronix.de>
Date: Mon, 25 Mar 2024 10:55:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_025554_379467_BFAB6BD4 
X-CRM114-Status: UNSURE (   8.23  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi-nor: remove Fujitsu MB85RS1MT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Mar 2024 17:39:25 +0100, Uwe Kleine-König wrote:
> Linux did the same in commit v6.7-rc1~61^2~1^2~42 with the reasoning
> that this part isn't a NOR but an FRAM and is supported by the at25
> driver. Follow this reasoning and drop MB85RS1MT from spi-nor, too.
> 
> 

Applied, thanks!

[1/1] spi-nor: remove Fujitsu MB85RS1MT support
      https://git.pengutronix.de/cgit/barebox/commit/?id=705272a35522 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



