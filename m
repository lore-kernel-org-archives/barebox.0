Delivery-date: Mon, 23 May 2022 11:07:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt42E-006LQv-5Y
	for lore@lore.pengutronix.de; Mon, 23 May 2022 11:07:30 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt42C-00035h-FI
	for lore@pengutronix.de; Mon, 23 May 2022 11:07:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SezD/YNOqrPOA81bP7eM6Cb5RriEmOHCYgLEAjU1bU=; b=t4lpghH/G4eJlQ
	b9YRzUUOH+6VlKogsSqPdfKp1gwspxflDmlgzO36Knz+Ureu+8vsi9ycR51aB5QeipYk5rfD6NVfG
	9A+BAsTInvLSNgFGjhyxjCRulr+1ZAeovuG6JQTs+qkMwA+d/VpGbHiglqB7rbgnyGkSXJZi3iL1A
	Lc76dtH03ZepKrRksnRfFxxX0ZBo0jRDYyQQga9fUzkmxmYdtqJbz0YExbTG1OznYaELa1CFFa8Fb
	SZykbzn1SWmINxXb10JmYP/gS1WSIdPsiIalFUAzyTOknp6J3bxgHQcFXaHC4oBeVHwkAGSK1jAWk
	RFWApnaTbqO1kEmA+Pdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt40Y-002gj5-5S; Mon, 23 May 2022 09:05:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt3A5-002KV7-Ky
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 08:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=TPGwcnqUH0UVZefSxk/e5oPFDFRwxI57dBrBXmKHaM8=; b=pSRrGw873H2k5gZ0KnxYJzMFz4
 Wy6GmM7Far9ME7hLJf0GrkT03K+exm/RAfHA/gQfNSRGSGcVc0WQEj9OBeZS+7dmQqSSfKvIXSuL3
 rd4eUj3qbMq1JE6wZH7A0GtjP0Fp9g/OBxYuivzy4snX9Esd9XQrpgUmQthgrpUeJg32nsVU643Zj
 KAYA0P4bQUNysvaEGe3QO0jnTKbL/CH7uAxSrn/RSIgE+WQv8wmRbYQoV13Z+xXWGaWUV8gS8WAgm
 j+oyGhDNl3kQbTXOU3DWjaXEjFjEdjSR53qbewXMDgFhnFgGUmummz+RLKj0CYATaFhGYZHXsgUy8
 wzgvQUGg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt39v-000zOH-Nr
 for barebox@lists.infradead.org; Mon, 23 May 2022 08:11:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nt39t-00015e-4U; Mon, 23 May 2022 10:11:21 +0200
Message-ID: <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
Date: Mon, 23 May 2022 10:11:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220523072125.776735-1-a.fatoum@pengutronix.de>
 <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_091124_249916_F5EF03D5 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove duplicate status line on probe
 success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 23.05.22 10:00, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 22-05-23, Ahmad Fatoum wrote:
>> A successful probe results in two lines logged:
>>
>>   usb251xb usb2514b0: Hub configuration was successful.
> 
> The configuration (and this line) can be skipped if you specify
> "skip-config".
> 
>>   usb251xb usb2514b0: Hub probed successfully
>>
>> There is no case where the first line is printed, but not the other and
>> they say about the same thing anyway, so drop the latter.
> 
> The config step can fail. What about lower down the log level for the
> config step to dev_dbg() instead?

If the config step fails we will get an error message from driver core.
A driver with skip-config doesn't do anything useful that warrants
a probed successfully message, so I think it's safe to drop it.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/usb/misc/usb251xb.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
>> index 4871faf451ce..8d60f19e1355 100644
>> --- a/drivers/usb/misc/usb251xb.c
>> +++ b/drivers/usb/misc/usb251xb.c
>> @@ -639,8 +639,6 @@ static int usb251xb_probe(struct usb251xb *hub)
>>  		return err;
>>  	}
>>  
>> -	dev_info(dev, "Hub probed successfully\n");
>> -
>>  	return 0;
>>  }
>>  
>> -- 
>> 2.30.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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

