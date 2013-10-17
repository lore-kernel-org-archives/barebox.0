Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWisp-0004Zp-Ml
 for barebox@lists.infradead.org; Thu, 17 Oct 2013 08:24:40 +0000
Received: by mail-bk0-f46.google.com with SMTP id 6so678119bkj.19
 for <barebox@lists.infradead.org>; Thu, 17 Oct 2013 01:24:15 -0700 (PDT)
Message-ID: <525F9EAB.50104@gmail.com>
Date: Thu, 17 Oct 2013 10:24:11 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
 <522DF740.9050503@gmail.com> <20131017080434.GL14042@pengutronix.de>
In-Reply-To: <20131017080434.GL14042@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] gpio: Add designware gpio controller support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10/17/2013 10:04 AM, Steffen Trumtrar wrote:
> On Mon, Sep 09, 2013 at 06:28:48PM +0200, Sebastian Hesselbarth wrote:
>> On 09/09/13 16:54, Sascha Hauer wrote:
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>   drivers/gpio/Kconfig   |   6 ++
>>>   drivers/gpio/Makefile  |   1 +
>>>   drivers/gpio/gpio-dw.c | 151 +++++++++++++++++++++++++++++++++++++++++++++++++
>>>   3 files changed, 158 insertions(+)
>>>   create mode 100644 drivers/gpio/gpio-dw.c
>>>
>>> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
>>> index d5ac532..18d3135 100644
>>> --- a/drivers/gpio/Kconfig
>>> +++ b/drivers/gpio/Kconfig
>>> @@ -54,6 +54,12 @@ config GPIO_TEGRA
>>>   	help
>>>   	  Say yes here to include the driver for the GPIO controller found on the
>>>   	  Tegra line of SoCs.
>>> +
>>> +config GPIO_DESIGNWARE
>>> +	tristate "Synopsys DesignWare GPIO driver"
>>
>> Sascha,
>>
>> I know DW's GPIO is also used on Armada 1500 which I currently work on.
>> Precisely, the IP is named dw-apb-gpio. Maybe the above should also
>> reflect APB.
>>
>> [...]
>>
>> Please add "snps,dw-apb-gpio", that's what the linux driver
>> will look for if make to pick it up for Armada 1500.
>>
>
> Are you talking about the 'old' linux driver that was posted sometime around
> January 2012 or are you working on your own?

Cannot recall the actual version or time posted. I didn't find time to
work on a linux driver for dw-apb-gpio, yet. My idea was to pick up the
latest driver posted plus make it more general. IIRC the one posted was
very limited to socfpga.

> Do you have a working pre-release version somewhere?

Sorry, nothing started, yet.

Are you going to work on it? If so, feel free to involve me in patches
and reviews.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
