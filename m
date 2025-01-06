Delivery-date: Mon, 06 Jan 2025 14:26:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn7m-00HVIt-2l
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 14:26:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn7m-0002BJ-RC
	for lore@pengutronix.de; Mon, 06 Jan 2025 14:26:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E6VX/rXGNa5szIK6lWm7uk5obxXN9dfAvAqLlsJmQMM=; b=Hve//Z0pCRhJAgmjzde1kFdpnd
	aBoQNt6M7UqhoW0/tVMb+nUfHt9geYbQ5jypjwTalFJICWOn9/LPuRNcHXUEQOqu+aIGvdfYB4kK6
	0Zgw5y35yJWSLlAvRVBBvS8jZ2ARHQSjLgQQr4Bouc9DMQGLnOe3Q58QVn84VqPni1BosWNcFHMqP
	ll4e0tdENnyREe4CBZTWfYNm2SFkKRPVOO6ldiVe82IQ2hkong94YnHj6/ruSTOi+CffWQXwbR3qe
	fcOe+lVkp8WrWCjj3KWzxoAX07XnSJ5gKrkSXdw615F7cp0zPP7W0J+7WspbowiOxS0RrDbUvyLER
	zU3+wW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn7O-00000001Oo0-0oKk;
	Mon, 06 Jan 2025 13:26:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn5g-00000001OMo-3XDT
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:24:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn5f-0001f0-B0; Mon, 06 Jan 2025 14:24:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn5e-007AwN-1E;
	Mon, 06 Jan 2025 14:24:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn5f-00BDNT-0H;
	Mon, 06 Jan 2025 14:24:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106091915.3435362-1-a.fatoum@pengutronix.de>
References: <20250106091915.3435362-1-a.fatoum@pengutronix.de>
Message-Id: <173616985908.2672909.11052907492080069980.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 14:24:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_052420_887192_EA42E9AC 
X-CRM114-Status: UNSURE (   8.53  )
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
Subject: Re: [PATCH] driver: replace single info callbacks with stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 10:19:15 +0100, Ahmad Fatoum wrote:
> A number of driver register an info callback that prints
> driver-specific information for devices that already have a device
> callback. This is currently handled in every individual driver by
> storing the old info callback in device-specific driver data.
> 
> Move this functionality into the driver core by means of new
> a devinfo_add() function.
> 
> [...]

Applied, thanks!

[1/1] driver: replace single info callbacks with stack
      https://git.pengutronix.de/cgit/barebox/commit/?id=85cd8b2613ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



