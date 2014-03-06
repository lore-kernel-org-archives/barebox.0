Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLVAg-0001i6-RY
 for barebox@lists.infradead.org; Thu, 06 Mar 2014 10:04:59 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 6 Mar 2014 11:04:28 +0100
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D897@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
 <20140306095541.GY17250@pengutronix.de>
In-Reply-To: <20140306095541.GY17250@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: at91sam9260-ek ...
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: donderdag 6 maart 2014 10:56
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: at91sam9260-ek ...
> 
> On Wed, Mar 05, 2014 at 10:55:16AM +0100, Vanhauwaert Wouter wrote:
> > Hello,
> >
> > Is the setup for a at91sam9260-ek still functioning?
> > I have troubles with my nand flash. At first it boots and writes BBT-tables.
> > However, next boot, it won't read the BBT, and has errors with the magic on
> the environment variables.
> > Erase /dev/env0 and saveenv do not make a difference.
> > Nandtest does not give me errors...
> >
> > I'm just using the latest barebox 2014.2 and loading it on a
> > at91sam9260-ek through usb (sam-ba). I'm just using the plain
> > at91sam9260ek_defconfig
> 
> Seems there's something broken. I have no better idea other than bisecting it.
> 

Is there a version which is definitely working and tested with at91sam9260-ek?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
