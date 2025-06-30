Delivery-date: Mon, 30 Jun 2025 10:46:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWA9J-00CZ9l-0a
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:46:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWA9H-0007zm-31
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:46:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5nw0nzETQMbwQEENdqziGwQipKJhKHHoRtj2f6VawPI=; b=EUdychwsKoyWp+Z49hy462azc8
	Oh5LrID0+rO9LKa6Hx+kIOjLpr5smsX/Wm++d+rKWq9DqCbrnYpB5BGEUmYkhlkZyoDi1u3gexInj
	3X2HzIQiL0v56eKimC9pvb8YQf6u3Ctj8niYOkUhmbC/btSfmtW19RPyjb38ap7TBPS9pfxFMgS3H
	VxDYig00lGQkeQPXALhY/mCibugdJzxxqlMQvuiEJOUP6E8W093dkZdY50+kwDVdVnqNRf8FP3gwi
	IhoyYDdm/VUtEOT7Qs/BqVHKk+XO/JCj84AwG4k4npVEHRMqYchmFdbt+H6wpsN6FZ/J0KnjYW1C9
	LLH5FcaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWA8g-00000001eJi-3UQd;
	Mon, 30 Jun 2025 08:45:22 +0000
Received: from mail-108-mta216.mxroute.com ([136.175.108.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWA2I-00000001dNt-3cX8
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:38:48 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta216.mxroute.com (ZoneMTA) with ESMTPSA id 197bffd0f730008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Mon, 30 Jun 2025 08:38:42 +0000
X-Zone-Loop: d146e4a562998c4c64abead6442f6b1f18f59b03b8b9
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:Content-Type:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=5nw0nzETQMbwQEENdqziGwQipKJhKHHoRtj2f6VawPI=; b=LFICcQEAdi4XFS6gdfxPDHox5L
	lzcvhaHoQTfgyX9Z0BqcZ4jns9XGrKQyuTCmBDRdVESXR0P2JLdkHyQvBfR4qv+q0Pw9d5luXVsgT
	qmxInRDwxN2s+qIchyH+6/CN8UzQY44IDGEn2Z27CQjB30emIHaoT7lqbzUPDoLggGhwXwvWNv453
	j+1n8oAswPDiVVFH0raVFpXYtiAkUFqfPDDKuHFGbyER/YPLEUxdCh5blSTb6oc1WAiUFUxIgm6dj
	bnWmzJADO+G7RwzegtTjTDT/lP1mgzDeOryltiyFMh0Ods3F+vyF0C2Rc7u1ZoQPjTMsQXiS+QyeE
	GY0mHqyw==;
MIME-Version: 1.0
Date: Mon, 30 Jun 2025 16:38:40 +0800
From: bo@mboxify.com
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <aGJF8Ta5BPke9Rqz@pengutronix.de>
References: <20250627122811.1051283-1-bo@mboxify.com>
 <20250627122811.1051283-2-bo@mboxify.com> <aGJF8Ta5BPke9Rqz@pengutronix.de>
Message-ID: <f065da663548c14a49e3fe33850c663c@mboxify.com>
X-Sender: bo@mboxify.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_013846_998984_506DEA6C 
X-CRM114-Status: GOOD (  16.37  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] spi: convert transfer delay to new spi_delay struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2025-06-30 16:08, Sascha Hauer wrote:
> Hi,
> 
> On Fri, Jun 27, 2025 at 08:28:11PM +0800, Bo Sun wrote:
>> Replace the deprecated delay_usecs field with the new spi_delay struct
>> in spi_transfer structure. Update spi_transfer_one_message to use
>> spi_delay_exec and the mc13xxx driver to use the new structure.
>> 
>> Signed-off-by: Bo Sun <bo@mboxify.com>
>> ---
>>  drivers/mfd/mc13xxx.c | 5 ++++-
>>  drivers/spi/spi.c     | 4 +---
>>  include/spi/spi.h     | 8 ++++----
>>  3 files changed, 9 insertions(+), 8 deletions(-)
>> 
>> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
>> index 288bd407ff..393f163671 100644
>> --- a/drivers/mfd/mc13xxx.c
>> +++ b/drivers/mfd/mc13xxx.c
>> @@ -84,7 +84,10 @@ static int spi_rw(struct spi_device *spi, void * 
>> buf, size_t len)
>>  		.rx_buf = buf,
>>  		.len = len,
>>  		.cs_change = 0,
>> -		.delay_usecs = 0,
> 
> It's initialized to 0, so
> 
>              if (xfer->delay_usecs)
>                      udelay(xfer->delay_usecs);
> 
> will do just nothing.
> 
>> +		.delay = {
>> +			.value = 0,
>> +			.unit = SPI_DELAY_UNIT_USECS,
>> +		},
> 
> I just dropped this and adjusted the commit message accordingly.

Thanks, and sorry for the oversight.

Bo

> 
> Sascha


