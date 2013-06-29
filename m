Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsxZa-0001QM-L5
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 16:00:27 +0000
Received: by mail-we0-f170.google.com with SMTP id w57so2117455wes.29
 for <barebox@lists.infradead.org>; Sat, 29 Jun 2013 09:00:04 -0700 (PDT)
Message-ID: <51CF0481.8010907@gmail.com>
Date: Sat, 29 Jun 2013 18:00:01 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372443947-12599-3-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130629084953.GN516@pengutronix.de>
In-Reply-To: <20130629084953.GN516@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/6] clocksource: orion: add DT support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 06/29/2013 10:49 AM, Sascha Hauer wrote:
> On Fri, Jun 28, 2013 at 08:25:43PM +0200, Sebastian Hesselbarth wrote:
>> This adds device tree support to orion timer and also converts clk_get
>> to clk_lookup to find TCLK without device name reference.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>> ---
>> Cc: Thomas Petazzoni<thomas.petazzoni@free-electrons.com>
>> Cc: barebox@lists.infradead.org
>> ---
>>   drivers/clocksource/orion.c |    8 +++++++-
>>   1 files changed, 7 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
>> index e3db845..ed71fa4 100644
>> --- a/drivers/clocksource/orion.c
>> +++ b/drivers/clocksource/orion.c
>> @@ -49,7 +49,7 @@ static int orion_timer_probe(struct device_d *dev)
>>   	uint32_t val;
>>
>>   	timer_base = dev_request_mem_region(dev, 0);
>> -	tclk = clk_get(dev, "tclk");
>> +	tclk = clk_lookup("tclk");
>
> Please don't do this. I don't know how it is done in the kernel
> for orion atm, but you could for example help yourself with
> clkdev_add_physbase until the clocks can be properly looked up from
> the devicetree.

Ok, clock provider for MVEBU barebox is still missing. But in the
meantime, I will use clkdev_add_physbase or any equivalent workaround
until full clock provider will be available.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
