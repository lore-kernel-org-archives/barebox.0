Delivery-date: Tue, 22 Aug 2023 18:37:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYUO0-00513O-Iv
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 18:37:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYUNy-0005e4-HG
	for lore@pengutronix.de; Tue, 22 Aug 2023 18:37:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1E97RfWmayTCrrQtQO6DALKoJhftNwURSfPY2l0Gnns=; b=S3JOYNhjzU61tcHW0SiGQpb+qp
	AARfBlGwy2HxBnLvSb39AaopkHP4Kb9ddLpatZuCYxsRwDCcibWlbSeLTxampf2WFDJgQLKC3yBe9
	zGU9j38q7EPx/Hs2DUx/hoeteJo/stPiR0c6rNpOH+87TV3SMJRSkdHJfaJWtYdQmeeue1HcqL4OK
	U7Esp1u1TeDT0ZGXNW1Z73sjCH4U6ex2zB8GAeYovevGMKSZW8GRXV6L/I23pBqJe9D4RHYrUbWFq
	ERVrD+V6Y66jeVITXOCCqq1w3cYRjRR9pGe4WlUG/lXKllZsdJT++ivVNALHk/Hy3HhNpq6ZCzFK4
	p4bVZcqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYUMa-00GVjv-2Z;
	Tue, 22 Aug 2023 16:36:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYUMX-00GVj4-1p
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 16:36:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qYUMS-0005XF-HQ; Tue, 22 Aug 2023 18:36:08 +0200
Message-ID: <b8c922b6-a596-447a-6f2e-b169c4534123@pengutronix.de>
Date: Tue, 22 Aug 2023 18:36:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
 <20230822142807.GA16522@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230822142807.GA16522@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_093613_603349_52D00DE4 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] param: drop priv from dev_add_param_string_ro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.08.23 16:28, Sascha Hauer wrote:
> On Tue, Aug 22, 2023 at 09:47:36AM +0200, Ahmad Fatoum wrote:
>> dev_add_param_string_ro() is used nowhere, but when we do, having an
>> unused priv parameter serves no purpose, so drop it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/param.h | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/include/param.h b/include/param.h
>> index 76a077fd758a..5d4f7f3db52f 100644
>> --- a/include/param.h
>> +++ b/include/param.h
>> @@ -334,8 +334,7 @@ static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
>>  
>>  static inline struct param_d *dev_add_param_string_ro(struct device *dev,
>>  						      const char *name,
>> -						      char **value,
>> -						      void *priv)
>> +						      char **value)
>>  {
>>  	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
>>  }
> 
> Wouldn't it be better to pass *priv on to dev_add_param_string() instead
> of removing it?

No, because it would be unused: The non-overridable setters and getters
won't access it.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



