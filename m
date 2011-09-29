Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9Dh1-0008CK-C2
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 10:18:20 +0000
Date: Thu, 29 Sep 2011 12:18:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110929101810.GE31404@pengutronix.de>
References: <4E833CE3.7070701@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E833CE3.7070701@ge.com>
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
Subject: Re: ubifs
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 28, 2011 at 04:27:31PM +0100, Renaud Barbier wrote:
> I see that there is no ubifs support in barebox.
> 
> Is there any plan to support ubifs in the near future?

No, not that I heard of.

> 
> Else how much effort do you think it will take to port it
> 
> I never ported a fs so if you have any advices, I will
> be glad to read them.

Probably the U-Boot ubifs code is a useful template for
porting ubifs to barebox. It shouldn't be too hard to get
something working by looking at the current filesystems
in barebox.

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
