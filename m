Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zylmd-0007fy-DO
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 19:19:16 +0000
Date: Tue, 17 Nov 2015 20:18:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151117191853.GQ8526@pengutronix.de>
References: <1447664445-19282-1-git-send-email-s.christ@phytec.de>
 <1447664445-19282-2-git-send-email-s.christ@phytec.de>
 <CAOpc7mGnHmYOVvOWygYUs+1dqdsZYtW-T=8ruNwDt-U1bQNvMg@mail.gmail.com>
 <20151116101705.GA19657@lws-christ>
 <20151117093213.GO8526@pengutronix.de>
 <20151117143843.GC2696@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151117143843.GC2696@lws-christ>
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
Subject: Re: [PATCH 2/3] net: fec: implement dtb property phy-reset-durationy
To: Stefan Christ <s.christ@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Nov 17, 2015 at 03:38:43PM +0100, Stefan Christ wrote:
> Hi,
> 
> > > Yeah, that would be the obvious and plausible thing to do, but the driver in
> > > the linux kernel does it this way and it's documented in the device tree
> > > bindings.  So I'm not sure if we can change the default behavior here.
> > 
> > Yes, we can ;)
> > 
> > The rationale behind this code may be: The reset duration is
> > unreasonably high (>1s), so that it to a sane default (1ms).
> > 
> > I suggest to drop the check completely. If someone ever starts barebox
> > with an insanely high value (maybe he thought the value is in us) then
> > he won't notice the mistake if barebox silently falls back to 1ms as
> > duration. If instead barebox waits for multiple seconds then he will
> > notice and it the device tree which is what we want.
> 
> Ok. So what about printing a warn message that case? Then everybody should
> notice.

No, I don't think that's necessary. Such an overlong delay should be
noticeable already and give the right hint. Let's save the binary space.

> 
> When I send a v2 patch, should the description in the device tree binding be
> updated, too?

No, the bindings docs are directly taken from the kernel and changes
will be lost the next I update them.

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
