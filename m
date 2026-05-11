Delivery-date: Mon, 11 May 2026 09:16:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKrz-000ThY-1P
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:16:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKru-0003Xj-MA
	for lore@pengutronix.de; Mon, 11 May 2026 09:16:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gCuHeP6j9ip73f4i1lwbg5wRoXPi4kgK9SUFkBtLEmU=; b=FoU0KaFRK1gSYQzeTTFhbpUNgJ
	rPWVGCs1stBmHmZfDhkxT70s2WNPSuv6wJ+n6A53gi1OFkdP6m3wWot+SeEWYCsHXMKKNNk0JNSdS
	IVmWfFYS8BkXei6amE7tl7gNzm1ySFj0LFMj6dmwdVCsqu1rtBuuvyEtXIey7VCv7QyW6jvmrUmnY
	VanLwz8AuvJ0ZFIO3ufSR4DytMFbR0vKydj09W5mR3TMU5pm9DezHX1f1OUJVpbiXemsyXNuLfVxH
	uAQ3ieOElKoqQT//4xvoVETgWgxzjnxKX5tYbt1pnfo4vLTvpP+QGxZR0kL+6ZlhLP5g8gSlBmyMi
	SJ+ZG9Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKqB-0000000CZW1-1LaF;
	Mon, 11 May 2026 07:14:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKq8-0000000CZVR-16PL
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:14:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKq4-00034a-He; Mon, 11 May 2026 09:14:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKq3-000DGs-1y;
	Mon, 11 May 2026 09:14:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKq4-0000000DEfp-16sD;
	Mon, 11 May 2026 09:14:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260508105855.3772602-1-s.hauer@pengutronix.de>
References: <20260508105855.3772602-1-s.hauer@pengutronix.de>
Message-Id: <177848364425.3154650.8115729378685305293.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:14:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_001408_334530_D928D885 
X-CRM114-Status: UNSURE (   7.73  )
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
Subject: Re: [PATCH v2] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 08 May 2026 12:58:55 +0200, Sascha Hauer wrote:
> Add an explicit Kconfig option to allow searching the environment storage
> path based on the barebox environment partition GUID.
> 
> So far this depended on CONFIG_INSECURE being set, but that's not the whole
> picture. Loading an unsigned environment is inherently insecure, allowing
> to find the partition by partition UUID just adds one point to the top:
> With it we potentially allow loading the environment from external storage
> devices like SD card slots that could be plugged without opening a device.
> 
> [...]

Applied, thanks!

[1/1] environment: add explicit option to allow searching for environment devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=b43acbe3c005 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



