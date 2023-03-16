Delivery-date: Thu, 16 Mar 2023 13:53:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcn6N-002hue-19
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 13:53:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcn6M-0006Pq-SZ
	for lore@pengutronix.de; Thu, 16 Mar 2023 13:53:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phKRVMYBY2Vx9xRqkvJu+lBQgLmCYxFxenVtNjudR54=; b=qN6PyYdBBW6zbZ1zY+X63nYL87
	/3xHDosM2EebhsjtlH8UcTcBnAMbDqFF2B2/9kL0suztEuVLGvn7UNgaCoeRb/KGLG7puyagrSNlr
	2P2q5HlRvoc41YVqF0lDloLGjPjSdodE5rfeh/2lli+SiJ72zBUMlZgYpATbpHgG9lJSuMqQKDomx
	FrJ7GoU8E3AXJh8aYg5h/CAAkM0pMmal4kaRL7Wv1wTJ/37EZbhnPmYKKmb9CpLZ5M3IBzWKNXazh
	AmfX4nys8k9tWXPxexXeLYgIR2Gv+lV/Ws13Ct/JVHFSmIbxnYulXA6qyeS9MaO7MHbATdmtyHSnw
	y/ZA9sxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcn59-00GRcj-2O;
	Thu, 16 Mar 2023 12:51:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcn56-00GRc2-1Z
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 12:51:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pcn51-0006D5-T3; Thu, 16 Mar 2023 13:51:39 +0100
Message-ID: <9bcfc2f8-72f4-b994-0c61-07e34ccc22a0@pengutronix.de>
Date: Thu, 16 Mar 2023 13:51:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 barebox@lists.infradead.org
References: <ZBMM0s2psJJj+/BI@Hephaistos.inside-m2m.de>
Content-Language: en-US
In-Reply-To: <ZBMM0s2psJJj+/BI@Hephaistos.inside-m2m.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_055144_521945_7EEE1B1B 
X-CRM114-Status: GOOD (  18.80  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Autoboot when idling at prompt possible?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Konstantin,

On 16.03.23 13:34, Konstantin Kletschke wrote:
> Hi there,
> 
> in order to get the booting more robust I already changed
> autoboot_abort_key from "any" to "ctrl-c".
> 
> We wan't to keep the autoboot_timeout to be able to access the
> bootloader prompt manually or with install tools more reliably to a non
> zero positive value. I.e. enter prompt with timeout greater than zero
> still should be possible.

If you keep ctrl+c pressed during boot, you may abort before init runs,
even if global.autboot_timeout=0.

> Is there a mechanism already implemented or thinkable to be added as a
> command, which boots when the prompt is idling for a couple of minutes?
> Lets say the bootloader caught ctrl-c by accident (free serial pins in
> headless encasing in rough EMV environment) and idles there
> for years...

You can enable watchdog before init runs, e.g. in your board code, let's
say with a timeout of 2 minutes. If you have reason to use the shell, you
run wd -x manually or set global.autoboot=abort and reset.

You may need to enable watchdog poller support if you have a watchdog timer
that can't be disabled and you want for barebox to periodically poll it
instead.

This is readily possible. You can still set a shorter boot watchdog timeout
with global.boot.watchdog_timeout. Other possibilities:

 - Allow entering bootloader shell only after systemctl reboot loader
   (See barebox reboot mode documentation)

 - Add option to have barebox password login at most increase countdown,
   but not abort it. Users must then enter full password within specified
   time or system autoboots

Cheers,
Ahmad

> 
> Kind Regards
> Konstantin
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



