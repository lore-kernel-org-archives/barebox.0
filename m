Delivery-date: Thu, 15 Apr 2021 09:40:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwcO-0006ry-LG
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:40:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwcN-0000F5-SF
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:40:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CrTRcvjVPml28B8R3q/W4Wf33N4UE80VoIWu/zL2HJU=; b=D36M/g7S+w7LG+WrVYNPxXoRz
	cNIUc/L7294alWAR8h1a0Bv9Gi8nHX7MX40qfzqfXQcMtkQGqnBv9TfL4tisGTTDVtJizdTlNJeD5
	uQZWmhz1/AeHNH+azD+QV5y4m7M7KPtCUX7IHF0QwfYu+6JB4afrrNERtcgs68Fw61epflf2CDEOX
	N3Fu3a+BNtgNy6u0YmUXXS26tGcb8EsKZ7c3L/76cVacwjj5mZMC4bxzA5JkLp16wvSjHnbvE9m9q
	Ov5TWT43Cf8W+4hAmbNzp/DRSfeExG+02o35QipTVX6h4gOxunAPVgYy+ZRojW1enpFpNRAe3DO3x
	swr0aT2EA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwaw-00FFG9-VN; Thu, 15 Apr 2021 07:39:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwat-00FFFy-OT
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 07:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=qjoT6a89uq+LbwSREctsCepVW8aKBaWyI4yQ6phrQNk=; b=t5lp31sHIqNJO2qLKewNTUMzjd
 /egOwrBMJIDMQODQKIC8YIft9pYUL4hsQqRHiPNkYMAgyyqTlYVomESBw80k+CctaGQ6mw3gDET5f
 CRl/ZE+VEm/M6f+IswJgXk1Aq4JeOPMyKmLcnxSxfZzDDYjOSfq1XNpEmNOt/YKaaEBdMbObNZw6S
 EMiM2hVo3vrGTBPliF/s2qnjZAvfHmRD7kyAqSOtieczhmyP8DYdugnSVHLuwwZ9fyNewP64YTdQw
 ChoWmovziKBXRB4sQcuRWF+cHiv9r5uyn496jSg3eMy5jzX715SJSLzlOCoGFaA0WBSwqMg5iCGFE
 74Jka/QA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwar-008Lhb-3r
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:39:18 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWwap-0008ON-Qo; Thu, 15 Apr 2021 09:39:15 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-2-a.fatoum@pengutronix.de>
 <20210415072911.GB19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3cb43395-74c9-1782-e660-097d052d43d9@pengutronix.de>
Date: Thu, 15 Apr 2021 09:39:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210415072911.GB19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_003917_190789_FD0DD114 
X-CRM114-Status: GOOD (  21.46  )
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
Subject: Re: [PATCH 01/14] show_progress: add system wide progress stage
 notifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 15.04.21 09:29, Sascha Hauer wrote:
> On Tue, Apr 13, 2021 at 12:34:49AM +0200, Ahmad Fatoum wrote:
>> Use case is e.g. board code that wants to register a client to light
>> status LEDs to indicate system state when no serial output is available.
>> This functionality doesn't increase code size due to linker GC when
>> CONFIG_PROGRESS_NOTIFIER is disabled.
>>
>> There is a generic progress notifier provided that just logs the
>> status. This could be shared with the booted kernel via pstore or
>> the log as a whole written to a system setup USB drive.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/progress.h  | 43 +++++++++++++++++++++++++++++++++++++++++++
>>  lib/Kconfig         |  6 ++++++
>>  lib/show_progress.c | 28 ++++++++++++++++++++++++++++
>>  3 files changed, 77 insertions(+)
>>
>> diff --git a/include/progress.h b/include/progress.h
>> index 50b15fb12b4c..7230bd3a9bd5 100644
>> --- a/include/progress.h
>> +++ b/include/progress.h
>> @@ -3,6 +3,8 @@
>>  #define __PROGRSS_H
>>  
>>  #include <linux/types.h>
>> +#include <notifier.h>
>> +#include <errno.h>
>>  
>>  /* Initialize a progress bar. If max > 0 a one line progress
>>   * bar is printed where 'max' corresponds to 100%. If max == 0
>> @@ -15,4 +17,45 @@ void init_progression_bar(loff_t max);
>>   */
>>  void show_progress(loff_t now);
>>  
>> +extern struct notifier_head progress_notifier;
>> +
>> +enum progress_stage {
>> +	PROGRESS_UNSPECIFIED = 0,
>> +	PROGRESS_UPDATING,
>> +	PROGRESS_UPDATE_SUCCESS,
>> +	PROGRESS_UPDATE_FAIL,
>> +};
> 
> Neither the commit message nor the function names say it, but here it
> seems the progress is only used in context of a software update. Do you
> anticipate going other types of progress here as well?

I don't need any other progress stages myself. If the need arises, they
can be added though. Progress notifiees are supposed to ignore stages
they don't know about.

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

