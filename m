Delivery-date: Wed, 03 Apr 2024 13:40:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryyk-0061QH-0L
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:40:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryyj-0003H6-Hf
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:40:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NWfU/ilLm14ydKteMwdGNM6+iNSlgqawu02ol6r0QhQ=; b=VIibstl/TJDC0t6cRpnTOSOTUK
	ABGOs4FSJDnAJ2PxtxBqMOF1ijxAROQ1M40mDMv6cHEs/GGyP7cgibrbzVwDAEqDWCuoxZXjZ1oNn
	bA2SeN3PLGEB0hPjC+q+i11ABeIMscmyT053fyvHfZ+mdSUxPLEbdw+N+InAH++TXOpgUgKb94V2o
	IPR8v154Bm6ugXqwj/gLM5oeaoe71XVOvAKFiZEAhE9sEBilN4rhAt1oRrt8TNE8DPqnLefWRqa+Z
	usIAkO1JAl3TCa6vu6m37tppZotaXOVQZZzgrhYDyfkT+EytDCSY69Po23zAktFA4e4dvOPUOZKYW
	S8y+9fNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryyD-0000000FoeE-3NXl;
	Wed, 03 Apr 2024 11:39:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryy9-0000000Foci-2NxI
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:39:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryy8-0002nb-93; Wed, 03 Apr 2024 13:39:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryy7-00AAOr-Sr; Wed, 03 Apr 2024 13:39:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryy7-006IyT-2f;
	Wed, 03 Apr 2024 13:39:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lgo@pengutronix.de
In-Reply-To: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
Message-Id: <171214439182.1502862.16177239106882655867.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:39:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_043953_669495_54DD80C6 
X-CRM114-Status: UNSURE (   7.69  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] input: add CONFIG_INPUT_EVBUG debug option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 15:50:31 +0200, Ahmad Fatoum wrote:
> Incorrectly specified or configured gpio-keys may cause the barebox
> boot to abort. To help debugging such issues, add a CONFIG_INPUT_EVBUG
> option similar to Linux, which will print a debug message every time
> a key event is reported.
> 
> Ahmad Fatoum (4):
>   input: record parent device at registration time
>   input: add CONFIG_INPUT_EVBUG debug option
>   input: imx-keypad: remove now-duplicate debug messages
>   input: gpio-keys: drop now-superfluous struct gpio_keys::dev
> 
> [...]

Applied, thanks!

[1/4] input: record parent device at registration time
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec521e914b41 (link may not be stable)
[2/4] input: add CONFIG_INPUT_EVBUG debug option
      https://git.pengutronix.de/cgit/barebox/commit/?id=40db06326f87 (link may not be stable)
[3/4] input: imx-keypad: remove now-duplicate debug messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=648bfcfb9684 (link may not be stable)
[4/4] input: gpio-keys: drop now-superfluous struct gpio_keys::dev
      https://git.pengutronix.de/cgit/barebox/commit/?id=47b2ae8489ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



