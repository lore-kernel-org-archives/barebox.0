Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9X1F-0001LI-LD
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 09:05:30 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1V9X0r-0002G8-8b
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 11:05:05 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1V9X1w-000499-Ku
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 11:06:12 +0200
Message-ID: <1376471172.3889.38.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 14 Aug 2013 11:06:12 +0200
In-Reply-To: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
References: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] of_property and phandles
To: barebox@lists.infradead.org

On Wed, 2013-08-14 at 10:11 +0200, Sascha Hauer wrote:
> This adds the support for phandles to the of_property command.
> 
> The of_property command is able to manipulate devicetree properties,
> but so far it hasn't been able to specify phandles. With this
> series the following is possible:
> 
> of_property -s /soc/somenode propname </soc/someothernode 0xdeadbeef>
> 
> The /soc/someothernode is inserted into the property as phandle.
> 
> The projected usecase currently is to chose a display out of several
> possible during runtime.

Thanks, the series looks good.

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
