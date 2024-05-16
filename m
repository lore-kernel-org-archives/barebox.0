Delivery-date: Thu, 16 May 2024 09:13:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VJ1-00GujQ-0h
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:13:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VJ0-0007L8-LU
	for lore@pengutronix.de; Thu, 16 May 2024 09:13:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tRXkacluHUJJr9yGdO6ofDX7UTa3wYfq766ZWp4mKxc=; b=yvYi5DgI34JD/YJB6XGcOQdJT9
	xnHB/R9vdufJOQ1EhxGoMzNhy/oK+HDklv4HuD7ykYu1VfWKKhEHS+O4th57SSqCqNgc4B1+lvjjb
	nwNfZ9cVfuktCvFS1LkJU0o6qeLpTq5crjxJE9LkA4azJ4tBJ9dMRO82TwUXQvBzXVUBhv/6VCmj/
	knbzcgCgSZw8m2AQp56VTY5eECSznMvPf3TX1vrRQm2QK/ZFiBCY3vr3JRLswbrekolISZo+wZV9P
	eo24gZHEPgkPsSqRYaqz5iD/7VEJNeifo8dtL+OGZd/kyss/ETgSgH52C/EkiZ/N5/5ZJWJmKWKWT
	yBbW7aNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VIa-00000003xCf-3KnL;
	Thu, 16 May 2024 07:13:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VIV-00000003xC2-3uNd
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:13:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VIU-0007En-DF; Thu, 16 May 2024 09:13:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VIU-001flL-0j; Thu, 16 May 2024 09:13:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VIT-00BXEN-35;
	Thu, 16 May 2024 09:13:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: uol@pengutronix.de, ske@pengutronix.de
In-Reply-To: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
References: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
Message-Id: <171584358195.2749312.7967030860406318973.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 09:13:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_001304_010111_C2571A9F 
X-CRM114-Status: UNSURE (   6.58  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] cdev: return error code from cdev_close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 10:05:05 +0200, Ahmad Fatoum wrote:
> cdev_operations::close can fail and thus cdev_close should pass along
> the error code to the users instead of discarding it.
> 
> Do that, so users like devfs close() can start propagating this error.
> 
> 

Applied, thanks!

[1/3] cdev: return error code from cdev_close
      https://git.pengutronix.de/cgit/barebox/commit/?id=490dab2db018 (link may not be stable)
[2/3] fs: devfs: restore cdev reference count maintenance
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd6ac1612b4b (link may not be stable)
[3/3] partition: reparse tables only if CONFIG_PARTITION_MANIPULATION=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfdfc732ba6f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



