Delivery-date: Mon, 07 Apr 2025 09:56:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-009SpH-1w
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-0003lG-0g
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z/9+267i9Vz0YW/UUBTym54ObMyIZuX/2qgah91v8r4=; b=xBtu1ebk3hRwtXloAQ7zVZo9ne
	1GT3Wj4vVgi02P1bCLEyfXe9yWOy/2bhaQ6uj9P9n0rzTg7K/ouyKE31hYQCwJaORp8o2vVm+kQ4y
	v9j36vHUjTlL1mQ7TXlor+lEhKJJBkKS1ScgHiVewq01+F/PSO16boSZfvY70G2/We+dah8ico8AA
	BANgFUh02zjufNPVe9VuY2EubCWY9hVaZTJZ+kP9R0O4Ngy2D05D9KE6dNmjT9cytSvwIVaWxIDxX
	bvvsfbgaFoJu8jwr4l95HECqOIp74bEJmRZ8tn2OPWQRe7+n+kn7O+9DhPywg4OVLwosLnkiiPhgg
	HD3akwQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLC-0000000Gt7n-2IS0;
	Mon, 07 Apr 2025 07:56:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gyG-0000000Gn50-2sLF
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gyF-00009Z-Du; Mon, 07 Apr 2025 09:32:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gyF-003im1-0m;
	Mon, 07 Apr 2025 09:32:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gyF-004aae-0Z;
	Mon, 07 Apr 2025 09:32:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
References: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
Message-Id: <174401115917.1093929.2924424386171211893.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 09:32:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_003240_726532_C91E179D 
X-CRM114-Status: UNSURE (   6.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] fs: add only successful filesystem probes
 to fs_device_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 04 Apr 2025 17:55:19 +0200, Ahmad Fatoum wrote:
> fs_init_legacy can't fail currently, but if it does in future, we can
> end up with a file system added to fs_device_list that wasn't
> successfully probed.
> 
> Move the list_add_tail to the end to avoid this.
> 
> 
> [...]

Applied, thanks!

[1/3] fs: add only successful filesystem probes to fs_device_list
      https://git.pengutronix.de/cgit/barebox/commit/?id=356a8b6b240f (link may not be stable)
[2/3] common: pe: fix crash when pe_load was not called
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a63d86b063a (link may not be stable)
[3/3] barebox.h: annotate __hang as __noreturn
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac20c565e06b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



