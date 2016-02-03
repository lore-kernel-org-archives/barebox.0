Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22f.google.com ([2607:f8b0:4001:c06::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR3qs-00048s-9o
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 20:16:35 +0000
Received: by mail-io0-x22f.google.com with SMTP id f81so68991172iof.0
 for <barebox@lists.infradead.org>; Wed, 03 Feb 2016 12:16:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1454524823.18531.50.camel@rtred1test09.kymeta.local>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
 <20160201101007.GA4118@pengutronix.de>
 <1454354334.18531.16.camel@rtred1test09.kymeta.local>
 <CAHQ1cqGaR3h9DchcYPkTNvUqDN=dR1aDW+dXCNnS_E_2Gr+7Yg@mail.gmail.com>
 <1454524823.18531.50.camel@rtred1test09.kymeta.local>
Date: Wed, 3 Feb 2016 12:16:13 -0800
Message-ID: <CAHQ1cqHVz769E95=0Z79xiL94W1TjikCCPWfQ4ad+0U7HFUp4w@mail.gmail.com>
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

On Wed, Feb 3, 2016 at 10:40 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2016-02-02 at 17:14 -0800, Andrey Smirnov wrote:
>> On Mon, Feb 1, 2016 at 11:18 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
>> > The way imx28 works in the kernel is to just store the extension in the
>> > OCOTP.  The OUI is determined from the board's compatible property and a
>> > hard coded table in the kernel.  See arch/arm/mach-mxs/mach-mxs.c
>> >
>> > While, IMHO, the hard coded table is ugly, and should have died long
>> > ago, there are board that don't have the entire mac burned into OCOTP.
>> > It seems like neither of these bindings could support a board like this.
>> >
>>
>> What if you created a 'nvmem' provider whose only job is to take a
>> blob from DT, a phandle to another 'nvmem' provider and to return the
>> combined data from both sources. Wouldn't it work for the use-case you
>> are describing?
>
> Not sure what it would look like, example?

I am thinking of something similar to what you describe in "nvmem"
thread. You'd have a software scatter-gather "engine" that would just
take a description of multiple small chunks of memory and represent it
as a continuous property accessible via "nvmem" API. Something like:

mac-address-node {
           compatible = "nvmem-sg"

           composite_mac: mac@0 {
                     reg = <&nvmem1_cell 0x0 0x4
                                 &nvmem2_cell 0x0 0x2
                               >;
           };
 };

So you'd get a 'composite_mac' nvmem-cell that in term is comprised of
4 bytes @ offset 0x0 of "nvmem1_cell" and 2 bytes @ offset 0x0 of
"nvmem2_cell".


>
> One thing about the imx28 OCOTP is that the entire MAC isn't in the
> OCOTP.  The OUI part comes from "elsewhere".
>
> In the current kernel, that elsewhere is a hardcoded /board/compatible
> to OUI mapping.  What I did was use the mac-address property to store
> the OUI.  I think that makes a lot more sense.  Actually, storing the
> whole MAC in the ocotp would have made a lot more sense!  But it's one
> time programmable and that's the way all the boards were made.
>

From looking at the mach-mxs.c and assuming I didn't miss any
important details (which is a big if), it seems to me that it would
still be possible to cover this use-case by introducing(or extending
'nvmem' driver) an additional "nvmem" compatible entity whose only job
would be is to present data hard coded in its corresponding DT-node
via "nvmem" API.

So, say for example for apf28(OUI_ARMADEUS) you'd have something like:

board-oui-node {
      board_oui_cell: oui_cell@0 {
             immediate-data = [0x00  0x1e 0xac];
      };
};

and then you should be able to use <&board_oui_cell> in the
scatter-gatherer node from above.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
