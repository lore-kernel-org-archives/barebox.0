Delivery-date: Thu, 13 Jun 2024 08:42:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHe9x-005EHv-23
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 08:42:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHe9x-0002hX-2f
	for lore@pengutronix.de; Thu, 13 Jun 2024 08:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wUbcGIkoWr8CUezozHMhZ814657Izhh57TBAGLw5BAE=; b=KwvRSS0vNsOSF2diZI9DT7Ud1W
	AzZc13XNEOUaxWdg2ijAxdjlljrrqC/CS64/FpYK50yxOZm3QJF/cGsV2lWesc11JnJZpPGQvZCs2
	gIfshWjPd5BGbP6QqaUMXQkzBUaof/S0u8qvKvU+ikA7DCIzB8OkG6iIiEwtDXjH2jQCsmp4+/Ah2
	uPUFapvlk8+xfFIMiLNzhw8+m+CblF7InkuMxNXxwfdHuWVJQF7RkLV6i81wMYXf+yaMu+1RkrDl3
	e7Qpk+7qLRlYtn0TcBI9sjFNB//wWDhcsKr7xvsInHosqqXsDW3v0Rs/063ofVJH5aU2YN5mj2po4
	2rrdSsZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHe9K-0000000FLil-2WrN;
	Thu, 13 Jun 2024 06:41:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHe9G-0000000FLhx-0NcY
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 06:41:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9C-0002c9-Kx; Thu, 13 Jun 2024 08:41:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9C-001xv1-8E; Thu, 13 Jun 2024 08:41:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9C-00BBHU-0d;
	Thu, 13 Jun 2024 08:41:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
Message-Id: <171826088219.2664957.16232057586026831473.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 08:41:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_234126_169624_F0C764EA 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/5] net: preparations for integrating a network stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Jun 2024 09:51:00 +0200, Sascha Hauer wrote:
> This series has some preparation patches to better integrate a network
> stack in the future.
> 
> Sascha Hauer (5):
>   net: virtio-net: allow to set current MAC address
>   net: ifup: use accessor to set network device ip/netmask
>   net: add edev argument to net_set_gateway()
>   net: establish single code path for setting edev parameters
>   net: host command: move to commands/
> 
> [...]

Applied, thanks!

[1/5] net: virtio-net: allow to set current MAC address
      https://git.pengutronix.de/cgit/barebox/commit/?id=7abc114aeeba (link may not be stable)
[2/5] net: ifup: use accessor to set network device ip/netmask
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ed217fa0faa (link may not be stable)
[3/5] net: add edev argument to net_set_gateway()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f54a1f61ae04 (link may not be stable)
[4/5] net: establish single code path for setting edev parameters
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f7bc1804e24 (link may not be stable)
[5/5] net: host command: move to commands/
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf3c04df757c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



