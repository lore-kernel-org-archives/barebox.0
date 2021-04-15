Delivery-date: Thu, 15 Apr 2021 09:54:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwpR-0006tD-5j
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:54:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwpQ-0001c0-8H
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NafeB3MlXH+dIrjHpTLC+3yxLG//ZOzgCm2t5ZkSarY=; b=be7C7SRCxzz9WiQnxNkoLeF81
	95ZiQzxutEF6XlgB0JlNwCMLmVnn8DKcWelK9ZzCJpt0Gvdkfu65PZiHck16r8JnDHS/SCquoQtvP
	xxx2r/ihS3ALJxHmknhodXLHZbMtRFXb/WhSETtWdWc8NK396hiWd/U2/os+ys4orcz3yaL8DCNpP
	szXaLS5FoH23y5qNqA1fl/pv2OsrK5OCwc9K2U25GqisfvPSgUoxjraDe1O8Zkf+iSqiDLANvN90D
	n88ICQA3J9X3VilE63auh3kqecMcbsEUyn2wgNeqMtU17ORnm1Rg6WBtADSDHQNB1zmaNlrqtmyb0
	TsDbvobPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwoX-00FHZs-Nu; Thu, 15 Apr 2021 07:53:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwoQ-00FHYj-Td
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:53:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWwoQ-0001VN-E3; Thu, 15 Apr 2021 09:53:18 +0200
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
References: <20210410110638.2106658-1-ahmad@a3f.at>
 <20210410110638.2106658-3-ahmad@a3f.at>
 <20210415071523.GZ19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d3410c69-464f-6c41-2fa5-2d55b104226b@pengutronix.de>
Date: Thu, 15 Apr 2021 09:53:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210415071523.GZ19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_085319_304552_1748D212 
X-CRM114-Status: GOOD (  15.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] RISC-V: board-dt-2nd: add PBL console support for
 virt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 15.04.21 09:15, Sascha Hauer wrote:
>> +static const struct fdt_device_id console_ids[] = {
>> +	{ .compatible = "riscv-virtio", .data = virt_ns16550_init },
>> +	{ /* sentinel */ }
> 
> This is only board specific. If we go that path of parsing fdt for early
> output can't we just do like Linux and establish earlycon?

Yes, we'll get there eventually. What I'd really like to have is to be
able to, at compile time, associate a debug console with a PBL entry point
that would also work prior to relocation. That debug console should be
inherited into barebox proper to be used until a console driver was
initialized.

We are not there yet though and I still didn't figure some stuff out.
So I'd prefer postponing this more generic until a second boards needs it.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

