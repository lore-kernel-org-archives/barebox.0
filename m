Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH7TZ-00051S-50
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 07:26:05 +0000
Date: Wed, 4 Sep 2013 09:25:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904072542.GL30088@pengutronix.de>
References: <58FB74C2-85EF-43A1-A491-D78CF5DA585E@reinrag.net>
 <20130903113829.GM19197@ns203013.ovh.net>
 <9A7E2EF4-7C14-440D-B0DF-1B24A73D0E00@reinrag.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9A7E2EF4-7C14-440D-B0DF-1B24A73D0E00@reinrag.net>
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
Subject: Re: [PATCH 4/4] ARM: support for CPO Science DataCollector II
To: Darren Garnier <dgarnier@reinrag.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Sep 03, 2013 at 11:06:24AM -0400, Darren Garnier wrote:
> Hi Jean-Christophe,
> 
> > 
> > use init script for this
> 
> ack.
> 
> My reasoning here was not to mount the nand0 unless we were doing dfu.  Now that you point it out,
> I see the error in my reasoning.. the time consuming part of the NAND is in the initial device driver load,
> not in adding the partition table.
> 

It shouldn't be very time consuming when you use bad block tables.

If it's still too long for you then we could implement the 'detect'
mechanism recently introduced for SD/MMC/ATA devices.

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
