Delivery-date: Tue, 14 Sep 2021 11:05:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4NM-0003e1-0z
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 11:05:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4NK-0000jw-Ug
	for lore@pengutronix.de; Tue, 14 Sep 2021 11:05:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P/RjU87MmQr2GH8jkRd9I6c4rRVrzIqo7miLg8XfVSk=; b=bXFjpRVyfRNrf762ugordkn9N+
	ZcNF506ArN6Ey+ydbI67Ng4pF1+j/9g61VzJ/h+W1IxK2iFEuh/aNWEu/tPe5ZHsKp63Nb4pG9KDw
	V3RngWCGQNAWDuR/V7cSzjol8WPtM8nq1G3u2AqFfXF9o/aQ0aLtRyos4bnkF4HHGsfunXf16KHxa
	76zvxTvXZh0XWhHZUl4xXQFPp/Ra+DkNcMi0GBKC3vpHrgAA1PTnw8EJ7+lwHAHW5bsxHcEzwpFsC
	CBIsjPpAf5CMtKnFmwiDCALdEp2ABWLUzL5KndGyTsnskHhfAj2574zFeuvoxc7gggXgZEZHfRh2l
	R/hGS5YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ4Lr-004q8r-OG; Tue, 14 Sep 2021 09:03:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ4Kf-004pX8-Cs
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 09:02:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQ4Kd-0000F5-V4; Tue, 14 Sep 2021 11:02:24 +0200
To: Roland Hieber <rhi@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210913083019.364599-1-ahmad@a3f.at>
 <20210914085553.ggnadiwz3ldjvr2o@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <201c33e8-a3ff-406d-7647-28bf4cf6d6a4@pengutronix.de>
Date: Tue, 14 Sep 2021 11:02:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210914085553.ggnadiwz3ldjvr2o@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_020225_503160_FDDC0D6B 
X-CRM114-Status: GOOD (  18.07  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fs: remove unused struct fs_device_d::parent_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.09.21 10:55, Roland Hieber wrote:
> On Mon, Sep 13, 2021 at 10:30:19AM +0200, Ahmad Fatoum wrote:
>> The parent_device member is unused anywhere, so drop it.
> 
> s/is/isn't/?

is unused == isn't used..?

> 
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  fs/fs.c      | 1 -
>>  include/fs.h | 1 -
>>  2 files changed, 2 deletions(-)
>>
>> diff --git a/fs/fs.c b/fs/fs.c
>> index b6431227d60c..e6fd57b8ac97 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -813,7 +813,6 @@ int fsdev_open_cdev(struct fs_device_d *fsdev)
>>  	}
>>  
>>  	fsdev->dev.parent = fsdev->cdev->dev;
>> -	fsdev->parent_device = fsdev->cdev->dev;
>>  
>>  	return 0;
>>  }
>> diff --git a/include/fs.h b/include/fs.h
>> index 5811199c0161..cd5eb571e08e 100644
>> --- a/include/fs.h
>> +++ b/include/fs.h
>> @@ -101,7 +101,6 @@ struct fs_device_d {
>>  	struct cdev *cdev;
>>  	bool loop;
>>  	char *path;
>> -	struct device_d *parent_device;
>>  	struct list_head list;
>>  	char *options;
>>  	char *linux_rootarg;
>> -- 
>> 2.33.0
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

