Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Dvj-0002sG-M1
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 07:26:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z2DvL-000588-2Q
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 09:26:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Z2DvK-0004uH-L5
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 09:26:14 +0200
Date: Tue, 9 Jun 2015 09:26:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150609072614.GM26575@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: Add functions for (de)activating consoles and for setting baudrate
To: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 09, 2015 at 08:21:03AM +0200, Sascha Hauer wrote:
> We have some console users like load[bxy] which fiddle with device
> parameters to control console activation and baudrate settings. This
> series introduces functions for doing this and makes use of them where
> possible. The serial download stuff is untested as I have been unable
> to get that to work with any of the three protocols and kermit or minicom
> as terminal programs. If anyone has a hint how this works I'd be grateful.

The hint came from Uwe. He uses sx/sz directly and with this it works
together with the barebox commands like this:

barebox> loadx
host> sx -kb -vvvv FILE < /dev/ttyUSB2 > /dev/ttyUSB2

barebox> loady
host> sz -kb -vvvv FILE < /dev/ttyUSB2 > /dev/ttyUSB2

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
