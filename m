Delivery-date: Tue, 15 Oct 2024 09:21:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0brl-004ZeC-2Q
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:21:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0brl-0003UU-5r
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:21:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O/IESRiHs/2qcvt4+ZyyTcej0ufjMbg0p/NSncw5/y0=; b=yIfOPggbH8MfrJwTH9uNTQpGEW
	aoqGmvf/WBcNEYvauI6ox7ANJ0OVfz/J+6sr01ak/tfsri+T7/p60x8xCejXw8D0Y8kRXqefv2amK
	J7KQenuXVDkMwGvYVZkqsLxy12qZQgmcNuj48RGQyEOHrW4s1pofuUo6e+yW3tpqG9hZd2zB7FyqB
	QXtHJlKF1iyXf2LBhCzeAOTjA3FmJMNUjGTs4LabjKfEPsF8zzdBog7ByxbCOHw2f1DPoekiM3uEe
	NUI/zshjSkotNsG/dUsOZAQ/rGCMJDc6yl5nsixW9VCXk6ACoUrVAiPsrIolfObHzK+yNP831hA2U
	6Xo4+0JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0brH-00000007KVT-3wFa;
	Tue, 15 Oct 2024 07:20:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0brF-00000007KV5-0D80
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:20:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0brD-0003Rv-S6; Tue, 15 Oct 2024 09:20:39 +0200
Message-ID: <6173e87c-7deb-481d-a543-8665b691b8c2@pengutronix.de>
Date: Tue, 15 Oct 2024 09:20:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
 <20241014115040.2843121-10-a.fatoum@pengutronix.de>
 <Zw4WMLWERHQHcqLK@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zw4WMLWERHQHcqLK@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_002041_123447_472EC55E 
X-CRM114-Status: GOOD (  17.77  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/12] commands: reginfo: make command mpc5xxx-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 15.10.24 09:13, Sascha Hauer wrote:
> On Mon, Oct 14, 2024 at 01:50:37PM +0200, Ahmad Fatoum wrote:

>> -void reginfo(void)
>> +static void reginfo(void)
>>  {
>>  	puts ("\nMPC5200 registers\n");
>>  	printf ("MBAR=%08x\n", CFG_MBAR);
>> @@ -61,3 +62,4 @@ void reginfo(void)
>>  	printf ("\tSDRAMCS1: %08X\n",
>>  		in_be32((void*)MPC5XXX_SDRAM_CS1CFG));
>>  }
>> +DEFINE_SIMPLE_COMMAND(reginfo);
> 
> This is great for development, but not so nice for a broader use in the
> tree.

It's meant for one-off things during development and we should at least
have one instance in tree to verify that it still works.

This would be that instance :-)

> 
>> -BAREBOX_CMD_START(reginfo)
>> -	.cmd		= do_reginfo,
>> -	BAREBOX_CMD_DESC("print register information")
> 
> We are losing the command description and get a "call func reginfo"
> instead which is not really an improvement.

That's how it currently looks like:
https://www.barebox.org/doc/latest/commands/info/reginfo.html

And it's confusing, because it's only implemented for one specific
PowerPC machine. I like the new help text more in this instance.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


