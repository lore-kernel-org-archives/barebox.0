Delivery-date: Fri, 21 Oct 2022 13:48:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olqWK-002pKW-4p
	for lore@lore.pengutronix.de; Fri, 21 Oct 2022 13:48:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olqWH-0007dB-9X
	for lore@pengutronix.de; Fri, 21 Oct 2022 13:48:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oVLCLQntorl+aVUqbN2AJ5aDwEfH7+hwtFUoOuyb978=; b=CKxOnPFbseLWzvHPbT+FDMBVnZ
	Cd1SFcp6GQ+yNfzTGl58sScEDbFqbgman8HghIR6VpLcVU1CMnkAPNZuWUx4OGzF3Qdo2FBLMEpPM
	8LagOBNQTpPEh6TY8KP9/LPitXbdXbv3+RxIZhLs3EQhqb12O8dERQlkX+PITxOy1zPIAqTRWQKNq
	842l4yK0i8lXpTzIgJlhiEht0YZD5Te6tAmwBhwGL1nqjd9E8Q/J2eWszPP3bkL7LyVPbXxaqILBY
	iOspF6fzPbJJhWLwo9chOPO98m54Kfjw+7eYiwKZ40PId+PFe384D3dTLzWGrj8SD4p2dHhGxMt7Z
	CWLRsXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqV4-007SyZ-5n; Fri, 21 Oct 2022 11:47:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqUz-007Sxl-I1
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 11:47:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1olqUy-0007EJ-6J; Fri, 21 Oct 2022 13:47:36 +0200
Message-ID: <00b11081-9943-0806-9efc-6d17f1e59c8d@pengutronix.de>
Date: Fri, 21 Oct 2022 13:47:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRrPDLuzS3NSEO3DF4wF8NeXsoDiBh6hTCA5sxaKR1rKA@mail.gmail.com>
 <20221021114350.GA6702@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221021114350.GA6702@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_044737_620572_FDA2300D 
X-CRM114-Status: GOOD (  17.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: i.MX watchdog druver regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21.10.22 13:43, Sascha Hauer wrote:
> On Fri, Oct 21, 2022 at 12:53:59PM +0300, Alexander Shiyan wrote:
>> Hello!
>>
>> An error occurred while registering the i.MX watchdog driver:
>>
>> barebox 2022.06.0-00530-g31d9ff81c63c-dirty #44 Fri Oct 21 12:13:36 MSK 2022
>> ...
>> ERROR: imx-watchdog 73f98000.watchdog@73f98000.of: probe failed: No
>> such file or directory
>> ...
>>
>> Thought it was the result of a patch "watchdog: imxwd: get and enable clock",
>> and added the line:
>> clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
>> into the beginning of the mx5_clocks_common_init() function, but this
>> does not help...
> 
> If the missing clock is the problem then you also have to tell the clock
> core that the dummy clock shall be provided to the watchdog, something
> like:
> 
> 	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG1_BASE_ADDR, NULL);
> 	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG2_BASE_ADDR, NULL);
> 
> similar is missing for i.MX51 as well

But the imx50.dtsi device tree already has

	clocks = <&clks IMX5_CLK_DUMMY>;

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


