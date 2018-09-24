Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4RCr-0001f0-4X
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 13:47:23 +0000
Date: Mon, 24 Sep 2018 15:46:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924134647.GI4097@pengutronix.de>
References: <20180924084547.28914-1-s.hauer@pengutronix.de>
 <CAHQ1cqHier4cNjvN0_Q=DtjMfO1BKTm53m25fGp=XB9cbaxxnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHier4cNjvN0_Q=DtjMfO1BKTm53m25fGp=XB9cbaxxnQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: bbu: use full path name for mmcboot handler
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Sep 24, 2018 at 06:17:37AM -0700, Andrey Smirnov wrote:
> On Mon, Sep 24, 2018 at 1:46 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > When doing barebox update over fastboot the fastboot code checks for
> > existance of file given in the filename argument, so add the "/dev/"
> > component to the handler.
> > With this fastboot works with the mmcboot handler.
> >
> 
> I am confused by this patch. What's the status of
> http://lists.infradead.org/pipermail/barebox/2018-September/034761.html
> then?

Oh, it's me who is confused. I created the patch for an older barebox
version and didn't realize you already fixed this. So forget this patch,
we'll use yours.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
