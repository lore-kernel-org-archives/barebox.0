Delivery-date: Tue, 29 Jun 2021 08:40:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ly7Q9-0008NA-Lu
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 08:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ly7Q8-0003dp-Rp
	for lore@pengutronix.de; Tue, 29 Jun 2021 08:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LOKQhteeCJiNzs5AVnmLKprsx+WPeUYkcO4mw0KKmE4=; b=vwrDHqRSzwj9Tc+QEd1ymScuN4
	ouSAXt3zw0z4wTZOZRbohATUL5tFwMcFx9/IeKVAXD9H+xQFqlmRfc952Rhbt4Z9UQZBxRQvVayVC
	gKehFoO8MzJGu62AXsgsbIrcWDCPsYznNP4fbWOW8LZ0m/LbVPykI7/Wql+Hlwjt2fNJlHLCHWOMK
	51e/evu3lBiL6NLOp6hRxq1J5TMZAnHmXKwqFc7MDzcCLcpohrl6a/QVN21njrYsxjq3JSp5hk8P5
	ZZvqonEIjpVZsLnr/h/4Os/XO5ArZpzC2G1iNu8N4KSI0N42PQAy0doku6ReUOoFOuw3J8fs3Es2D
	zVOgeROg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly7Ou-009xDA-PI; Tue, 29 Jun 2021 06:39:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly7Op-009xBy-3K
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 06:39:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ly7On-0003Tr-RL; Tue, 29 Jun 2021 08:39:09 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210628070345.13838-1-a.fatoum@pengutronix.de>
 <20210628203751.GS9782@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <01c3e883-7041-678e-3e65-3e645b51b508@pengutronix.de>
Date: Tue, 29 Jun 2021 08:39:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628203751.GS9782@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_233911_195694_1CB1845A 
X-CRM114-Status: GOOD (  18.85  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] driver: add CONFIG_DEBUG_PROBES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.21 22:37, Sascha Hauer wrote:
> On Mon, Jun 28, 2021 at 09:03:45AM +0200, Ahmad Fatoum wrote:
>> CONFIG_DEBUG_INITCALLS can be very useful to roughly pinpoint what
>> causes barebox to hang. With deep probe, most probes run at the same
>> initcall level making the debug option much less useful.
>>
>> Add a new CONFIG_DEBUG_PROBES that will instead log whenever a probe is
>> invoked. The text's horizontal alignment is increased with each
>> recursive probe making the option suitable for debugging some deep probe
>> issues as well.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/Kconfig        |  4 ++++
>>  drivers/base/driver.c | 17 +++++++++++++++--
>>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> Nice. I applied with one change I hope you're ok with:
> 
>> +	depth++;
>> +
>> +	pr_report_probe("%*sprobe-> %s\n", depth, "", dev_name(dev));
> 
> I changed the indentation to 4 here.

Fine by me.

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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

