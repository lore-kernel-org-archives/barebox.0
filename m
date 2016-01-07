Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x236.google.com ([2607:f8b0:4001:c06::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHDps-0001lk-5h
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 16:54:52 +0000
Received: by mail-io0-x236.google.com with SMTP id 77so227324140ioc.2
 for <barebox@lists.infradead.org>; Thu, 07 Jan 2016 08:54:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160107095702.3791e54792c00077a6c6349e@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
 <1452147455-26524-3-git-send-email-andrew.smirnov@gmail.com>
 <20160107095702.3791e54792c00077a6c6349e@gmail.com>
Date: Thu, 7 Jan 2016 08:54:31 -0800
Message-ID: <CAHQ1cqFN9vKmkSqF9MhwcjwfOz2OUNq_TQO0yRwXwjPwJ_kzbw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] rtc-lib: Check tm_wday for validity in rtc_valid_tm()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jan 6, 2016 at 10:57 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Wed,  6 Jan 2016 22:17:32 -0800
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
>> RTC drivers rely on rtc_valid_tm() in order to make sure that no bogus
>> values from uninitialized HW registers get passed to the uppper layers.
>>
>> A somewhat contrived way to reproduce this problem with DS1307 RTC
>> would be to do the following:
>>
>> > rtc_write -b <bus> -a <addr> -r 3 0x00
>
>     rtc_write? Do you mean i2c_write here?

Yeah, that's a typo

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
