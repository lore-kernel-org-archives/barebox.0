Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWfjn-0000QY-HO
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 07:44:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aWfjW-0003Vs-3I
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 08:44:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1aWfjV-0002RK-R8
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 08:44:09 +0100
Date: Fri, 19 Feb 2016 08:44:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160219074409.GN3939@pengutronix.de>
References: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
 <1455708500-980-4-git-send-email-mpa@pengutronix.de>
 <20160218082254.GH4567@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160218082254.GH4567@pengutronix.de>
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
Subject: Re: [PATCH v2 4/4] fastboot: Add a ARM Barebox filetype handler
To: barebox@lists.infradead.org

On Thu, Feb 18, 2016 at 09:22:54AM +0100, Michael Olbrich wrote:

> > +	if (filetype_is_barebox_image(filetype)) {
> > +		struct bbu_data data = {
> > +			.devicefile = filename,
> > +			.imagefile = FASTBOOT_TMPFILE,
> > +			.flags = BBU_FLAG_YES,
> > +		};
> > +
> > +		if (!barebox_update_handler_exists(&data))
> > +			goto copy;
> > +
> > +		fastboot_tx_print(f_fb, "INFOThis is an ARM Barebox image...");
> 
> With the change above, it may not be an _ARM_ image.

Fixed while applying.

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
