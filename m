Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rv30H-0001FO-3M
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 08:35:50 +0000
Date: Wed, 8 Feb 2012 09:35:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120208083537.GN3852@pengutronix.de>
References: <OFD19876D3.4F83DF62-ONC125799E.002832ED-C125799E.0028D5AE@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFD19876D3.4F83DF62-ONC125799E.002832ED-C125799E.0028D5AE@o0802.rafi.inhouse>
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
Subject: Re: freescale imx28 barebox supported?
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Wed, Feb 08, 2012 at 08:26:05AM +0100, christian.buettner@rafi.de wrote:
> Hi all,
> is the imx28 from Freescale supported in barebox? I cannot find it in the 
> menuconfig list.
> UBoot supports the imx28, so i thought i can find it in barbox too..

Yes, it's supported. It's a different architecture than the classic i.MX
processors. You find it when you change the ARM system type to
"Freescale i.MX23/28 (mxs) based"

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
