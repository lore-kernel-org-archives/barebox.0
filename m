Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clMYU-0001U9-92
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 21:22:04 +0000
Received: by mail-pg0-x242.google.com with SMTP id b5so1212030pgg.1
 for <barebox@lists.infradead.org>; Tue, 07 Mar 2017 13:21:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170307163531.GB26868@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170306225356.31475-33-andrew.smirnov@gmail.com>
 <20170307163531.GB26868@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 7 Mar 2017 13:21:40 -0800
Message-ID: <CAHQ1cqHuaA_3GXqqneUoBgH-xdzMBqTE7fHOP_Rx8cyoVEjVCg@mail.gmail.com>
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
Subject: Re: [PATCH 32/45] usb: ohci-at91: Check result of clk_get()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 7, 2017 at 8:35 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> On Mon, Mar 06, 2017 at 02:53:43PM -0800, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/usb/host/ohci-at91.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
>> index 0f5c8f1..c70d898 100644
>> --- a/drivers/usb/host/ohci-at91.c
>> +++ b/drivers/usb/host/ohci-at91.c
>> @@ -47,7 +47,16 @@ static int at91_ohci_probe(struct device_d *dev)
>>       struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
>>
>>       iclk = clk_get(NULL, "ohci_clk");
>> +     if (IS_ERR(iclk)) {
>> +             dev_err(dev, "Failed to get 'iclk'\n");
> iclk is the internal name. Woudl it make more sense to use "ohci_clk" here?
>

I was looking at the corresponding kernel driver and that's where I
got the name for the variable. If you think 'ohci_clk' is a better
name I have no problem changing it.

>> +             return PTR_ERR(iclk);
>> +     }
>> +
>>       fclk = clk_get(NULL, "uhpck");
>> +     if (IS_ERR(fclk)) {
>> +             dev_err(dev, "Failed to get 'fclk'\n");
> Likewise - uhpck?

Ditto here.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
