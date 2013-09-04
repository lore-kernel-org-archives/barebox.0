Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH6Wa-0004CX-9h
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 06:25:09 +0000
Date: Wed, 4 Sep 2013 08:24:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904062444.GE30088@pengutronix.de>
References: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net>
 <87ppspye5z.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ppspye5z.fsf@free.fr>
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
Subject: Re: [PATCH 1/4] mtd: fix erasesize math for non power-of-2 devices
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Tue, Sep 03, 2013 at 08:04:56PM +0200, Robert Jarzmik wrote:
> Darren Garnier <dgarnier@reinrag.net> writes:
> 
> > Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
> 
> Hi Darren,
> 
> First of all, do any device exist where erasesize is non power-of-2, and if so
> which one do you have in mind ?

Atmel DataFlashes seem to have non power-of-2 erasesizes, Darren
mentioned this is in the introduction message. But right, it should be
mentioned in the commit log.

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
