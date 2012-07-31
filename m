Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwFvZ-0004HT-Eq
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:08:14 +0000
Date: Tue, 31 Jul 2012 19:07:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120731170742.GA30009@pengutronix.de>
References: <50170C6A.2000101@erwinrol.com> <5017B839.7070806@erwinrol.com>
 <20120731131319.GY30009@pengutronix.de>
 <5017F6CA.1040308@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5017F6CA.1040308@erwinrol.com>
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
Subject: Re: x86 weirdness
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 31, 2012 at 05:16:26PM +0200, Erwin Rol wrote:
> Hey Sascha,
> 
> 
> There seem to be two memset calls, that could be problematic. Both
> should be easily replaceable with for-loops (like I already did by
> the first).
> 
> We just have to be very careful to not call any functions from
> outside the boot dir (expect for the main barebox entry point).

This is probably a good idea anyway since the bss is not cleared at this
stage.

> 
> Don't you love the weird x86 world :-)

I'm glad that most of the time I don't have to care about x86 ;)

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
