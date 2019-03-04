Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nYM-0004Ug-PQ
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:22:48 +0000
Date: Mon, 4 Mar 2019 14:22:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304132245.ahwozoh6y2gtibi2@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
 <20190304113823.21535-5-s.hauer@pengutronix.de>
 <20190304120252.GC16532@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190304120252.GC16532@ravnborg.org>
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
Subject: Re: [PATCH 4/6] ddr_spd: Add function to read eeprom
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Mon, Mar 04, 2019 at 01:02:52PM +0100, Sam Ravnborg wrote:
> Hi Sascha
> 
> On Mon, Mar 04, 2019 at 12:38:21PM +0100, Sascha Hauer wrote:
> > +/**
> > + * spd_read_eeprom - Read contents of a SPD EEPROM
> > + * @ctx: Context pointer for the xfer function
> > + * @xfer: I2C message transfer function
> > + * @addr: I2C bus address for the EEPROM
> > + * @buf: buffer to read the SPD data to
> It is not obvious what buffer size to provide here.
> And if it happens to be SPD_MEMTYPE_DDR4 then we suddenly start to
> write data at offset 256 in the buffer.
> So maybe add a small comment that this should always be 512 bytes.
> Or even better 2 x SPD_PAGE_SIZE (defined to 256)

Make sense, I added such a comment.

Thanks
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
