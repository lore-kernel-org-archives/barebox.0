Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StOo5-0008Sy-9Y
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 20:00:42 +0000
Date: Mon, 23 Jul 2012 22:00:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723200037.GA30009@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
 <5007E38B.8040106@pengutronix.de>
 <20120719140834.GY30009@pengutronix.de>
 <20120719204548.GI30009@pengutronix.de>
 <20120720162007.GA22374@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120720162007.GA22374@sig21.net>
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
Subject: Re: [PATCH 8/9] ARM: Separate assembler functions into their own
 section
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On Fri, Jul 20, 2012 at 06:20:07PM +0200, Johannes Stezenbach wrote:
> > For example we have this:
> > 
> > .section .text.__divsi3
> > ENTRY(__divsi3)
> > ENTRY(__aeabi_idiv)
> > 	...
> 
> and also:
> ENTRY(__lshrdi3)
> ENTRY(__aeabi_llsr)
> 
> However, this is the rare exception.  How about
> adding __ENTRY for these cases?

I think it's better to keep the ENTRY semantics (which is derived from
the Linux Kernel) and just live with it that we have to add the .section
at the beginning of each function.

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
