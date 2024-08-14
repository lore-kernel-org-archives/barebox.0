Delivery-date: Wed, 14 Aug 2024 10:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9em-009Tl9-2J
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 10:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9em-0003i5-3k
	for lore@pengutronix.de; Wed, 14 Aug 2024 10:47:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CzLy+5ba8MgpYlN8GeoVhQ3H2EKSY8Z7oi45ucO3nf4=; b=jq13V2rJllMLKvgrkIICLXI+vw
	ZhNPNxdjNIvPi3cRG31jLjKUbFBWV4cce3efNI7YLHR8mK/h7eFzqN1RHwuqxcEM5J4qUhl0VVWpr
	GEvP5uLSGj+EKnHdCoFO+LCQFcAO7M6ZmU2mE7PYPYw6HZLrPSiM7GmoBQ3dWcU7OBktySeCuPoQr
	kkCjLbil/hj4f17lWYG7LePkoDXZT8NOiqPqV0ha7CwFE4YMQjA6KWom7UbecTm3YQ60twpLA9ded
	8wKn3tvRXdbu6P+PtsRH2H9pgWbIG9qeeaqEvHGTU9E7d0ySf2bKrHdeYvRnWL7nIb7wRMW5DfEKP
	A8txFuWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9eE-00000006Gbg-0uaX;
	Wed, 14 Aug 2024 08:46:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9eB-00000006GbG-12Jx
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=CzLy+5ba8MgpYlN8GeoVhQ3H2EKSY8Z7oi45ucO3nf4=; b=V2EyO6Pn5z0/LD/3QlpTiuAgQi
	oiMr5ZDTHNQO9NR5VecQCN8pCCFtsSZDPagQp3YwKRz6w0ZrjG/QnRDjMp4Ka5+05zLfAtwe2AMB5
	hkVaTUZ5e5srv33Y+mfSt19mHhlXfZSyrtUc9gPPWO5Y6JAURxOlYThEAwPKEIIoEJMDx66pihzGT
	Wz4RRsjjcPuyiLFGMfPkJhgG0Gx7TsBrdTP4JfySYOWLzi9kvw7KdEBO+tx4dqPTawnK3GpFj1/BF
	nPvqgYchw8QIP6neQpJW1VuVrT4CDqKMkjZCq4v/Qwj1V7fs9BhAyLvdjjpapI0CxDO70NSl5mjuK
	Le1eQ1lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9e7-00000007yhk-273Z
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:46:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e6-0003aJ-DY; Wed, 14 Aug 2024 10:46:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e6-000Jty-0B; Wed, 14 Aug 2024 10:46:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e5-005Pfg-33;
	Wed, 14 Aug 2024 10:46:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240814083312.1288951-1-s.hauer@pengutronix.de>
References: <20240814083312.1288951-1-s.hauer@pengutronix.de>
Message-Id: <172362517794.1290283.11528490764196382737.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 10:46:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_094619_698715_E9569095 
X-CRM114-Status: UNSURE (   6.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: imx: clk-pllv2: Fix unitialized variable warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 10:33:12 +0200, Sascha Hauer wrote:
> __clk_pllv2_set_rate() might return with an error in which case some
> of the variables are used uninitialized. Check for an error like the
> Kernel does.
> 
> 

Applied, thanks!

[1/1] clk: imx: clk-pllv2: Fix unitialized variable warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=8632a853a613 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



