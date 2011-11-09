Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RO6Dc-0004fS-HH
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 11:21:25 +0000
Date: Wed, 9 Nov 2011 12:21:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111109112118.GH16886@pengutronix.de>
References: <4EBA5DF2.6070005@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EBA5DF2.6070005@ge.com>
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
Subject: Re: moduleg
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Wed, Nov 09, 2011 at 11:03:14AM +0000, Renaud Barbier wrote:
> Is there any example of running a module with barebox?

No, currently no example. It's similar to the kernel: enable module
support (depends on experimental), build barebox as usual and do
a make modules afterwards. There currently is no modules_install target,
you have to pick the .ko files manually and transfer them to your board.
Note that you will probably hit some 'undefined' errors, you would have
to add the missing EXPORT_SYMBOLs to some functions.

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
