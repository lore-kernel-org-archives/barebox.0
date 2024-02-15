Delivery-date: Thu, 15 Feb 2024 14:48:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rac60-007U6A-2I
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 14:48:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rac5z-0000Zu-SR
	for lore@pengutronix.de; Thu, 15 Feb 2024 14:48:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Tu2C0ow5+sTWO4VSzM9c9Llh/dSsxMB/HZ8TEnWBUo=; b=AL0hDYbCVpdBQugNtuQ+g+0X/h
	BPBUew74ZdbkB6qe+Ip02Dt2kNzLYKExtiMzRaRiBIeNqxGD1l37UEivYtAIk+pyMHel7e8qQVaNt
	EDYqCPV2ZqHFEnopPXiGPZsgI3BhcV1DOCflDmg2D/Zrbx9cMeJ8RLn3/5uLXRYDUUn8e+2xAqXLR
	M4ufwOoKVRZnW8g3OacHguFu/7mqA8zhF3hpgu6tLW8PtPVtzvzpYIXOLAjm7K68VUzMXFIpmEtIL
	XWamL7P8hS5urFRdFfr8OdhgG1pATou+Bmo7pJKPcuZ0A8UM4TcqaI/QgZxzxQjbA1FApaX10d0f2
	nZFrq9mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rac5Q-0000000GRRH-1XjK;
	Thu, 15 Feb 2024 13:47:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rac5N-0000000GRQE-0AZU
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 13:47:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rac5L-0000So-Ee; Thu, 15 Feb 2024 14:47:31 +0100
Message-ID: <5a7f3262-a549-47da-8658-afb81ff380fa@pengutronix.de>
Date: Thu, 15 Feb 2024 14:47:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org
References: <CAKd8=GtV4EtC5Bx+t=YOfLXEFKB_-1N=HbU4hfCaLK6Lw3YMhA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAKd8=GtV4EtC5Bx+t=YOfLXEFKB_-1N=HbU4hfCaLK6Lw3YMhA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_054733_112074_4B6CF5C9 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox environment raw partition on beaglebone black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Lars,

On 15.02.24 14:01, Lars Pedersen wrote:
> Hi.
> 
> I'm trying to create a barebox environment by using af emmc a raw
> partition offset on the beaglebone black.
> 
> For testing I appended the following into am33x-boneblack.dts.
> 
> / {
>     chosen {
>         environment {
>             compatible = "barebox,environment";
>             device-path = &environment_emmc;
>         };
>     };
> 
>     aliases {
>         state = &state_emmc;
>     };
> 
>     state_emmc: state {

[snip]

Keep in mind that state is unrelated to environment:

 - state: power-fail safe set of predefined variables used for mostly bootstate
 - environment: where you would keep scripts, variables and resources.
    In the field, you'd probably only use the immutable barebox built-in environment
    (+ state), but for development, the mutable environment is very handy.

> state: New state registered 'state'
> state state.of: Fresh state detected, continuing with defaults

State looks ok.

> environment load /mnt/mmc1.0/barebox.env: No such file or directory
> Maybe you have to create the partition.
> changing USB current limit to 1300 mA... done
> 
> Hit m for menu or any to stop autoboot:    1
> ---------------------------------------------------
> 
> Why does it try to read the env on a partition on
> /mnt/mmc1.0/barebox.env? Is it because barebox.bin also is read from
> this partition?

Check out omap_env_init(), which registers the environment if system boots from
SD/MMC. This seems to take precedence over what's in the device tree. Indeed,
upstream AM335x platforms only configure an environment in the DT if it's outside
SD, on NAND or NOR.

I think placing the environment on the FAT makes sense as the MLO is there as well.
Why would you like to move it?

Cheers,
Ahmad

> 
> Thanks.
> 
> /Lars
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



