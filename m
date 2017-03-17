Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coqrZ-0000ZH-By
 for barebox@lists.infradead.org; Fri, 17 Mar 2017 12:20:11 +0000
Date: Fri, 17 Mar 2017 13:19:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170317121947.qgopgneagvet6tg5@pengutronix.de>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/11] AT91, at91sam9x5ek updates (part II/III)
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Thu, Mar 16, 2017 at 08:04:37AM -0700, Andrey Smirnov wrote:
> Hi everone,
> 
> This is v2 of the second batch of AT91 related patches (original thread
> [1]). The patches gathered in this set are with a few exceptions are
> patches adding DT probing support for various AT91 drivers.
> 
> Feedback from Sam has been incorporated, but other than that the code
> should be as it was in [1].
> 
> Any feedback is appreciated.

Applied for now, let's see what the autobuilder tells us.

Have you verified the code can still run on AT91 SoCs which don't use
the common clock code?

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
