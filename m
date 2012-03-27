Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCP1L-0008MK-Gc
 for barebox@lists.infradead.org; Tue, 27 Mar 2012 05:32:40 +0000
Date: Tue, 27 Mar 2012 07:32:25 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20120327053225.GI7923@pengutronix.de>
References: <OFC5456862.5E2219B4-ONC12579CD.002FB0FF-C12579CD.00304E9A@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFC5456862.5E2219B4-ONC12579CD.002FB0FF-C12579CD.00304E9A@o0802.rafi.inhouse>
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
Subject: Re: imx53 internal boot from NAND
To: guenter.gebhardt@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2012 at 10:47:36AM +0200, guenter.gebhardt@rafi.de wrote:
> Has someone done this or can give me some advice?

We have the "bcb" command recently, and the functionality should be
integrated there.

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
