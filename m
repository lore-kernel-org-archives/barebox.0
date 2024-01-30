Delivery-date: Tue, 30 Jan 2024 15:46:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUpNP-00C7nW-1a
	for lore@lore.pengutronix.de;
	Tue, 30 Jan 2024 15:46:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUpNQ-0003Fm-7c
	for lore@pengutronix.de; Tue, 30 Jan 2024 15:46:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2P89xbGVOv/uDET5+Y6wMdKIU61UjhtMx9vmscmyrV4=; b=UR09ADQd4XrgtYkmCexZQ+2v6i
	mMw6/INYkzB/gjl13COAcNFKBqFegD91a30UDUJuTalbIvK24zMLFczeCkPUyklxR+AZ0PODenHe6
	zMrnhVZl77r4xY56kZhizc4TUV4UiJPQNfwlbQlJiNmWNS0ZIgzsD/DNowcIQ2pLUWw8hW2WLyqWY
	XA0XhV57NwQhDhO3ma1wqvjdmw0v53GzFtKQTql2rhtosi2oFVKBMShyi5kZgz+U8jwIqJwk94qBn
	OJQOJbGk8Z08jxno6QSp5rE3If44zIR61Kr+2l4l6C80Iuq0FJznDV10UmgwTkcPV1OiwEhpCXu4E
	69kFokvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUpMn-0000000H1Gi-0FUv;
	Tue, 30 Jan 2024 14:45:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUpMi-0000000H1Cn-3wea
	for barebox@lists.infradead.org;
	Tue, 30 Jan 2024 14:45:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUpMf-0003CY-6v; Tue, 30 Jan 2024 15:45:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUpMe-003QuE-Qk; Tue, 30 Jan 2024 15:45:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUpMe-000m0q-2Q;
	Tue, 30 Jan 2024 15:45:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240124085146.2308724-1-s.hauer@pengutronix.de>
References: <20240124085146.2308724-1-s.hauer@pengutronix.de>
Message-Id: <170662592874.184543.13129507714883975665.b4-ty@pengutronix.de>
Date: Tue, 30 Jan 2024 15:45:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_064533_108536_48253024 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: tqma9352-mba93xxca: use upstream device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jan 2024 09:51:46 +0100, Sascha Hauer wrote:
> The tqma9352-mba93xxca device tree went upstream, so switch to the
> upstream version. This is currently nearly identical to our downstream
> version, only the PMIC node is not yet in upstream, but we don't need
> this for barebox.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX93: tqma9352-mba93xxca: use upstream device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=f26ccbcb2b82 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



