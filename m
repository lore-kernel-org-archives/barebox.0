Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsDWC-0004lJ-AQ
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 13:13:05 +0000
Date: Tue, 31 Jan 2012 14:12:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120131131256.GP1990@pengutronix.de>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
 <20120131114045.GO1990@pengutronix.de>
 <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: IIM on iMX27 "how-to" needed
To: Igor Trevisan <igt1972@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 31, 2012 at 01:51:31PM +0100, Igor Trevisan wrote:
> Hi,
> 
> >
> > The command is correct, the usage is wrong.
> > See http://wiki.barebox.org/doku.php?id=commands:md and let me know
> > if that helps
> 
> Yes, it helps.
> It helped me, first of all to RTFM ;-) and use correctly Barebox commands...
> And second it helped to find a new problem:
> 
> barebox:/ md -b -s /dev/imx_iim_bank0
> do_fuse_sense: sense error (0x04)
> read: I/O error
> 
> What do I do wrong?

You could try imx_iim0.explicit_sense_enable=0, maybe this helps.

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
