Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJJlE-00057m-4Y
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 08:57:24 +0000
Received: by mail-bk0-f53.google.com with SMTP id d7so2720690bkh.40
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 01:56:56 -0700 (PDT)
Message-ID: <522EDED4.700@gmail.com>
Date: Tue, 10 Sep 2013 10:56:52 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
 <522DF740.9050503@gmail.com> <20130910074816.GE30088@pengutronix.de>
In-Reply-To: <20130910074816.GE30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09/10/2013 09:48 AM, Sascha Hauer wrote:
> On Mon, Sep 09, 2013 at 06:28:48PM +0200, Sebastian Hesselbarth wrote:
>> I have seen this driver and think it can be improved by exploiting
>> its config1/2 registers where synthesis settings are stored. Please
>> also look at [1] pp.1229; you can read out number of ports, port
>> width, interrupt, and debounce features.
>
> Ok, the port width feature is easy enough to implement. Will add it in
> the next version.
>
> I also added a check for multiple ports, but just ignore the additional
> ports for now since I don't know the register offsets and also have no
> hardware to actually test it (The SoCFPGA only has one port)

Ok, fair enough. IIRC the Armada 1500 uses multiple instances instead
of multiple ports, too.

>> Unfortunately, I am not ready to run barebox on Armada 1500 and I
>> don't have a socfpga to test. So if you are not eager to modify it now,
>> I can add config reg based read-out later.
>>
>> [1] http://www.altera.com/literature/hb/arria-v/hps.pdf
>>
>> [...]
>>> +static __maybe_unused struct of_device_id dwgpio_match[] = {
>>> +	{
>>> +		.compatible = "snps,dw-gpio",
>>> +	}, {
>>
>> Please add "snps,dw-apb-gpio", that's what the linux driver
>> will look for if make to pick it up for Armada 1500.
>
> I'll better just change it to "snps,dw-apb-gpio". There already is a
> dtsi file in the kernel which uses this binding (although it looks like
> it hasn't been approved by anyone)

The driver got Acks, but must have slipped through. I have seen your
v2 but it still uses "snps,dw-gpio".

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
