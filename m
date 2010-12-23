Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVihT-0000y0-Ns
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 10:47:12 +0000
Date: Thu, 23 Dec 2010 11:47:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101223104708.GG6017@pengutronix.de>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3tyi8carg.fsf@intrepid.localdomain>
	<20101222010047.GF19266@game.jcrosoft.org>
	<m3r5d963id.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3r5d963id.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 6] ARM: support big/little endian switching in "bootz".
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Wed, Dec 22, 2010 at 07:55:54PM +0100, Krzysztof Halasa wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> >> ARM: support big/little endian switching in "bootz".
> 
> > don't we need to update bootm and bootu too?
> 
> Probably. I've never used bootu, so it would be best if someone familiar
> with it made the change (or at least tested it).

For bootu there will be no simple way to recognize the endianess. The
image started here is a raw binary image without any header information.
We'll probably need a command line switch to switch the endianess
manually.

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
