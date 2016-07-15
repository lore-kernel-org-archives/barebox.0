Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x243.google.com ([2607:f8b0:4002:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOB03-0006av-K8
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 21:50:41 +0000
Received: by mail-yw0-x243.google.com with SMTP id l125so7547661ywb.1
 for <barebox@lists.infradead.org>; Fri, 15 Jul 2016 14:50:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160715055952.GG20657@pengutronix.de>
References: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
 <1468476665-26409-3-git-send-email-andrew.smirnov@gmail.com>
 <20160715055952.GG20657@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jul 2016 14:50:00 -0700
Message-ID: <CAHQ1cqHqUm3Bg4gYfqh45MQFgMsvSjDMrJWheTMJoqT25UMw1A@mail.gmail.com>
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
Subject: Re: [PATCH 3/7] mfd: syscon: Decouple syscon interface from platform
 devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jul 14, 2016 at 10:59 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Jul 13, 2016 at 11:11:01PM -0700, Andrey Smirnov wrote:
>> Follow Linux Kernel change introduced in
>> bdb0066df96e74a4002125467ebe459feff1ebef and avoid device/driver model
>> for DT-based platforms. See the original kernel commit for the rationale.
>>
>> Also make syscon_base_lookup_by_pdevname() behave the same way as its
>> kernel counterpart in the case whern "property" argument is NULL.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/mfd/syscon.c | 79 ++++++++++++++++++++++++++++++++++++++++------------
>>  1 file changed, 61 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
>> index ac46122..5fd22dd 100644
>> --- a/drivers/mfd/syscon.c
>> +++ b/drivers/mfd/syscon.c
>> @@ -17,15 +17,68 @@
>>  #include <driver.h>
>>  #include <malloc.h>
>>  #include <xfuncs.h>
>> -
>> +#include <of_address.h>
>>  #include <linux/err.h>
>>
>>  #include <mfd/syscon.h>
>>
>> +static LIST_HEAD(syscon_list);
>> +
>>  struct syscon {
>> +     struct device_node *np;
>>       void __iomem *base;
>> +     struct list_head list;
>>  };
>>
>> +static struct syscon *of_syscon_register(struct device_node *np)
>> +{
>> +     int ret;
>> +     struct syscon *syscon;
>> +     struct resource res;
>> +
>> +     if (!of_device_is_compatible(np, "syscon"))
>> +             return ERR_PTR(-EINVAL);
>> +
>> +     syscon = xzalloc(sizeof(*syscon));
>> +
>> +     if (of_address_to_resource(np, 0, &res)) {
>> +             ret = -ENOMEM;
>> +             goto err_map;
>> +     }
>> +
>> +     syscon->base = IOMEM(res.start);
>> +     syscon->np   = np;
>> +
>> +     list_add_tail(&syscon->list, &syscon_list);
>> +
>> +     return syscon;
>> +
>> +err_map:
>> +     kfree(syscon);
>> +     return ERR_PTR(ret);
>> +}
>> +
>> +void __iomem *syscon_node_to_base(struct device_node *np)
>
> This should either be static or the prototype added to include/
>

Oops, missed this one. It should be static. Will fix in v2.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
