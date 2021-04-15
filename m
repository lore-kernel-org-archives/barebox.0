Delivery-date: Thu, 15 Apr 2021 09:54:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwpI-0006sr-3e
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:54:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwpH-0001aw-7R
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:54:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a7c6822QCM2YYPXKLpeXsNEwyjo93ERosasaO5xqSD8=; b=NMzoWrckkWMnt1V/Arxh3U8T4
	TQMBhxLkUNd//tKNXOr3f+hdN7Myex+22GTwwIQDJGESbz0tmKswRh0/GtN2KqYGQekesx97/XMoD
	ESLLpfKDfDo90RxVx/ZQmfwOXwTNsc/QgVJct2ZYHcJZk+XgLJ5grxunj3TVR66l52df8xSYSuoR1
	0OGBdimISri0JVQM4W9XVTGFlfbN4nR0bIe/2IernR7a+5H4qHDtjNNlYlspcjjNLMJhqDwmD3ftv
	ykLGJgbdr9fpyA5BuESc46WqdwMhYsFNoXfGx5FS7CK7rmrN2DWusQViS/QILJHPZB4fBjAtwE9nF
	yJ5uOikFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwoG-00FHWb-Nb; Thu, 15 Apr 2021 07:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwo8-00FHUw-IE
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:53:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWwez-0000Vf-Sf; Thu, 15 Apr 2021 09:43:34 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-3-a.fatoum@pengutronix.de>
 <20210415072544.GA19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9b68f2f3-fb1b-3c5a-d8a6-7c2098308050@pengutronix.de>
Date: Thu, 15 Apr 2021 09:43:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210415072544.GA19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_085301_368676_B7F67C27 
X-CRM114-Status: GOOD (  30.14  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/14] common: console: add log_dprint to print to file
 descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 15.04.21 09:25, Sascha Hauer wrote:
> On Tue, Apr 13, 2021 at 12:34:50AM +0200, Ahmad Fatoum wrote:
>> It can be useful to dump the log into the file, e.g. when doing an
>> update from a USB flash drive with no serial peer attached. Board code
>> could use log_dprint to dump the log onto the drive. Add a function
>> to facilitate this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/console_common.c | 15 +++++++++++++++
>>  include/printk.h        |  1 +
>>  2 files changed, 16 insertions(+)
>>
>> diff --git a/common/console_common.c b/common/console_common.c
>> index 3e0741572398..77ad4728fbfd 100644
>> --- a/common/console_common.c
>> +++ b/common/console_common.c
>> @@ -182,6 +182,21 @@ static int console_common_init(void)
>>  }
>>  device_initcall(console_common_init);
>>  
>> +int log_dprint(int fd)
> 
> This function isn't used anywhere in this series, I would prefer to
> merge it along with a user.

The user code won't be upstreamed. It's a vendor-specific update
mechanism. It's still a useful function to have. Recovery via USB
stick seems to be not uncommon (see protonic board code for example)
and boards implementing this would benefit from being able to write
to log and then dump the log onto the USB stick for evaluation.

> Is printing to an opened filedescriptor the most useful semantics of
> this function? This only seems to make sense when other things should be
> written to the file as well, otherwise I would assume to pass a path to
> this function which then handles open/close also.


Hmm, yes. I can make it write to a supplied filename instead.

> 
> Sascha
> 
>> +{
>> +	struct log_entry *log;
>> +	int nbytes = 0;
>> +
>> +	list_for_each_entry(log, &barebox_logbuf, list) {
>> +		int ret = dputs(fd, log->msg);
>> +		if (ret < 0)
>> +			return ret;
>> +		nbytes += ret;
>> +	}
>> +
>> +	return nbytes;
>> +}
>> +
>>  void log_print(unsigned flags, unsigned levels)
>>  {
>>  	struct log_entry *log;
>> diff --git a/include/printk.h b/include/printk.h
>> index 94a25ec9ebac..798acfdbf188 100644
>> --- a/include/printk.h
>> +++ b/include/printk.h
>> @@ -141,6 +141,7 @@ extern void log_clean(unsigned int limit);
>>  #define BAREBOX_LOG_PRINT_ALERT		BIT(1)
>>  #define BAREBOX_LOG_PRINT_EMERG		BIT(0)
>>  
>> +int log_dprint(int fd);
>>  void log_print(unsigned flags, unsigned levels);
>>  
>>  struct va_format {
>> -- 
>> 2.29.2
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

