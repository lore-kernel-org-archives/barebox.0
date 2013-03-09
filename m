Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEP9h-0007hR-Uv
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 19:10:10 +0000
Date: Sat, 9 Mar 2013 20:10:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130309191003.GL1906@pengutronix.de>
References: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
 <1362827007-28522-2-git-send-email-s.hauer@pengutronix.de>
 <20130309165625.GA3158@x61s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130309165625.GA3158@x61s>
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
Subject: Re: [PATCH 1/2] net: fec: drop sevenwire support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 09, 2013 at 05:56:26PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> some nitpick...
> > +	return phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
> > +			 NULL, fec->phy_flags, fec->interface);
> >  
> >  	return 0;
> 
> This return will never use in this function.
> 

Fixed, thanks

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
