Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGr4l-0002XK-1p
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 12:50:51 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TGr4j-0005me-Dv
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 14:50:49 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TGr4j-0004w6-A5
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 14:50:49 +0200
Message-ID: <1348663849.3370.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 26 Sep 2012 14:50:49 +0200
In-Reply-To: <20120926124305.GO1322@pengutronix.de>
References: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
 <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
 <20120926124305.GO1322@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] net/eth: fix link handling
To: barebox@lists.infradead.org

On Wed, 2012-09-26 at 14:43 +0200, Sascha Hauer wrote:
> The eth->active is for tracking whether a device is opened (thus we have
> to call eth->halt). With this patch eth->active == 0 could mean:
> 
> a) device not opened
> b) opened, but no link
> 
> This is asking for trouble. A bit only has two states, you should not
> encode three states in it.

Yes. We should not repeatedly open the device to check link status
again. A open (active==1) device with no link is perfectly valid, it
just can't be used for TX/RX.

So if we have an open device in TX/RX and
  link down: recheck link
  link up: recheck link if the last check is "too old"

This way we notice both link going down and up, while not wasting time
when we are waiting for link up.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
