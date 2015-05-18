Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg004.nifty.com ([202.248.44.42]
 helo=conssluserg004-v.nifty.com)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YuACB-0001GL-Ev
 for barebox@lists.infradead.org; Mon, 18 May 2015 01:50:21 +0000
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com
 [74.125.82.54]) (authenticated)
 by conssluserg004-v.nifty.com with ESMTP id t4I1mVwX027412
 for <barebox@lists.infradead.org>; Mon, 18 May 2015 10:48:32 +0900
Received: by wguv19 with SMTP id v19so109635719wgu.1
 for <barebox@lists.infradead.org>; Sun, 17 May 2015 18:48:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150517184704.9b64228117f4a3addf0f4f12@gmail.com>
References: <1431694967-2416-1-git-send-email-yamada.masahiro@socionext.com>
 <20150517184704.9b64228117f4a3addf0f4f12@gmail.com>
Date: Mon, 18 May 2015 10:48:30 +0900
Message-ID: <CAK7LNATTasdDYvzHxu=F8Jcmgh8v3nAQOvrJsrmN0moDDLh6Gw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH v2] include: introduce include/linux/io.h as a wrapper of
 asm/io.h
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

2015-05-18 0:47 GMT+09:00 Antony Pavlov <antonynpavlov@gmail.com>:
> On Fri, 15 May 2015 22:02:47 +0900
> Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
>
>> In the latest Linux coding style, <linux/io.h> should be included
>> rather than <asm/io.h>.  To follow this standard also in barebox,
>> add include/linux/io.h.  Currently, it just includes <asm/io.h>.
>
> Hmmm. Barebox already has include/io.h for the same purpose.
> And include/io.h is actively used:
>
> ~/barebox.git$ git grep "include <io.h>" | wc -l
> 474
>

We can replace all of them with sed easily.

Moreover, cpu_read{b,w,l} and cpu_write{b,w,l} turned out unnecessary after all.
Most of C sources use __raw_*.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
