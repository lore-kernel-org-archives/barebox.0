Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9WIe-0004Dk-CV
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 09:23:56 +0000
Date: Tue, 22 Jul 2014 11:23:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722092332.GY23235@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
 <1405955687-27433-20-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mHnjYN1-AxraHoKZYYzd6d21c-VJ+KTO2wp03c9b16BGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mHnjYN1-AxraHoKZYYzd6d21c-VJ+KTO2wp03c9b16BGg@mail.gmail.com>
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
Subject: Re: [PATCH 19/23] USB: gadget: Add Android fastboot support
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jul 22, 2014 at 09:25:44AM +0200, Holger Schurig wrote:
> > issue other lowlevel commands to the bootloader. This adds a
> > fastboot implementation based on the U-Boot fatboot code.
> 
> Is "fatboot" a type?  :-)

Yes, and actually a typo I made several times before already ;)
This one slipped through the cracks it seems.

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
