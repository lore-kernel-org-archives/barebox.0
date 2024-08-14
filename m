Delivery-date: Wed, 14 Aug 2024 13:01:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBkt-009Vpg-0t
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 13:01:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBks-00088l-Ik
	for lore@pengutronix.de; Wed, 14 Aug 2024 13:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QxWxCHth5top67VurFSjFv3rw/3fRHRnCziJeDX0ViE=; b=TaEMp/szMDFUlFtJbqf1pUoPc/
	mrip/Z6cfNw3AbtaKa2PlSrFtEo3DNUfCo3qL4Fr3u49HcbQ6iJalYkmpP0K5muuupZ1L+WHcV4iK
	oKlH+iKnfvSNl6JJwkBSzfwm85bXDGCUjO6PhyzLtQ2jlsXC1uVBbYVJlF8k21DEa1jtkasx8LV+5
	Ud8x8IzW2r1kv6qCaRTBF0QDMxSlP7k36v+FCf1TPetgKICdBas/i6v81iNAtgE40XPVCkTZGvbFt
	9x1bt3VR8+f6Y67tl6I5CD+4EF1omerlPpkPh45yAeEKOGAOmL4oDd8TorDKiS6dXaLp0STTkk3b9
	HupFtn4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBkM-00000006i64-08LC;
	Wed, 14 Aug 2024 11:00:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBkK-00000006i5c-0XRm
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 11:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QxWxCHth5top67VurFSjFv3rw/3fRHRnCziJeDX0ViE=; b=E+cJe04XkGDsI3AH7X4YShFW8D
	LJOTsOyLA7uS4y5lHF4pPVMt9fDCLSK9tFHgWm+HDw1cjIpJ12tqyMCHWJRsb3Z7qykuVrD5eDjrt
	7Qc5HbleLMiFp6jqyDdjGMKuxCy3UzH/8HaOQKwPw8GXqxbtO3YtZNXWMUd021kNo7LpcQnMi1uUu
	kXb5ZOTz9f4yBAYEIaGScPJEo/aBwIqyvB/BvdVqIa5GjvFTLzQr7C6rfG+cFAn/htgSuAuaMSrxp
	Qbly5TmVXuFi58Fe5NhCUB0el8OjfgIQZl939h48I0SR7tb134My3/oBy2/HG8iuMrw9FqWFXFKXz
	M7nvNxjQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBkG-000000082mD-1ar5
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 11:00:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBkF-00081N-PI; Wed, 14 Aug 2024 13:00:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBkF-000LG9-CQ; Wed, 14 Aug 2024 13:00:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBkF-005Vn6-13;
	Wed, 14 Aug 2024 13:00:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
Message-Id: <172363324732.1313807.3664335763403926169.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 13:00:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_120048_832519_59E4ADAE 
X-CRM114-Status: UNSURE (   9.99  )
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
Subject: Re: [PATCH 00/11] gpiolib: add support for OF GPIO configuration
 binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Aug 2024 16:23:54 +0200, Ahmad Fatoum wrote:
> So far, GPIO bias configuration was done exclusively by pinctrl drivers.
> All barebox pinctrl drivers work by consuming a device tree node with
> a binding that differs from driver to driver and then applying the
> configuration described within.
> 
> Neither GPIO or pinctrl node have any insight on what in particular is
> being configured.
> 
> [...]

Applied, thanks!

[01/11] gpio: make gpio.h header self-contained
        https://git.pengutronix.de/cgit/barebox/commit/?id=14b85136923b (link may not be stable)
[02/11] gpiolib: permit GPIO drivers to implement struct gpio_ops::set_config
        https://git.pengutronix.de/cgit/barebox/commit/?id=588ae0dda1a2 (link may not be stable)
[03/11] pinctrl: stm32: implement generic struct gpio_ops::set_config
        https://git.pengutronix.de/cgit/barebox/commit/?id=043337f00f61 (link may not be stable)
[04/11] gpiolib: turn request/active_low into bit flags
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c702bf6699d (link may not be stable)
[05/11] gpiolib: don't use GPIO number API in of_hog_gpio
        https://git.pengutronix.de/cgit/barebox/commit/?id=76f484d35d47 (link may not be stable)
[06/11] gpiolib: store all OF flags into GPIO descriptor
        https://git.pengutronix.de/cgit/barebox/commit/?id=e89e662f4082 (link may not be stable)
[07/11] gpiolib: add support for OF GPIO configuration binding
        https://git.pengutronix.de/cgit/barebox/commit/?id=269dad50c259 (link may not be stable)
[08/11] gpiolib: use dev_gpiod_get_index device node argument throughout
        https://git.pengutronix.de/cgit/barebox/commit/?id=f2c8dfbabd6b (link may not be stable)
[09/11] gpiolib: export function to get struct gpio_desc from index
        https://git.pengutronix.de/cgit/barebox/commit/?id=996f924de8dd (link may not be stable)
[10/11] input: gpio_keys: switch to GPIO descriptor API
        https://git.pengutronix.de/cgit/barebox/commit/?id=2fe7e9ecc63b (link may not be stable)
[11/11] input: gpio-keys: request with label in DT if available
        https://git.pengutronix.de/cgit/barebox/commit/?id=5e94d0bc7430 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



