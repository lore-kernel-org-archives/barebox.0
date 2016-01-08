Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHVj9-0005pm-6O
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 12:01:07 +0000
Date: Fri, 8 Jan 2016 13:00:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160108120044.GG13058@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-5-git-send-email-s.hauer@pengutronix.de>
 <CAGm1_ksDTEUcAQtvh+pe2PrWuYCuNtV0OemiU=i6-BqeWFaJGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksDTEUcAQtvh+pe2PrWuYCuNtV0OemiU=i6-BqeWFaJGA@mail.gmail.com>
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
Subject: Re: [PATCH 4/8] include pyserial trunk
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 08, 2016 at 12:57:54PM +0100, Yegor Yefremov wrote:
> On Fri, Jan 8, 2016 at 12:13 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > From: Jan Luebbe <jlu@pengutronix.de>
> >
> > The current pyserial is broken, this version contains the fix for:
> > http://sourceforge.net/p/pyserial/bugs/166/
> 
> Have you tried the newest version from
> https://github.com/pyserial/pyserial/releases

Yes, that one works. Unfortunately this hasn't really made it to the
distributions and we have an additional patch on pyserial.

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
