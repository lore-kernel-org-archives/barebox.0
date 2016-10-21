Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUrm-00024l-Ci
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 08:07:51 +0000
Date: Fri, 21 Oct 2016 10:07:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021080728.4i3bulijw7wtxdqs@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
 <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
 <201610210953.45417.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201610210953.45417.jbe@pengutronix.de>
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
Subject: Re: Loading kernel issues
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org, Javier Fileiv <javier.fileiv@gmail.com>

On Fri, Oct 21, 2016 at 09:53:45AM +0200, Juergen Borleis wrote:
> Hi Javier,
> 
> On Friday 21 October 2016 09:41:15 Javier Fileiv wrote:
> > I was looking to buy an ARM9 Jtag because it's what I
> > though... I would need a JTAG.
> >
> > Regarding shorting the data lines... do you know exactly what would I
> > need to do?
> 
> Reading the datasheet of the used NAND device, find its datalines, find them on 
> the Mini2440, configure the board to boot from NOR, short two of the eight 
> datalines and power the board.

The best would be to find two which are exactly next to each other so
you can short circuit them with a knitting needle or similar.

When you flash a new barebox to NOR flash make sure you flash one that
doesn't get its environment from NAND, so comment out the following
lines in the board file:

	devfs_del_partition("env_raw");
	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
	dev_add_bb_dev("env_raw", "env0");

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
