Delivery-date: Tue, 13 Sep 2022 10:50:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1cQ-003Rap-UJ
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:50:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1cO-00066H-Px
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:50:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oyrdS059sLqwuztvd7mFyCUCCDRFzzv0IRFyKHxgBec=; b=vElnRN63Y7fvMxQHLS7JnOcp3a
	erlBimmHSsCflWr2RRzhHp2woeZpq+FstmjHt1bxM8rQooQgq1Kv+Yj7xVv/lb+HeNMMcg/aKiC55
	IY5DOzu/AGGibSfL0qP6YjV3c4M45uegQBqdwHIgvhHmk4T7o9b44Wg4rGibVftB/g8qASJwyzPwA
	yLUbW4V3/2XCSPb2/mWnWys6tCG6MQj7clrhPwdvb/UEZ1PmYcbtYBx8Sffqw8x7wd9JfyxalNo8b
	zBdP2KESIT9idatUakK1e+LOv8nWOl5ay53H2KPShBPwEH907i+Pz0IqTzmGbXli8AF7FP1VDRdar
	j8zROh3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1am-004c8Q-E4; Tue, 13 Sep 2022 08:48:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1Zw-004bZ5-IQ
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:47:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oY1Zu-0005qr-IJ; Tue, 13 Sep 2022 10:47:34 +0200
Message-ID: <ce1c1bd7-40de-51f4-fa37-632fa319b9af@pengutronix.de>
Date: Tue, 13 Sep 2022 10:47:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de
References: <20220811135804.271071-1-a.fatoum@pengutronix.de>
 <20220913083751.GE12909@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220913083751.GE12909@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_014736_789718_63A528A7 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: ubifs: remove always-false check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.09.22 10:37, Sascha Hauer wrote:
> On Thu, Aug 11, 2022 at 03:58:04PM +0200, Ahmad Fatoum wrote:
>> GCC correctly warns that two bit wide compr_type can't
>> exceed or be equal to UBIFS_COMPR_TYPES_CNT (== 4).
>>
>> Remove the check. The check is there in the kernel as well,
>> but the warning is disabled there.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  fs/ubifs/super.c | 5 -----
>>  1 file changed, 5 deletions(-)
>>
>> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
>> index b48e21fae636..6a0074bd1a5c 100644
>> --- a/fs/ubifs/super.c
>> +++ b/fs/ubifs/super.c
>> @@ -86,11 +86,6 @@ static int validate_inode(struct ubifs_info *c, const struct inode *inode)
>>  		return 1;
>>  	}
>>  
>> -	if (ui->compr_type >= UBIFS_COMPR_TYPES_CNT) {
>> -		ubifs_err(c, "unknown compression type %d", ui->compr_type);
>> -		return 2;
>> -	}
>> -
> 
> Although Richard decided for the Kernel to keep the check I decided to
> take this patch for barebox. The warning is annoying and doesn't tell us
> anything. Once this is solved in the Kernel we'll get the solution with
> the next UBIFS sync.

My thoughts exactly.

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


