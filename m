Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPXC-0001ps-9W
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:41:19 +0000
Date: Mon, 7 Jan 2019 08:41:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190107074116.ssxbxjvhlxp44m65@pengutronix.de>
References: <20181231080725.2141-1-sam@ravnborg.org>
 <20181231080725.2141-4-sam@ravnborg.org>
 <20190104072718.czf6qqojjzluua46@pengutronix.de>
 <20190106203811.GA5376@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190106203811.GA5376@ravnborg.org>
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
Subject: Re: [PATCH v1 3/5] arm: fix no prototype for
 barebox_arm_reset_vector()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jan 06, 2019 at 09:38:11PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> > > +void __naked __bare_init barebox_arm_reset_vector(void);
> > 
> > I had to drop this one as it breaks compilation on some boards. Some
> > boards need r0 from the ROM so they have:
> > 
> > void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
> > 
> > We have to harmonize these first.
> Sorry - I did not test more than a few boards.

Don't worry, that's what my compile tests are good for.

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
