Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22b.google.com ([2607:f8b0:4001:c06::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQm20-0004hW-77
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 01:14:52 +0000
Received: by mail-io0-x22b.google.com with SMTP id d63so38585817ioj.2
 for <barebox@lists.infradead.org>; Tue, 02 Feb 2016 17:14:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1454354334.18531.16.camel@rtred1test09.kymeta.local>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
 <20160201101007.GA4118@pengutronix.de>
 <1454354334.18531.16.camel@rtred1test09.kymeta.local>
Date: Tue, 2 Feb 2016 17:14:31 -0800
Message-ID: <CAHQ1cqGaR3h9DchcYPkTNvUqDN=dR1aDW+dXCNnS_E_2Gr+7Yg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [RFC 1/2] misc: Add MAC address mapper "driver"
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 1, 2016 at 11:18 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Mon, 2016-02-01 at 11:10 +0100, Sascha Hauer wrote:
>> On Sun, Jan 31, 2016 at 09:57:13PM -0800, Andrey Smirnov wrote:
>> > Add Barebox specific device tree provisions to allow specifying MAC
>> > addresses for network interfaces via device tree.
>> >
>> > +
>> > +Child node's required properties:
>> > +* ``network-interface``: phandle corresponding to network interface
>> > +* ``mac-location``: a pair of phandle to 'cdev' containing MAC address
>> > +  and offset withing that 'cdev'
>> > +
>> > +Example::
>> > +
>> > +  mac-address-map {
>> > +   compatible = "barebox,mac-address-map";
>> > +   nic@0 {
>> > +           network-interface = <&fec>;
>> > +           mac-location = <&ocotp 0x88>;
>> > +   };
>> > +  };
>>
>> I wonder if the correct way to do this wouldn't be nvmem, see
>> Documentation/devicetree/bindings/nvmem/nvmem.txt in the Kernel.
>> This would mandate a binding like:
>>
>>       ocotp {
>>               mac1: mac@88 {
>>                       reg = <0x88 0x6>;
>>               };
>>       };
>>
>>       &fec {
>>               nvmem-cells = <&mac1>;
>>               nvmem-cell-names = "mac-address";
>>       };
>
> The way imx28 works in the kernel is to just store the extension in the
> OCOTP.  The OUI is determined from the board's compatible property and a
> hard coded table in the kernel.  See arch/arm/mach-mxs/mach-mxs.c
>
> While, IMHO, the hard coded table is ugly, and should have died long
> ago, there are board that don't have the entire mac burned into OCOTP.
> It seems like neither of these bindings could support a board like this.
>

What if you created a 'nvmem' provider whose only job is to take a
blob from DT, a phandle to another 'nvmem' provider and to return the
combined data from both sources. Wouldn't it work for the use-case you
are describing?

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
