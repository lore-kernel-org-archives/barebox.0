Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQkPC-0005cg-NR
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 23:30:43 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 2 Feb 2016 23:30:15 +0000
Message-ID: <1454455837.18531.37.camel@rtred1test09.kymeta.local>
References: <2936535.PfmXjTYsqy@dabox>
 <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
In-Reply-To: <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
Content-Language: en-US
Content-ID: <0A9EF29FE0A2824899DFBE32AE921BB0@kymetacorp.com>
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
Subject: Re: [PATCH v4] Terasic DE0-Nano-SoC: add support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Tim Sander <tim@krieglstein.org>

On Mon, 2016-02-01 at 11:08 -0800, Andrey Smirnov wrote:
> On Mon, Feb 1, 2016 at 8:09 AM, Tim Sander <tim@krieglstein.org> wrote:

> > +
> > +       if (IS_ENABLED(CONFIG_PHYLIB))
> > +               phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
> 
> I don't think this code is correct. To the best of my knowledge, both
> Atlas and DE0-Nano version of the board come with KSZ9031 as a PHY,
> which requires different fixup. See arm/boards/tqma6x/board.c for
> example.

I think all the fixups for the micrel phys should probably be replaced
with device tree properties.  If you look in drivers/net/phy/micrel.c,
ksz9031_config_init() will read skew properties from the DT and program
the phy that way.  This would make it easier to use the phy DT
properties already in the Linux dts files.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
