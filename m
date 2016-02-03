Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aR2Lq-0005FM-Sk
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 18:40:27 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 3 Feb 2016 18:40:00 +0000
Message-ID: <1454524823.18531.50.camel@rtred1test09.kymeta.local>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
 <20160201101007.GA4118@pengutronix.de>
 <1454354334.18531.16.camel@rtred1test09.kymeta.local>
 <CAHQ1cqGaR3h9DchcYPkTNvUqDN=dR1aDW+dXCNnS_E_2Gr+7Yg@mail.gmail.com>
In-Reply-To: <CAHQ1cqGaR3h9DchcYPkTNvUqDN=dR1aDW+dXCNnS_E_2Gr+7Yg@mail.gmail.com>
Content-Language: en-US
Content-ID: <854E724958386342A5772AAEC5B0C7DE@kymetacorp.com>
MIME-Version: 1.0
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-02-02 at 17:14 -0800, Andrey Smirnov wrote:
> On Mon, Feb 1, 2016 at 11:18 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> > The way imx28 works in the kernel is to just store the extension in the
> > OCOTP.  The OUI is determined from the board's compatible property and a
> > hard coded table in the kernel.  See arch/arm/mach-mxs/mach-mxs.c
> >
> > While, IMHO, the hard coded table is ugly, and should have died long
> > ago, there are board that don't have the entire mac burned into OCOTP.
> > It seems like neither of these bindings could support a board like this.
> >
> 
> What if you created a 'nvmem' provider whose only job is to take a
> blob from DT, a phandle to another 'nvmem' provider and to return the
> combined data from both sources. Wouldn't it work for the use-case you
> are describing?

Not sure what it would look like, example?

One thing about the imx28 OCOTP is that the entire MAC isn't in the
OCOTP.  The OUI part comes from "elsewhere".

In the current kernel, that elsewhere is a hardcoded /board/compatible
to OUI mapping.  What I did was use the mac-address property to store
the OUI.  I think that makes a lot more sense.  Actually, storing the
whole MAC in the ocotp would have made a lot more sense!  But it's one
time programmable and that's the way all the boards were made.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
