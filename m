Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5TWy-0002yq-TH
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 05:38:03 +0000
Date: Fri, 11 Jul 2014 07:37:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140711053738.GJ23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/5] add rtc support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 10, 2014 at 12:33:14PM +0400, Antony Pavlov wrote:
> This patchseries imports RTC support from linux-3.15.
> 
> User can use 'hwclock' command to see realtime clock readout.
> 
> Tested with DS1307.
> 
> TODOs:
> 
>  * rtc_set_time() is not realized;
>  * ds1307_set_time() is not tested;
>  * bcd lib is compiled in even if rtc support is disabled (as linux does);
>    we can make it optional;

It's probably not worth it. The linker will throw it away anyway if
unused.

>  * adjust include/linux/rtc.h and include/rtc.h;
>  * rtc_unregister() is not realized.

Maybe an environment variable which holds the seconds since epoch would
be useful. This way scripts could make use of the current RTC time.

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
