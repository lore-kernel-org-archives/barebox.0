Delivery-date: Mon, 23 May 2022 13:51:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt6ad-006SOB-6K
	for lore@lore.pengutronix.de; Mon, 23 May 2022 13:51:11 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt6ab-0006OJ-69
	for lore@pengutronix.de; Mon, 23 May 2022 13:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKnGOkA3PVn2Or+AI2PS+OjkjEajjy4hb2GfwU4c4so=; b=LBFGt8w9VhBHie
	HAGPNMM9eNlqhJ4T7q16TzluMmKaG/s4uMH4AZRWAahX4JTs8EzbP7RNWWaxtyOH43CRtbQnbmNpT
	bfJcY7+JCBIDzSUAzlHL736M838zOpHQBdKW5ZjEk1O8e1hnaqhV8BawMNhm7TMAMmgGLufVBjT5T
	pK1xDhRV7WcIRDO+Ij7WQBwlvZQCeMfHFzZ9bLPYdtp3V/RlKjt3vOHsN0zEUs1To8cWtDc5V8qq+
	CgiXgNr8X476qx7a/vdTrBcLjr+e8xQR8rGMeS2zNC0yl2SznVkXc44jSzu0+QjokzbWenZa+vV5Q
	FRMXJFcGNMCLNCcDOHDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6Z9-003ql9-0U; Mon, 23 May 2022 11:49:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5x2-003Z0Y-0P
 for barebox@lists.infradead.org; Mon, 23 May 2022 11:10:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nt5x0-0008Mm-1r; Mon, 23 May 2022 13:10:14 +0200
Message-ID: <ec148873-3595-2226-2967-d2c0a330d44f@pengutronix.de>
Date: Mon, 23 May 2022 13:10:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
 <20220523092526.791716-5-a.fatoum@pengutronix.de>
 <20220523110405.GN25578@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220523110405.GN25578@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_041016_088166_4D889E06 
X-CRM114-Status: GOOD (  21.11  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/8] serial: imx: add $global.bootm.earlycon fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 23.05.22 13:04, Sascha Hauer wrote:
> On Mon, May 23, 2022 at 11:25:23AM +0200, Ahmad Fatoum wrote:
>> Allow barebox compute a suitable earlycon parameter.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/serial/serial_imx.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
>> index 6a933c930e9b..cf9c3f02a7ef 100644
>> --- a/drivers/serial/serial_imx.c
>> +++ b/drivers/serial/serial_imx.c
>> @@ -234,6 +234,8 @@ static int imx_serial_probe(struct device_d *dev)
>>  	cdev->flush = imx_serial_flush;
>>  	cdev->setbrg = imx_serial_setbaudrate;
>>  	cdev->linux_console_name = "ttymxc";
>> +	cdev->linux_earlycon_name = "ec_imx6q";
> 
> "ec_imx6q" sounds wrong for the older i.MX SoCs. I don't know how
> OF_EARLYCON_DECLARE works, but this:
> 
> OF_EARLYCON_DECLARE(ec_imx6q, "fsl,imx6q-uart", imx_console_early_setup);
> OF_EARLYCON_DECLARE(ec_imx21, "fsl,imx21-uart", imx_console_early_setup);
> 
> looks like it matches a device tree compatible entry. For the older SoCs
> you should likely use "ec_imx21".

Oh, I can fix this for v2.

> Anyway, plain "earlycon" just works, why the hassle?

Not all boards have a DT with stdout-path or probe from device tree.
I ran into this issue three times now (twice DT-enabled boards, but no
stdout-path, once on x86 with no DT) and figured it would be nifty
if barebox could just optionally generate it.

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

