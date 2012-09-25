Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGUFC-0001s6-3z
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 12:28:08 +0000
Message-ID: <1348576082.3396.37.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 25 Sep 2012 14:28:02 +0200
In-Reply-To: <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] Makefile: add target to produce a SPL compatible uImage
To: barebox@lists.infradead.org

On Thu, 2012-09-20 at 21:13 +0200, Jan Luebbe wrote:
> This is mostly useful during the initial port of barebox to a new
> board which is supported by u-boot. It also allows starting barebox
> from a SRAM-based u-boot SPL.
> 
> A different load address can be set like this:
> make barebox.uimage UIMAGE_BASE=0x80000000
> 
> Also add barebox.ubl to CLEAN_FILES.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> I've carried this patch for some time and adjusted it to support
> PBL (compressed image), but have not had an opportunity to verify
> it again.
> 
> Teresa, if you have some time to try it out, that would be very
> much appreciated. :)

Sascha: As Teresa has tested this, could you apply it?

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
