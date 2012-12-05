Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgKEz-0007qE-Jr
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 19:02:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TgKEx-0003Pl-Sb
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 20:02:39 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TgKEx-0003gj-RW
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 20:02:39 +0100
Date: Wed, 5 Dec 2012 20:02:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205190239.GR10369@pengutronix.de>
References: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/5] mci: Add STUFF_BITS and use it
To: barebox@lists.infradead.org


I applied this series without the patches which allow to pass the /dev/
filename for the mci device for now. I still have the hope to find a
better solution for this. Being able to have persistent names, or at
least a way to specify 'load from this slot' is a worthwile goal, but
what I suggested requires changes for all drivers/board files wishing to
have a persistent name.
I'm now thinking more into the direction that the hardware devicename
(imx-esdhc0) could be used to refer to a device filename, but currently
I do not know how this can be best solved.

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
