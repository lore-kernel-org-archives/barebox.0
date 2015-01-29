Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGlhO-0005ZP-98
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 09:47:42 +0000
Date: Thu, 29 Jan 2015 10:47:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129094720.GG12209@pengutronix.de>
References: <1422308050-13895-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422308050-13895-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 1/3] net: smc1111: allow platform specific accessors
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Mon, Jan 26, 2015 at 10:34:08PM +0100, Robert Jarzmik wrote:
> Smc network IPs can be wired up in different funny ways. For example the
> lubbock pxa25x development platform wires all address lines shifted by
> 2, ie. bus A2 is smc91c96 A0, bus A3 is smc91c96 A1 etc ...

Yeah I know, connecting the 91c111 inspired the board designers to many
funny things. Passing function pointers in platform_data is not very
future proof since this doesn't work with device tree. I see that the
Linux driver has device tree support. Does this binding work for you?


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
