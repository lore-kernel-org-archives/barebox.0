Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XriNe-0001wR-Jl
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 07:11:47 +0000
Date: Fri, 21 Nov 2014 08:11:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141121071116.GP30369@pengutronix.de>
References: <loom.20141120T214035-355@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20141120T214035-355@post.gmane.org>
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
To: Holger Freyther <holger@freyther.de>
Cc: barebox@lists.infradead.org

Hi Holger,

On Thu, Nov 20, 2014 at 08:50:17PM +0000, Holger Freyther wrote:
> Good Evening,
> 
> I wrote a small command to send a LLDP frame over the network. Then I
> tried to integrate this command into the start script but I noticed that
> while a message is printed on the console no actual packet is being
> sent on the wire.
> 
> I am using a Phytec AM335X SoM and I am not on the latest version of
> barebox either so this might be something that is already fixed.
> 
> My assumption is that when I use eth_get_current/eth_send the network
> is being activated. I had a quick look at the return code of eth_send
> to see if I could see that my packet has been dropped but in both
> success/failure the method returns 0. Is this to be expected? My
> interim solution is to add a sleep after the first command invocation
> and then do it again?

I don't understand what the exact problem is. So your command generally
works, only when it's called from the start script it doesn't work. Did
I get that correctly? Also a second invocation of the command then
works, right?
This sounds like the phy is not yet ready. I often get the impression
that the very first packet sent to the network is lost, even though the
phy registers tell us the phy is ready. I never found out what the
problem is here.

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
