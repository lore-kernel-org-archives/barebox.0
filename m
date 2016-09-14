Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk86O-0006GI-7l
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 11:11:44 +0000
Date: Wed, 14 Sep 2016 13:11:14 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160914111114.GA15884@ravnborg.org>
References: <1473775689-8969-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473775689-8969-1-git-send-email-s.hauer@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Tue, Sep 13, 2016 at 04:08:09PM +0200, Sascha Hauer wrote:
> Enable parent rate propagation for clk_gate2 to allow the
> clock consumers to adjust their rates.
> One effect of this is that the i.MX6 NAND controller now can adjust
> its rate. It already called a clk_set_rate(rate, 96000000), but this
> had no effect, so the clock stayed at reset default 24MHz resulting
> in a rather slow timing. This became a problem when commit
> "1daa3bc mtd: nand_mxs: Setup timing" introduced EDO timing mode for
> faster NAND chips. EDO mode can only work properly for cycle times
> < 30ns (at least that's specified in the ONFI spec). 1daa3bc resulted
> in sporadic NAND read errors on some boards.

Nice work!

We have tested this patch on ~10 boards that failed
with DMA errors before.
None of these boards failed after applying this patch.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
