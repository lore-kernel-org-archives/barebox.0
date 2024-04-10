Delivery-date: Wed, 10 Apr 2024 08:36:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruRZm-005h6g-1z
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 08:36:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruRZm-0003lu-2j
	for lore@pengutronix.de; Wed, 10 Apr 2024 08:36:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UKim2mq9XGnpUN3H+oKGTxZHduo4LBOSL2w+JcXIg1o=; b=GDNfHH1srPZGWDYci8tSs7o1tW
	WMjweFfCSCkdXkm97ImS5E2wYcKZJqg+cXH9rg+a43F1Sd62pup6979hceCcqR3XcVPvV4/GbpHgC
	GleWHLSbOjUNpeDCqFbKS37NCz4OAjAnR1DAc/aGKt6kj+8PGfF9tnRosZ5G67P54ah5lf303hKCp
	VsQfvQZ2HLWxJXPJbhlAzMKT9DlxhCusURvrnSmrjk0I8IcC0cgFNyZN8dXRJqYuH6aaU9QmDu8/y
	k8yxgTFCfFORektf8maga1xxkjs8yDIXHFdJvrxo0On0vWIh22sN5WLGQYMpkPUckpRmIp0Zf7zSt
	EcK8CAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRZL-00000005Q8q-1xfR;
	Wed, 10 Apr 2024 06:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRZH-00000005Q6x-2Wl9
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 06:36:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRZG-0003Lt-EU; Wed, 10 Apr 2024 08:36:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRZG-00BRUh-29; Wed, 10 Apr 2024 08:36:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRZG-005879-00;
	Wed, 10 Apr 2024 08:36:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240408143131.3630347-1-m.felsch@pengutronix.de>
References: <20240408143131.3630347-1-m.felsch@pengutronix.de>
Message-Id: <171273098199.1222768.12786156768722637174.b4-ty@pengutronix.de>
Date: Wed, 10 Apr 2024 08:36:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_233623_730120_6589BD57 
X-CRM114-Status: UNSURE (   7.79  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] bootm: replace CONFIG_BOOTM_FORCE_SIGNED_IMAGES
 with helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Apr 2024 16:31:30 +0200, Marco Felsch wrote:
> In preparation for allowing even CONFIG_BOOTM_FORCE_SIGNED_IMAGES=n
> configurations to force boot of only signed images, replace direct
> use of IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES) with a helper that
> queries a static variable that can be forced at runtime in a follow-up
> commit.
> 
> No functional change.
> 
> [...]

Applied, thanks!

[1/2] bootm: replace CONFIG_BOOTM_FORCE_SIGNED_IMAGES with helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=7c80ebdcecd9 (link may not be stable)
[2/2] bootm: add support for dynamically forcing signature verification
      https://git.pengutronix.de/cgit/barebox/commit/?id=933db056bbdf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



