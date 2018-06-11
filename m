Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGWW-0002dQ-2I
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:41:53 +0000
Date: Mon, 11 Jun 2018 08:41:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611064139.tadrdsen76zhcq6e@pengutronix.de>
References: <20180607174011.13130-1-pvizeli@syshack.ch>
 <20180608070540.m6etfu37vu6s64ic@pengutronix.de>
 <CACvFaDf3ivn2jQxTKdT1b1VbzhnxdEXGojd4-8pVyiSz=rcvuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDf3ivn2jQxTKdT1b1VbzhnxdEXGojd4-8pVyiSz=rcvuw@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] drivers: of: bugfix partition fixups
To: Pascal Vizeli <pascal.vizeli@syshack.ch>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

On Fri, Jun 08, 2018 at 09:31:24AM +0200, Pascal Vizeli wrote:
> 2018-06-08 9:05 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > of_find_property is not called directly from the code you are changing,
> > so how excatly is the code path that fails?
> 
> of_get_reproducible_name -> of_get_property -> of_find_property
> 
> >
> > What are you doing to get into this situation? This test should never
> > fail or else we are in trouble. Is there some "oftree -f" command
> > involved? I should really remove this command since in a device tree
> > based system there are always references to device nodes which are not
> > expected to become invalid.
> >
> 
> Yes, I load the device tree from first bootloader and overlay some state dtbo.
> But how I should do this without flush? I can do that also an a file
> and load this
> to bootm, but the fixups will also run on this and fails too.
> 
> I think we need remove `oftree -f` or apply this patch for hardening.

Just sent a patch for the former as the latter is a goal we do not seem
to reach.

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
