Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJkuO-0001v8-2l
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 12:19:53 +0000
Date: Mon, 16 Apr 2012 14:19:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120416121937.GR3852@pengutronix.de>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
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
Subject: Re: Antwort: Re: barebox JSON
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Apr 16, 2012 at 01:52:33PM +0200, christian.buettner@rafi.de wrote:
> The advantage is a generic interface used in mass production.
> 
> I formulate my question in another way.
> Is there an approach launching a little tool, that listens to UART or 
> Ethernet when the bootloader starts.
> The tool is kind of an dispatcher, using an incoming message to start e.g. 
> an update of the kernel.

Well we have UART console and network console, you can use something
like kermit or expect to remote control barebox.

I know this sucks and is not what you wanted to hear, but currently this
is all we have.

I more than once thought about a real machine interface to barebox, but
I have no good idea how to do this.

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
