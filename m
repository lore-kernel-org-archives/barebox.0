Delivery-date: Wed, 03 Mar 2021 23:05:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZcq-0000EN-3O
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 23:05:48 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZco-0001D9-OR
	for lore@pengutronix.de; Wed, 03 Mar 2021 23:05:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q+5caCYP1XXvDHYPBUX2A+wYKeABZAphpZ19nIJ6pdQ=; b=XATNAeJEOfWjhvzJ9pl1cypTA
	2W3f0BhygVoj6JZhH4t5IJJmykVTFe63QAWZ+MIVx7uQXWdDuiHlIF20ZRNCfQeeLimT8LWspud6R
	YHMWjKxbkAO0SYDofzv+fGJKb9hZajHtwS3Zjt2zcoSg2KNsc6xQHznjgpeIC/kScxMpUWOHk0QSd
	dQ+OJjorTzcA1qo/+hHuSO832UisxUzmgwjeV848JVujwWscQaT4oHaHZqWvsG6tgKXA+y/jlg5OT
	Xe9BhJGCbMnZAu5VCA7lQ6cv/erqqlpy955XBFRyNPHRhRqcqdXpZV/oEJxEn6NLiYagMQUQpIueI
	TgfUu2Vkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHZaG-006gv4-NS; Wed, 03 Mar 2021 22:03:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTAZ-005KbA-5f
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=reCVPSXFslAeN9TYsubwb39tvDW1xF3rXHapGfIVPT4=; b=TKwfpZCwrBRIJCmkvStX/zjOHq
 9fEzCDTcvCP5shYdPY5/3cZa7MVVpOdwiZkrMktgUjQ+Q8xQ+PvUARI2kqOpPcFjpeNj6vn/4k3M5
 WGj/JvNosDbUr4kuO8qgaI9IoDiYasrUnVDRv4HjLoVj6SdZF+WexKHAeMxzU3otUi6TsNDUYedSx
 xJAQBn2enZHZgPSE2Et2v8rQcSSm9jSDp7CLIA17dgPk2K3m3f4JvRFhCKCpKnxigJwbxEg2ULNVu
 kSlirilvhE25Tc7dpaw7TE12rZsGZQf+rkaPbPQgvrrFa5AAFHO/XjUKbKojS1rgI1ReCmasZdU+Z
 G/dMXpaQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHS0x-002sHf-IG
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:58:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lHS0w-0006ER-VT; Wed, 03 Mar 2021 14:58:10 +0100
To: Stafford Horne <shorne@gmail.com>
Cc: barebox@lists.infradead.org, sha@pengutronix.de,
 Jules Maselbas <jmaselbas@kalray.eu>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210303121547.GE365039@lianli.shorne-pla.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7846f3ba-297d-39f0-9e18-20ab97d3f366@pengutronix.de>
Date: Wed, 3 Mar 2021 14:58:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210303121547.GE365039@lianli.shorne-pla.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_135814_516597_C7751E45 
X-CRM114-Status: GOOD (  18.66  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Stafford,

On 03.03.21 13:15, Stafford Horne wrote:
> On Mon, Mar 01, 2021 at 12:00:55PM +0100, Ahmad Fatoum wrote:
>> Hello,
>>
>> This is v2 of barebox coroutine support:
>>     https://lists.infradead.org/pipermail/barebox/2021-February/035032.html
>>
>> As discussed with Sascha, if this is to be added, this should be added for
>> all architectures and not be optional. If we have this as integral part,
>> it means we can substitute coroutines for:
>>     - pollers: just wrap the code in a loop
>>     - async pollers: just call a delay function in the loop
>>     - workqueues: assert_command_context yields until in command context
>>
>> In addition, we will have much less work porting over threaded code from
>> Linux. See the referenced series for an example of a USB mass storage
>> gadget.
>>
>> To prepare for replacing them, the functionality is renamed to
>> bthreads (as in barebox threads) and is made separate from pollers.
>>
>> How to add new architecture support:
>>
>>   - Apply this series or check out https://github.com/a3f/barebox/tree/bthread
> 
> Now that I got a dev environment booting off master I have switched to your
> bthread branch.  I found there is already a commit to remove openrisc in next.
> 
> I will revert this in my branch.

Yes, please revert.

> Is there a timeframe you aim to have this all done?

I hoped it would be ready by middle of march, so it can go into next
before v2020.03.0, but no hurry. I can make it optional and withhold
adding code depending on bthreads until all architectures have support.

> Also, It seems networking it not working for me that is ok for the work here,
> but it will be something I have to look into next for OpenRISC.

Can't help here unfortunately. I haven't actually used this platform.

Cheers,
Ahmad

> 
> -Stafford
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

