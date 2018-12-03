Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTkja-0005Ft-Qj
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 09:41:48 +0000
Date: Mon, 3 Dec 2018 10:41:31 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181203094131.d4h3nyxgawovgnlx@pengutronix.de>
References: <20181125225952.16159-1-r.hieber@pengutronix.de>
 <20181126090140.k443kixpzmcxhjim@pengutronix.de>
 <20181126105347.dlfdxjwdas3s57ia@pengutronix.de>
 <20181129141100.yhexyeerzlqdwo3s@pengutronix.de>
 <20181203074512.4gdreahxjqubp5ns@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181203074512.4gdreahxjqubp5ns@pengutronix.de>
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
Subject: Re: [PATCH 1/2] drivers: caam: add RNG software self-test
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 03, 2018 at 08:45:12AM +0100, Sascha Hauer wrote:
> On Thu, Nov 29, 2018 at 03:11:00PM +0100, Roland Hieber wrote:
> > On Mon, Nov 26, 2018 at 11:53:47AM +0100, Roland Hieber wrote:
> > > > > +	pr_vdebug("Result\n");
> > > > > +	for (i = 0; i < RESULT_SIZE; i++) {
> > > > > +		pr_vdebug("%02X\n", result[i]);
> > > > > +	}
> > > > > +
> > > > > +	pr_vdebug("Expected Result:\n");
> > > > > +	for (i = 0; i < RESULT_SIZE; i++) {
> > > > > +		pr_vdebug("%02X\n", exp_result[i]);
> > > > > +	}
> > > > 
> > > > Use memory_display to display this. Also this is only interesting if
> > > > both differ, so better print it in the failure path.
> > > 
> > > I thought about that too, but I didn't see a way to make memory_display
> > > use pr_vdebug, or otherwise make its output depend on the debug level.
> > 
> > I have several solutions in mind: one would be to introduce a function
> > log_level() to get the current log level and decide on that whether to
> > call memory_display. However then memory dump won't pick up the pr_*
> > prefixes and use plain printf nevertheless. So my second thought is to
> > add a callback function to memory_display to pass pr_debug or else to it
> > which it can use to print stuff. However then we need to remodel
> > memory_display so it always prints full lines (or uses pr_cont which it
> > would need to know about, and you wanted to get rid of pr_cont anyway).
> > We could also use a third way and implement a custom printf escape, say
> > %md, that gets replaced with memory_display output when calling
> > pr_printk, and move the core formatting of memory_display into a helper.
> 
> Just posted another possibility. See if it fits your needs.

I would have solved it a bit differently with the callback, but yours I
find much more elegant as the whole pr_memory_dump can be optimised out.
Thanks!

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
