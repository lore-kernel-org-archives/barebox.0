Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucYD-0003hQ-Cg
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:57:22 +0000
Message-ID: <f9a058ad53ea71be1eefd95d29c3ac5a8b8af93f.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 05 Aug 2019 14:57:19 +0200
In-Reply-To: <1565002851.2323.7.camel@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
 <7c96c0b967c09a1ba065d464586cecd9a82b2032.1564997015.git-series.r.czerwinski@pengutronix.de>
 <1565002851.2323.7.camel@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 10/16] pbl: add sha256 and piggy verification to PBL
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

On Mon, 2019-08-05 at 13:00 +0200, Lucas Stach wrote:
> Am Montag, den 05.08.2019, 11:23 +0200 schrieb Rouven Czerwinski:
> > +config PBL_VERIFY_PIGGY
> > +	depends on ARM
> 
> Why? What exactly is ARM specific about this mechanism?

Currently only the arch/arm/cpu/uncompress.c version implements the
piggy verification.

> > +	bool "Verify piggydata"
> > > +	help
> > > +	  Use a PBL builtin sha256sum to verify the piggydata before
> > > decompression.
> > > +	  WARNING: your board will not boot if a mismatch is detected,
> > > enable DEBUG_LL
> > > +	  to see the builtin and calculated hash.
> > +	  This effectively locks a given PBL to the matching main
> > barebox.
> 
> Does it make sense to have this as a user-visible option? We want
> this
> in a very specific use-case, in which case it's selected anyways, so
> the user can't break the security model via a wrong configuration. I
> don't see any use for piggydata verification outside of this use-
> case.
> 

I agree, I'll make this user invisible.

Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
