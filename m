Delivery-date: Mon, 05 Jan 2026 15:41:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcllw-001YIK-39
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:41:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcllw-0006Sr-D3
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:41:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GQBzibx4h5bDK7AZsBG/4IFFRrndiS9pNGnbYk9oYgI=; b=IiWFF7CBxa5z2PdjNi1lLNcF3W
	WWsJNtITwkQeKwG6g4UsYcwpNsg953j6Sbr0WASUoaD+DpNT7GBDoWW6OapWT+Ia3t4Z+fCpCdWFU
	EslccexodriPP32u1rm9UwThv6ZycyL/U96xnhekIZon9aiyqVluTQ0Lk2XayhRtARD7Pbr7Pmm2n
	J1Ceu+DEbM4EZkggLro0JKHAgT8VZKYkD1su5wYSKt96og20t8KDWZHCMSBCr7eS2ozGv9g4qLNQz
	6pwAlyB02atYS6sDQKC+awByDlVdjZe5aqDiZUaoaGf4lYzCmQG6bQtFYjCpKIo/aB/02LrTigmwT
	L2RAqDUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcllU-0000000BYew-0E0j;
	Mon, 05 Jan 2026 14:41:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcllR-0000000BYdv-0FFo
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:40:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcllP-0006Ne-EU; Mon, 05 Jan 2026 15:40:55 +0100
Message-ID: <7bf80d43-af4b-4cfa-b341-615a519ad55d@pengutronix.de>
Date: Mon, 5 Jan 2026 15:40:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <aVvF7LW9-lAvPTuZ@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aVvF7LW9-lAvPTuZ@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064057_101725_8FEE1D59 
X-CRM114-Status: GOOD (  23.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: barebox-bringup utility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/5/26 3:08 PM, Sascha Hauer wrote:
> Hi,
> 
> Claude Code struggles to to bring up barebox properly with
> labgrid-pytest and running barebox on real hardware with the barebox
> integrated pytest infrastructure is also not easy as there are several
> assumptions about QEMU in it.

We have a container to address this.

> I thought letting Claude write a small
> python tool to start barebox in QEMU. It turned out to be useful for
> interactive usage as well, so here it is:
> 
> https://github.com/saschahauer/barebox-bringup
> 
> It makes starting barebox as easy as:
> 
> barebox-bringup -c ~/test/arm/imx6s-riotboard.yaml
> barebox-bringup -c test/arm/virt@multi_v7_defconfig.yaml

Does

./scripts/container.sh pytest --interactive \
	--lg-env test/arm/virt@multi_v8_defconfig.yaml

not work for you?
> It will open a console which captures the barebox output from the start.
> The tool has options to capture to a log file

This can be achieved with --lg-log when using pytest.

> and to accept input from a
> fifo.

Untested, but should be possible with mkfifo and redirection?

> At least with real hardware the closest I could get was:
> 
> labgrid-client -c ~/test/arm/imx6s-riotboard.yaml -s barebox console

By the way, I think we should start adding YAMLs for real hardware as
well into the repository.

> This loses output though, as the console is only started after barebox
> has already started, so I usually had running a permanent console on
> another terminal.
> 
> Maybe there are ways to improve the barebox pytest or to improve labgrid
> itself, but in the meantime somebody might find this useful as well.

I already rewrote my perl tool in python, so it's more approachable to
others. It would be cool if missing features are implemented there, so
everyone can use it.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



