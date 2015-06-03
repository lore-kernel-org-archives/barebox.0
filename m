Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z03u2-00016C-W0
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 08:19:59 +0000
Date: Wed, 3 Jun 2015 10:19:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603081935.GQ6325@pengutronix.de>
References: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
 <20150601114150.GG6325@pengutronix.de>
 <OF4A53439D.B017BB3F-ONC1257E58.0014663E-C1257E58.00146649@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF4A53439D.B017BB3F-ONC1257E58.0014663E-C1257E58.00146649@o0802.rafi.inhouse>
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
Subject: Re: Clocks on Barebox
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2015 at 05:42:49AM +0200, andreas.willig@rafi.de wrote:
> Hi Sascha,
> I'm currently on the next branch, but i did not see changes at this
> point since master or stable release. Like issued earlier the clock
> table enumeration is empty. Is there a specific compatible attribute
> required?

I just tested barebox -next on the SabreLite board with the
imx_v7_defconfig. It works as expected. Do you have any patches applied
or use a different config file? I have no idea what goes wrong here.

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
