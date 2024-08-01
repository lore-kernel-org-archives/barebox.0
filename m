Delivery-date: Thu, 01 Aug 2024 12:55:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTSs-0056Xj-0A
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 12:55:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTSr-0000cn-Dv
	for lore@pengutronix.de; Thu, 01 Aug 2024 12:55:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uch3rbV+m2XAmHbTTbw7HGP5k3al9cao7PhtVShZ5SU=; b=24ZJolQWFWR1Z6a7xlRCQqITvw
	3Yn4LOpwNavTU9Zn2wZs2gkbsQoCye9T6P/cY/mU+52HJAcyZ4A7wjqymSgBTvtaMQRpTHOS1EyE4
	nHTGmOhNAkJJ28A6vp+mAd7O68XGFdnyIql1r0aHOcDWv0y1dIS6YrOgQbTqYu6xBr+sW9n6HBiRP
	vVZF5u+ShZL7U0eGG7h4mtI7XsatKYu2FTMlwI1bH1q9D/w1+7vbvdx0LtYmj6XovCtPuIOIFap50
	GcExl4bCk62Ok330qOyPLxAmVLNuRqJhgV+aIftk8KXNLtkUf5r5k8gGv5aPCPaAFWW71mnd6eXJR
	itZ3jzYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTSU-00000004omm-1YuS;
	Thu, 01 Aug 2024 10:54:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTSQ-00000004oli-3eg3
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 10:54:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZTSO-0000Zs-14; Thu, 01 Aug 2024 12:54:52 +0200
Message-ID: <d77a6d82-f7ef-4069-b1bd-a12c958eba09@pengutronix.de>
Date: Thu, 1 Aug 2024 12:54:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
 <20240731080510.364706-2-a.fatoum@pengutronix.de>
 <ZqtoulH-pIHmn54m@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZqtoulH-pIHmn54m@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_035454_942623_2A39CB30 
X-CRM114-Status: GOOD (  14.98  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/10] fs: give erase() a new erase_type parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 12:51, Sascha Hauer wrote:
> On Wed, Jul 31, 2024 at 10:05:01AM +0200, Ahmad Fatoum wrote:
>> diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
>> index a41ff22dcebc..208e0cd23c29 100644
>> --- a/drivers/usb/gadget/function/dfu.c
>> +++ b/drivers/usb/gadget/function/dfu.c
>> @@ -208,7 +208,7 @@ static void dfu_do_write(struct dfu_work *dw)
>>  
>>  	if (prog_erase && (dfu_written + wlen) > dfu_erased) {
>>  		size = roundup(wlen, dfu_mtdinfo.erasesize);
>> -		ret = erase(dfufd, size, dfu_erased);
>> +		ret = erase(dfufd, size, dfu_erased, ERASE_TO_WRITE);
>>  		dfu_erased += size;
>>  		if (ret && ret != -ENOSYS) {
>>  			perror("erase");
>> @@ -333,7 +333,7 @@ static void dfu_do_copy(struct dfu_work *dw)
>>  		return;
>>  	}
>>  
>> -	ret = erase(fd, ERASE_SIZE_ALL, 0);
>> +	ret = erase_flash(fd, ERASE_SIZE_ALL, 0);
> 
> Fixed this to:
> 
> 	ret = erase(fd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
> 
> Or should it be ERASE_TO_CLEAR instead?

Sorry, that this slipped through. It should be ERASE_TO_WRITE
to minimize impact on existing users.

ERASE_TO_CLEAR should be used for explicit erase operations.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



