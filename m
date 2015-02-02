Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YID8J-0002PM-7D
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 09:17:27 +0000
Date: Mon, 2 Feb 2015 10:17:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150202091705.GW12209@pengutronix.de>
References: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v2 1/3] net: smc1111: add 16 bits accessors, allow
 address shift
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Jan 31, 2015 at 02:10:08PM +0100, Robert Jarzmik wrote:
> Smc network IPs can be wired up in different funny ways. For example the
> lubbock pxa25x development platform wires all address lines shifted by
> 2, ie. bus A2 is smc91c96 A0, bus A3 is smc91c96 A1 etc ...
> 
> In order to cope with the different possible combination, add a shift
> parameter for addresses.
> 
> By default, the old behaviour using the 32 bit accesses is kept.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Applied all, thanks

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
