Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxaTG-0002fb-MQ
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 09:48:47 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TxaTF-0002qP-4u
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 10:48:45 +0100
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TxaTL-0001Y1-Tx
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 10:48:51 +0100
Message-ID: <1358848131.3996.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 22 Jan 2013 10:48:51 +0100
In-Reply-To: <1358847900.233899647@f243.mail.ru>
References: <1358847900.233899647@f243.mail.ru>
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
Subject: Re: Memory size issue
To: barebox@lists.infradead.org

On Tue, 2013-01-22 at 13:45 +0400, Alexander Shiyan wrote:
> Hello.
> 
> I found a discrepancy between the size of memory in the system and
> report by meminfo.
> In the following example, the system registered 512M, but the meminfo
> shows only 256M.
> Error or so and originally intended?
> 
> barebox@i.MX51:/ devinfo mem0
> resources:
> num   : 0
> name  : ram0
> start : 0x90000000
> size  : 0x20000000
> driver: mem
> bus: platform
> 
> no info available for mem0
> no parameters available
> barebox@i.MX51:/ meminfo
> max system bytes =     245760
> system bytes     =     245760
> in use bytes     =     223200

This is 240kiB, not 256MiB. As meminfo shows only the memory used by
barebox, this is should not be the same as the SDRAM size.

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
