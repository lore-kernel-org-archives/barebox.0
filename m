Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.sysmocom.de ([2a01:4f8:191:444c::2:4])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xrjm1-0002kG-3E
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 08:41:04 +0000
Date: Fri, 21 Nov 2014 09:40:01 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
Message-ID: <20141121084001.GO4921@xiaoyu.lan>
References: <loom.20141120T214035-355@post.gmane.org>
 <20141121071116.GP30369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141121071116.GP30369@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 21, 2014 at 08:11:16AM +0100, Sascha Hauer wrote:

Good Morning,

> I don't understand what the exact problem is. So your command generally
> works, only when it's called from the start script it doesn't work. Did
> I get that correctly? Also a second invocation of the command then
> works, right?
> This sounds like the phy is not yet ready. I often get the impression
> that the very first packet sent to the network is lost, even though the
> phy registers tell us the phy is ready. I never found out what the
> problem is here.

 lldp
 sleep 2s
 lldp

With the first "lldp" invocation the network is activated and then I
need to sleep a bit (I don't know if 1s or less is working but with
no wait it certainly doesn't work).

With checking the phy you refer to the call of eth_carrier_check that
is used by eth_send?

kind regards
	holger

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
