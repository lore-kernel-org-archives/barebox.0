Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri0ju-0002qw-Cg
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:33:03 +0000
Date: Tue, 3 Jan 2012 10:32:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120103093255.GA3489@pengutronix.de>
References: <260174ADA4D63F4AA543B9C81F2DE7120531CD14@POCITMSEXMB02.LntUniverse.com>
 <20120102111027.GG27267@pengutronix.de>
 <260174ADA4D63F4AA543B9C81F2DE7120531CF29@POCITMSEXMB02.LntUniverse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <260174ADA4D63F4AA543B9C81F2DE7120531CF29@POCITMSEXMB02.LntUniverse.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Adding New comand
To: G Rajender <G.Rajender@lnties.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 03, 2012 at 09:27:04AM +0000, G Rajender wrote:
> Hi,

Please do not top post.

> 
> I want to configure the USB OTG port in iMX35 board as a device by
> adding a separate command and writing USB OTG peripheral code
> (firmware) in command function.  This USB OTG of iMX35 board should
> detect in Windows PC. This is primary goal.  ThanX.

Have a look at commands/dfu.c. This is probably the closest template for
this we have in barebox.

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
