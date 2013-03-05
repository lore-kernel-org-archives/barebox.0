Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCpQe-0006GI-7D
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 10:49:04 +0000
Date: Tue, 5 Mar 2013 11:49:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305104902.GT1906@pengutronix.de>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
 <1362392034-1908-11-git-send-email-s.hauer@pengutronix.de>
 <201303042143.11982.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201303042143.11982.jbe@pengutronix.de>
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
Subject: Re: [PATCH 10/10] mtd: nand: Add command to generate a flash BBT
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 09:43:11PM +0100, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > [...]
> > +static int do_imx_nand_bbm(int argc, char *argv[])
> > +{
> > +	int opt, ret;
> > +	struct cdev *cdev;
> > +	struct mtd_info *mtd;
> > +	int yes = 0;
> > +	void *bbt;
> > +
> > +	while ((opt = getopt(argc, argv, "y")) > 0) {
> > +		switch (opt) {
> > +		case 'y':
> > +			yes = 1;
> > +			break;
> > +		default:
> > +			return COMMAND_ERROR_USAGE;
> > +		}
> > +	}
> > +
> > +	cdev = cdev_open("nand0", O_RDWR);
> 
> Is a fixed name a good idea?

Since there is only one NAND device on i.MX I think it's ok.

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
