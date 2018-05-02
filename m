Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22d.google.com ([2607:f8b0:4001:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDvr8-0004lE-8i
 for barebox@lists.infradead.org; Wed, 02 May 2018 17:47:55 +0000
Received: by mail-io0-x22d.google.com with SMTP id g14-v6so14800189ioc.7
 for <barebox@lists.infradead.org>; Wed, 02 May 2018 10:47:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180502102436.avptoe2l6h4hpkqy@pengutronix.de>
References: <20180421013338.10115-1-andrew.smirnov@gmail.com>
 <20180421013338.10115-3-andrew.smirnov@gmail.com>
 <20180502102436.avptoe2l6h4hpkqy@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 2 May 2018 10:47:42 -0700
Message-ID: <CAHQ1cqHvq-QcOA4buRq23Wueh5w8n=3KJZ+u5S-V3zMbs7mM9w@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] watchdog: Port RAVE SP watchdog driver from Linux
 kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, May 2, 2018 at 3:24 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Apr 20, 2018 at 06:33:38PM -0700, Andrey Smirnov wrote:
>> +static int rave_sp_wdt_set_timeout(struct watchdog *wdd,
>> +                                unsigned int timeout)
>> +{
>> +     struct rave_sp_wdt *sp_wd = to_rave_sp_wdt(wdd);
>> +
>> +     if (timeout < sp_wd->variant->min_timeout ||
>> +         timeout > sp_wd->variant->max_timeout)
>> +             return -EINVAL;
>> +
>> +     if (!timeout)
>> +             return rave_sp_wdt_stop(wdd);
>
> Since min_timeout is > 0 this is never reached. You should move this up.
>

Good catch! Will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
