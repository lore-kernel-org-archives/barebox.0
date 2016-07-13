Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x233.google.com ([2607:f8b0:4002:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNMT5-0004TE-KG
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 15:53:00 +0000
Received: by mail-yw0-x233.google.com with SMTP id j17so47627654ywg.0
 for <barebox@lists.infradead.org>; Wed, 13 Jul 2016 08:52:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160713130448.GC20657@pengutronix.de>
References: <1468395431.547554214@f355.i.mail.ru>
 <20160713130448.GC20657@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jul 2016 08:52:37 -0700
Message-ID: <CAHQ1cqFe+TDgH1XTfk85h5Tkw0UHu_tZX9Ut7i2ghX4H0iTpWA@mail.gmail.com>
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
Subject: Re: Patch "syscon: Decrease driver registration priority" breaks
 clps711x target
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jul 13, 2016 at 6:04 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Jul 13, 2016 at 10:37:11AM +0300, Alexander Shiyan wrote:
>> Hello All.
>>
>> Patch "syscon: Decrease driver registration priority" breaks clps711x target.
>> Previously, the syscon device initialized at "core_initcall", that did not cause problems.
>> Now the device is initialized at "device_initcall" level, but clps711x uses syscon for
>> the serial, so serial device initialized at "console_initcall" level.
>> Any ideas?
>
> We could move syscon back to core_initcall level and in the syscon
> driver use dev_get_resource() instead of request_iomem_region().

Right now the driver uses both, so if we just drop the call to
request_iomem_region that was problematic for me on i.MX6, that should
resolve the issue. I think this would also bring the behavior of
syscon driver closer to what it does in Linux kernel land. The only
negative effect of that change I think would be that on the platforms
where syscon driver controls that region of memory, it no longer would
be reported as such by "iomem".

Apologies for breaking your use-case, Alexander.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
