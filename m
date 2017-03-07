Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clMVJ-0007mN-IU
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 21:18:47 +0000
Received: by mail-pf0-x235.google.com with SMTP id v190so5338285pfb.1
 for <barebox@lists.infradead.org>; Tue, 07 Mar 2017 13:18:23 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170307205840.GA5513@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170307163416.GA26868@ravnborg.org>
 <CF3DB1E1-345D-45EB-BF5F-1CAEA118B0DA@jcrosoft.com>
 <20170307205840.GA5513@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 7 Mar 2017 13:18:22 -0800
Message-ID: <CAHQ1cqGExu7in-Na44wi+WWX6MyrkET3Rg15h_9Pe=OVLnQDYw@mail.gmail.com>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 7, 2017 at 12:58 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
>> >
>> > When booting from an SD-Card/NOR-Flash/USB would I then need
>> > to use at91bootstrap, or can I use only barebox?
>> >
>> > If I move forward with this and I can find an 9263
>> > evaluation kit I would then also update this.
>> On 9263 the sram is huge so you can build barebox as first stage
>
> Good - simplicity is good.
>

For  at91sam9x5ek I had to use at91bootstrap since there is first
stage loader in Barebox for it. I don't know about 9263, but I trust
Jean-Christophe to be correct on this one.

>>
>> I add this a long time ago on usb_a9263_bootstrap_defconfig
>> or other (all the EK).
>>
>> This will build a barebox that can load you image from multiple source in a sequence
>>
>> and then use a std barebox
>>
>> To switch to DT you will have to import the DT I did for the kernel
> OK, should be straighforward.
>
>> and replace the hw i2c by a i2c gpio as the i2c IP on at91 has a lot of quirks
>> and for barebox it will not make sense to port it
> Seems less straightforward but doable.
>

Not sure what the situation on 9263 is, but FWIW, kernel DT file from
the kernel for 9x5ek secifies I2C0 as GPIO bitbanged on, and I believe
I had it working so hopefully it would be just a DT related change
that you'd need to do.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
