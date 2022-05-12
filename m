Delivery-date: Thu, 12 May 2022 10:56:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np4cL-00AeOE-Q9
	for lore@lore.pengutronix.de; Thu, 12 May 2022 10:56:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np4cK-0001um-7a
	for lore@pengutronix.de; Thu, 12 May 2022 10:56:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeI1IHR3NuTLiuKgUm8uVCg96C1RjALmZudyw9TqnqM=; b=KDdWqXlN1NefUw
	yaWN7NSkY++z3YFoA1TFvZ+HKR9MLL60MPRDdMdYaz4E9nYyRmNS4quCc7tznKYJJ7Qkblsikh2VV
	W52hdnNypNGKP1xgf+zjIGR82ppnaZ9xTfrV1j1TFaeYbtSFpCUZNMddM9hQJmELZeY9csA13bcGY
	0HM6nNnUgucSpVsb5GSI25yjJ6QTiGnQ4/jkGWa9uYRAmhwHE1i4697qyNNjtxUi7sRhB3EVE2Wsn
	SDIBDc2DIhs9BsSdJQY7eRqpKyBqSGj4nxpB4lnUogM/K4qkZl77n4/4mxCUxVPVAr3bWk0BF8+rx
	O+6omF5Z+D5iv1ewoTJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np4aq-00B5Rw-Rx; Thu, 12 May 2022 08:54:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np4am-00B5QF-8f
 for barebox@lists.infradead.org; Thu, 12 May 2022 08:54:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1np4aj-0001YO-U3; Thu, 12 May 2022 10:54:38 +0200
Message-ID: <29a81f34-974c-b1b3-99ab-5d100304262d@pengutronix.de>
Date: Thu, 12 May 2022 10:54:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20220511100911.2009482-1-bst@pengutronix.de>
 <20220512070350.GB25578@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20220512070350.GB25578@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_015440_347716_B0B774AE 
X-CRM114-Status: GOOD (  16.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: handle NULL args in clk_set_parent()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 5/12/22 09:03, Sascha Hauer wrote:
> On Wed, May 11, 2022 at 12:09:11PM +0200, Bastian Krause wrote:
>> NULL struct clk pointers should be treated just as the Linux kernel clk
>> driver does [1]. The reasoning should also apply to the parent clk
>> argument.
>>
>> A NULL struct clk pointer can happen for example on the Freescale i.MX6
>> SABRE Smart Device Board if CONFIG_DRIVER_VIDEO_IMX_IPUV3 is disabled,
>> leading to assigned-clocks IMX6QDL_CLK_LDB_DI0_SEL and
>> IMX6QDL_CLK_LDB_DI1_SEL [2] being unavailable. Without this patch, the
>> board hangs while setting those assigned clock configurations since [3].
>>
>> [1] 89ac8d7ae1cd ("clk: handle NULL struct clk gracefully")
>> [2] dts/src/arm/imx6qdl-sabresd.dtsi
>> [3] f5eb5fddb4 ("clk: fix of clk set defaults when dev is a clk provider")
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>   drivers/clk/clk.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> Applied, thanks

Did you see the v2 of this patch?

Regards,
Bastian

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

