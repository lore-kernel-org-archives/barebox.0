Delivery-date: Tue, 23 Aug 2022 07:20:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQMKg-007nir-Uq
	for lore@lore.pengutronix.de; Tue, 23 Aug 2022 07:20:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQMKe-0007L1-I6
	for lore@pengutronix.de; Tue, 23 Aug 2022 07:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2WMnJHLQW16Cu8rr6AQbr2Eqnjxo/XhBZ8XCIxyTbw=; b=Xa0aMI3eJC7Nvg/ffGO5shFFnS
	JCieejKRbiFc2RY36jAQWEfXoBZ7hL8XGA2Dvl5GNC7VAkrgMeY9W+s0HW3sbHJVL40EqLMhDc7yw
	58ug7xlVeM3kLpbc4cmYKZb3rFTJ8//LtpEh75lGsQK7uo02b3UsWjS84GdXtt/ZugfdfZ4F3P6jp
	9sk35to/3hCi7JV2IGro4toRTMYVN1sBUcxR60fX2jofOofV4B3So9xAVZ6EoZPORtzkKFSqFzjhi
	UPeR07IhsSueyXPqfTvme/u47xP3U+MWt9o9xAzxgebrSPW0MYF4PQdYVFGt33NlrtmnB2jbkkGgR
	Wk9VvQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQMIu-002Jud-9m; Tue, 23 Aug 2022 05:18:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQMIn-002JqY-DE
	for barebox@lists.infradead.org; Tue, 23 Aug 2022 05:18:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oQMIf-0007Fv-U5; Tue, 23 Aug 2022 07:18:05 +0200
Message-ID: <afdbea2b-35a5-840d-e8e0-3548fc6203fc@pengutronix.de>
Date: Tue, 23 Aug 2022 07:18:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20220426064604.422292-1-ahmad@a3f.at>
 <20220426064604.422292-2-ahmad@a3f.at>
 <20220822143242.a7937c979f582c4989303380@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220822143242.a7937c979f582c4989303380@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_221813_475403_BE7C7480 
X-CRM114-Status: GOOD (  16.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] RISC-V: sifive: enable SPI Flash and SD in config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 22.08.22 13:32, Antony Pavlov wrote:
> On Tue, 26 Apr 2022 08:46:04 +0200
> Ahmad Fatoum <ahmad@a3f.at> wrote:
> 
> Hi Ahmad!
> 
> I'm trying to run SiFive target with emulate.pl, e.g.
> 
> barebox$ dd if=/dev/zero of=/tmp/1M count=1 bs=1M
> barebox$ ./test/emulate.pl sifive_defconfig  -- -drive file=/tmp/1M,if=sd
> ...
> qemu-system-riscv64: -drive file=/tmp/1M,if=sd: machine type does not support if=sd,bus=0,unit=0
> Error running emulator: 256
> 
> I use QEMU emulator version 5.2.0 (Debian 1:5.2+dfsg-11+deb11u2), please see https://gitlab.com/frantony/barebox-gitlab-ci-runner .

I am running QEMU emulator version 7.0.0 (Debian 1:7.0+dfsg-2~bpo11+2), where the above
worked for just fine.

> If I skip the '-drive file=/tmp/1M,if=sd' qemu option then I see "Load access fault", e.g.
> 
> barebox$ ./test/emulate.pl sifive_defconfig
> ...
> barebox 2022.08.0-00162-g7fce4ae853b0 #1 @1661158478

Without -drive if=sd, MMC controller is probed, but no card can be detected:

  WARNING: mci0: Cannot reset the SD/MMC card
  WARNING: mci0: Cannot reset the SD/MMC card

No crashes here. Can you update to a newer QEMU version on your CI host?

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


