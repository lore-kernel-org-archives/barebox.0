Delivery-date: Tue, 09 May 2023 08:12:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwGaL-00BCVL-5W
	for lore@lore.pengutronix.de; Tue, 09 May 2023 08:12:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwGaJ-0004PE-3G
	for lore@pengutronix.de; Tue, 09 May 2023 08:12:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-reply-to:Date:Subject:Cc:To:From:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUsnJ89Zb+YoF1/NAzYhcsHs/ld8ClY+fdjGk4chj+g=; b=Qz6cx+bE6509b+NgIFhbuvZZMV
	cZGreh5dhgHLslw4Bf0psFHtiguS6J3QXTJPsCBZ9VxhC+XHXzg/Om44J5oC+7QBv+bw764kgVi6B
	TXgsQqgOrpNbLfPnZ10g9/zFK58fb4fq1hf1xN6LQaphB1xmlrQD2vhvXRwBOOwVAvlky1EuruLQD
	U820Yl0rd2LpQ8AuruN5frH0UqxsszBKvvZ79W78DmW48mLIrIwoLiEIgibsTb2UN3iNdpWYPm9EO
	7MFvq9zHb1R9jHSaDv7dTI5iQlXpKERi4xFCfp5DfHA9ljnXJNddmSO53zlKpmYsQsx/KpbkcKaS6
	6sZUb7HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGZJ-002Nry-24;
	Tue, 09 May 2023 06:11:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGZH-002NrX-0r
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 06:11:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=igor.pengutronix.de)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1pwGZD-0004GB-K6; Tue, 09 May 2023 08:11:19 +0200
References: <20230508072431.94874-1-s.trumtrar@pengutronix.de>
 <04c84b06-68df-2366-04bc-135f48ce9119@pengutronix.de>
User-agent: mu4e 1.10.3; emacs 30.0.50
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Kai Assman <kai.assmann@de.bosch.com>, barebox@lists.infradead.org
Date: Tue, 09 May 2023 08:09:05 +0200
In-reply-to: <04c84b06-68df-2366-04bc-135f48ce9119@pengutronix.de>
Message-ID: <87pm7a2fw9.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_231123_328336_FC4FA05B 
X-CRM114-Status: GOOD (  19.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: zynq: eval ps-clock-frequency from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


On 2023-05-08 at 13:17 +02, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> On 08.05.23 09:24, Steffen Trumtrar wrote:
>> From: Kai Assman <kai.assmann@de.bosch.com>
>>
>> Currently the ps_clk_rate is locked to 33.3MHz. The devicetree
>> provides a property "ps-clock-frequency" that specifies this clock.
>>
>> If the property is found, overwrite ps_clk_rate otherwise stay at the
>> default 33.3MHz
>
> The commit message reads as is this is an upstream binding, but I find no
> usage, documentation or driver code parsing it in Linux v6.4-rc1.
>
> Is this a new barebox-specific binding? If so, the commit message should be
> reworded to make this clear. You can also drop a short .rst file into
> Documentation/devicetree/bindings/clocks to describe your new property.
>

Ha, you are right. I could have sworn to have seen this binding already
and didn't check :(

I'll change that.

>> Signed-off-by: Kai Assmann <kai.assmann@de.bosch.com>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>  drivers/clk/zynq/clkc.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
>> index 8e4beda295..37a0fbadb5 100644
>> --- a/drivers/clk/zynq/clkc.c
>> +++ b/drivers/clk/zynq/clkc.c
>> @@ -388,6 +388,9 @@ static int zynq_clock_probe(struct device *dev)
>>  			return PTR_ERR(parent_res);
>>
>>  		slcr_offset = parent_res->start;
>> +
>> +		of_property_read_u32(dev->device_node, "ps-clock-frequency",
>> +				     (u32 *)&ps_clk_rate);
>
> Please do not cast compiler warnings away. You should change the type of
> ps_clk_rate instead to u32, so this code is 64-bit-safe.

Ack.


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


