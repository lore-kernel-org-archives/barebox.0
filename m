Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XrkMe-0007pv-NC
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 09:18:53 +0000
Date: Fri, 21 Nov 2014 10:18:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141121091830.GV30369@pengutronix.de>
References: <loom.20141120T214035-355@post.gmane.org>
 <20141121071116.GP30369@pengutronix.de>
 <20141121084001.GO4921@xiaoyu.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141121084001.GO4921@xiaoyu.lan>
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
Subject: Re: Activating network during start
To: Holger Hans Peter Freyther <holger@freyther.de>, h@pengutronix.de
Cc: barebox@lists.infradead.org

On Fri, Nov 21, 2014 at 09:40:01AM +0100, Holger Hans Peter Freyther wrote:
> On Fri, Nov 21, 2014 at 08:11:16AM +0100, Sascha Hauer wrote:
> 
> Good Morning,
> 
> > I don't understand what the exact problem is. So your command generally
> > works, only when it's called from the start script it doesn't work. Did
> > I get that correctly? Also a second invocation of the command then
> > works, right?
> > This sounds like the phy is not yet ready. I often get the impression
> > that the very first packet sent to the network is lost, even though the
> > phy registers tell us the phy is ready. I never found out what the
> > problem is here.
> 
>  lldp
>  sleep 2s
>  lldp
> 
> With the first "lldp" invocation the network is activated and then I
> need to sleep a bit (I don't know if 1s or less is working but with
> no wait it certainly doesn't work).
> 
> With checking the phy you refer to the call of eth_carrier_check that
> is used by eth_send?

Yes.

You could try if one of the other network commands like 'ping' work
right after startup.

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
