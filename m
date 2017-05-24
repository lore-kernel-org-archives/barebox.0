Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22e.google.com ([2607:f8b0:400e:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDK06-00021L-7U
 for barebox@lists.infradead.org; Wed, 24 May 2017 00:18:07 +0000
Received: by mail-pf0-x22e.google.com with SMTP id 9so129401063pfj.1
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 17:17:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <402515be-7bed-cbad-449d-907747f0b513@cogentembedded.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-4-andrew.smirnov@gmail.com>
 <402515be-7bed-cbad-449d-907747f0b513@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 17:17:45 -0700
Message-ID: <CAHQ1cqHtZ6O3fNzfy39z_HQqfYsyYgybiKZYwdKMX45EHw94=Q@mail.gmail.com>
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
Subject: Re: [PATCH 4/4] usb-nop-xceiv: Add support for 'reset-gpios' binding
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, May 22, 2017 at 11:55 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>> +
>> +     if (gpio_is_valid(nopphy->reset)) {
>> +             /*
>> +              * Let's wait for 100 ms before deasserting reset line
>> +              */
>> +             mdelay(100);
>> +             gpio_direction_output(nopphy->reset, 0);
>> +     }
>
> Why not gpio_set_value() here?  Direction is already configured at this
> stage.

No reason, really. I'll fix it in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
