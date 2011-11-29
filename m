Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVI2Q-0006XC-ER
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 07:23:36 +0000
Date: Tue, 29 Nov 2011 08:23:25 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20111129072325.GI16719@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-6-git-send-email-s.hauer@pengutronix.de>
 <20111128110331.GE15008@game.jcrosoft.org>
 <20111128111238.GV27267@pengutronix.de>
 <20111129043829.GO15008@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111129043829.GO15008@game.jcrosoft.org>
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
Subject: Re: [PATCH 05/14] armlinux: cleanup linux vars
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 29, 2011 at 05:38:29AM +0100, Jean-Christophe
PLAGNIOL-VILLARD wrote:
> > > I'm using it so please do not remove the old arch_number
> >
> > I'm not removing it, just changing the name. Can't you update the
> > name in your environment?
>
> no :(

Huh? You are able to exchange your bootloader against a new one, but you
are not able to exchange your environment as well? Can you explain that
a bit more detailed?

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
