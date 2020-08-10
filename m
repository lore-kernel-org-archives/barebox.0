Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k52jE-0001bC-2Q
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 08:00:21 +0000
Date: Mon, 10 Aug 2020 10:00:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810080018.GX31536@pengutronix.de>
References: <e29ef420-c914-72b4-5ef2-875d3f9844e7@pengutronix.de>
 <CAKd8=Gsyqhy-bzTdSQTfd8z6=JtkkhP1m00yoC=3uLRr4q1-xg@mail.gmail.com>
 <c726160f-1221-b26e-ccc1-0122f2ac7973@pengutronix.de>
 <CAKd8=GsMPPV+zmUFT1j+OnToOU4urCQ4kQR7yYsR-+CcOoNWDw@mail.gmail.com>
 <9dcd6282-745a-8509-cd30-867393188f2c@pengutronix.de>
 <CAKd8=GtMMXLRTE6qCzoDxxo-9qwFrQ6cyaW3SHE3ofisv0TRCQ@mail.gmail.com>
 <9097b4aa-05e4-2083-9a87-512b0f0cf2a2@pengutronix.de>
 <CAKd8=GvaxTV8AHwBaiTb-JG5yneeUX9SoW2=5j+QS9m=CG5reQ@mail.gmail.com>
 <74c8e732-2fda-6814-f306-426f66681517@pengutronix.de>
 <CAKd8=GvnrpFHDGx2Sm2ri+JJA4f6NngMA4L-kcZP-d-87nbPRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKd8=GvnrpFHDGx2Sm2ri+JJA4f6NngMA4L-kcZP-d-87nbPRA@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Wed, Aug 05, 2020 at 05:00:06PM +0200, Lars Pedersen wrote:
> Hi. Thanks for your patience :D
> 
> /Lars Pedersen
> 
> On Wed, 5 Aug 2020 at 14:30, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hello,
> >
> > On 8/5/20 1:12 PM, Lars Pedersen wrote:
> > >> Text base is ignored, when you are relocatable. If you aren't relocatable,
> > >> you need a valid address as your text base. Why did you turn it off?
> > >
> > > I didn't turn it off. It isn't selected by MACH_FREESCALE_MX7_SABRESD
> > > so it gets turned off if only this board is used. It is selected by 6
> > > other boards, which is the reason it works when compiling for all
> > > boards.
> >
> > I don't think that's how it works. If it was =y and the select went
> > away because of CONFIG_MACH_CCMX51=n, it remains at =y. I just tested
> > it and that's the behavior I observed.
> 
> If I use the imx_v7_defconfig and go and deselect  "ConnectCore
> i.MX51" (MACH_CCMX51), then RELOCATABLE will change from =y to =n
> 
> So in other words. Deselecting this one board (MACH_CCMX51) will set
> RELOCATABLE=n and now all the boards rely on CONFIG_TEXT_BASE to be
> set correct. And as you also mentioned later on, this will be an
> issue.

That's strange. I can confirm what Ahmad said: starting from
imx_v7_defconfig and deselecting MACH_CCMX51 still leaves RELOCATABLE
enabled here. I have no idea why this is different for you.

Anyway, on i.MX a barebox binary with RELOCATABLE disabled only works in
very special cases and requires setting TEXT_BASE to a suitable value,
one that works on all boards selected. It would be nice to hide
RELOCATABLE from the user in most cases.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
