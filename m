Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk9at-0003Jw-Um
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 12:47:16 +0000
Date: Wed, 14 Sep 2016 14:46:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160914124653.aqwpfbaptk2wj43z@pengutronix.de>
References: <1473775689-8969-1-git-send-email-s.hauer@pengutronix.de>
 <20160914111114.GA15884@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160914111114.GA15884@ravnborg.org>
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
Subject: Re: [PATCH] ARM: i.MX6: Enable parent propagation for clk_gate2
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 14, 2016 at 01:11:14PM +0200, Sam Ravnborg wrote:
> Hi Sascha.
> 
> On Tue, Sep 13, 2016 at 04:08:09PM +0200, Sascha Hauer wrote:
> > Enable parent rate propagation for clk_gate2 to allow the
> > clock consumers to adjust their rates.
> > One effect of this is that the i.MX6 NAND controller now can adjust
> > its rate. It already called a clk_set_rate(rate, 96000000), but this
> > had no effect, so the clock stayed at reset default 24MHz resulting
> > in a rather slow timing. This became a problem when commit
> > "1daa3bc mtd: nand_mxs: Setup timing" introduced EDO timing mode for
> > faster NAND chips. EDO mode can only work properly for cycle times
> > < 30ns (at least that's specified in the ONFI spec). 1daa3bc resulted
> > in sporadic NAND read errors on some boards.
> 
> Nice work!
> 
> We have tested this patch on ~10 boards that failed
> with DMA errors before.
> None of these boards failed after applying this patch.

Great :)

Have you noticed the NAND is much faster now?

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
