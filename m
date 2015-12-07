Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x233.google.com ([2607:f8b0:4001:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a61td-0002Am-GK
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 19:56:30 +0000
Received: by igvg19 with SMTP id g19so86539214igv.1
 for <barebox@lists.infradead.org>; Mon, 07 Dec 2015 11:56:08 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1449517935.26955.28.camel@rtred1test09.kymeta.local>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
 <1449474763-14099-7-git-send-email-andrew.smirnov@gmail.com>
 <1449515113.26955.21.camel@rtred1test09.kymeta.local>
 <CAHQ1cqG20SGn97VKyoPR1twFn+mwfsqzRxsXfkFSPP6zabCkPw@mail.gmail.com>
 <1449517935.26955.28.camel@rtred1test09.kymeta.local>
Date: Mon, 7 Dec 2015 11:56:08 -0800
Message-ID: <CAHQ1cqF=33KXWdi+-nXBeX+BFB4ujxwr+ccNeP2=x1yHF16EUw@mail.gmail.com>
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
Subject: Re: [PATCH 7/7] hwmon: Port TEMPMON sensor driver
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Dec 7, 2015 at 11:52 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Mon, 2015-12-07 at 11:40 -0800, Andrey Smirnov wrote:
>> On Mon, Dec 7, 2015 at 11:05 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
>> > On Sun, 2015-12-06 at 23:52 -0800, Andrey Smirnov wrote:
>> >> +
>> >> +       imx_thermal->sensor.name = of_get_property(dev->device_node,
>> >> +
>> >> "barebox,sensor-name",
>> >> +                                                  NULL);
>> >
>> > Wouldn't aliases the proper OF way to do this?
>>
>> I must admit I am not familiar with the feature you are talking about
>> (or maybe I am just not understanding what you mean well), can you
>> give me a very brief example? Given my ignorance I wouldn't be
>> surprised that it is.
>
> There is an aliases section at the root of the OF tree, which has
> properties set to a phandle for the device the property's name serves as
> an alias for.  There was a patch to this list last week sometime that
> added alias support to the at24 driver for naming eeproms.

Ah, I see. Yes, that definitely would be a better way to do what I am
trying to do. I'll keep that feature in mind for next version of the
patch.

Thank you,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
