Delivery-date: Mon, 20 Nov 2023 08:27:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4yhK-00173Q-2B
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 08:27:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4yhK-0005eZ-NF
	for lore@pengutronix.de; Mon, 20 Nov 2023 08:27:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Napv6vZuUkCuSjX3KHOnGdLc2TjhbHASIbhiHaBLwds=; b=hOxRAXj56Ga52f6C5r0Uj1Oxy0
	whTDuNDCBGZ2LEoxpHt7FutVea9T/pIyNdiIaBh3ci5rkvbh5pOcxa2Gy2VDS/8TZQ6gm4Rhb9LDx
	jbfiV4DHg4kFOsbnVs8qvMV/qXP0bGbdr5KZXf236zdtRNLfTEw0rrTG+K5YPnqNIp5ZYb4ibUl6A
	oC7i96hc+5IZRcZH7JjAdGb828QCbGPRPuHoHoDe5tPXikGq6sQGXikf3LWoir7FgCtPv1tH/VBtO
	cD1qVNit9edCFZGoSC6UEECO+64ayshKaiAf+2dBV8e9g47aj1N20K4/ZegZCXcdj1pT9Z6CG6HH9
	A2gunDXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yg6-00BOCu-0m;
	Mon, 20 Nov 2023 07:26:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yg2-00BOC0-1N
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 07:26:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yg1-0005Ld-2T; Mon, 20 Nov 2023 08:26:37 +0100
Message-ID: <126c4f25-a6d7-11b2-8a2a-d1f349a94675@pengutronix.de>
Date: Mon, 20 Nov 2023 08:26:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Steffen Hemer <S.Hemer@phytec.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <49b721a9-cd86-49c0-bc04-6cfae0e2ea20@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <49b721a9-cd86-49c0-bc04-6cfae0e2ea20@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_232638_466488_3696758D 
X-CRM114-Status: GOOD (  16.75  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Compile with CONSOLE_NONE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 16.11.23 17:01, Steffen Hemer wrote:
> Hey everyone,
> 
> did somebody recently compile with CONFIG_CONSOLE_NONE set??
> For an am335x build (so with omap_defconfig), I get a linker error for 
> both v2022.09.0 and recent:
> 
> arm-linux-gnueabihf-ld: common/bootm.o: in function `bootm_boot':
> barebox/common/bootm.c:584: undefined reference to `console_list'
> 
> I found that this config was rotten already once:
> 
> https://lore.barebox.org/barebox/CANvTkNYwuCuGQMY40VC=dJxzW8rhBjDA_HE_Mb8AuV9iep7sYw@mail.gmail.com/t/
> 
> May that be the case again?

Thanks for the report. I indeed broke CONFIG_CONSOLE_NONE a while back.
Please see the series I just sent out that should fix that.

To avoid future regressions, we should add a defconfig with CONFIG_CONSOLE_NONE,
so they get regular testing by Github CI.

Could you submit a patch with one such config? Optimally, it would have other
less used size-conscious options enabled as well to get more coverage.

Cheers,
Ahmad


> 
> Regards
> 
> Steffen
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



