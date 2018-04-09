Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5ZE8-0003nv-Dq
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 16:01:06 +0000
Received: by mail-io0-x243.google.com with SMTP id b20so10206851iof.5
 for <barebox@lists.infradead.org>; Mon, 09 Apr 2018 09:00:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180403070427.terivivcpl2abuuf@pengutronix.de>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
 <20180326130915.8726-4-andrew.smirnov@gmail.com>
 <20180403070427.terivivcpl2abuuf@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 9 Apr 2018 09:00:52 -0700
Message-ID: <CAHQ1cqHR2vmy4HRFaCLQnVgn=YCG+YOfBgBj_uzw4mn66T1nvA@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] serial: Check result of console_unregister()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 3, 2018 at 12:04 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Mar 26, 2018 at 06:09:15AM -0700, Andrey Smirnov wrote:
>> In order to allow 'serdev' devices to prevent parent console device
>> removal and correspondign memory deallocation add code to all serial
>> driver to check result of console_unregister() and bail out early if
>> it is unsuccessful.
>>
>> One example of a use-case for this would be a reset handler relying on
>> a serdev device for transport. Without this patch underlying console
>> device would be removed and de-allocated before reset handler is even
>> run thus leading to unpredictable behaviour and crashes.
>
> Can't we make this sure at driver core level?

I need to be able to prevent serial driver's "remove" function from
ever executing to prevent any de-initialization/memory freeing from
happening. The simplest way to solve this in driver core that comes to
my mind is implementing simple reference counting API that children
could use to force driver core to bail out on removing parents if they
are still in use. Does that sound like a reasonable idea?

> So if a device decides not
> to return -EBUSY in the remove callback then the parent devices won't be
> removed?

Remove callback currently returns void, we could change it to return
int and use it to implement a sort of implicit refcounting, but doing
so would result in quite a bit of code churn since all of the current
drivers would have to be converted to return int in their .remove
callbacks. Would you rather I do this or explicit refcounting?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
