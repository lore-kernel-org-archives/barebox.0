Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x244.google.com ([2607:f8b0:4001:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQm3f-00069N-3Y
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 01:16:35 +0000
Received: by mail-ig0-x244.google.com with SMTP id ik10so1686267igb.1
 for <barebox@lists.infradead.org>; Tue, 02 Feb 2016 17:16:14 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1454455837.18531.37.camel@rtred1test09.kymeta.local>
References: <2936535.PfmXjTYsqy@dabox>
 <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
 <1454455837.18531.37.camel@rtred1test09.kymeta.local>
Date: Tue, 2 Feb 2016 17:16:14 -0800
Message-ID: <CAHQ1cqEcN8UKjDOGQUyJhrxkhR4kFvh-kYE=tLFwLY_xFfPPEA@mail.gmail.com>
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
Subject: Re: [PATCH v4] Terasic DE0-Nano-SoC: add support
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Tim Sander <tim@krieglstein.org>

On Tue, Feb 2, 2016 at 3:30 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Mon, 2016-02-01 at 11:08 -0800, Andrey Smirnov wrote:
>> On Mon, Feb 1, 2016 at 8:09 AM, Tim Sander <tim@krieglstein.org> wrote:
>
>> > +
>> > +       if (IS_ENABLED(CONFIG_PHYLIB))
>> > +               phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
>>
>> I don't think this code is correct. To the best of my knowledge, both
>> Atlas and DE0-Nano version of the board come with KSZ9031 as a PHY,
>> which requires different fixup. See arm/boards/tqma6x/board.c for
>> example.
>
> I think all the fixups for the micrel phys should probably be replaced
> with device tree properties.  If you look in drivers/net/phy/micrel.c,
> ksz9031_config_init() will read skew properties from the DT and program
> the phy that way.  This would make it easier to use the phy DT
> properties already in the Linux dts files.
>

I haven't thought about that, that does sound like a better idea.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
