Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOIOA-0006dD-Su
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 03:02:28 +0000
Received: from mail94.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7B371100CFF2
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 04:02:57 +0100 (CET)
Date: Fri, 14 Mar 2014 04:03:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140314030356.GC6478@ns203013.ovh.net>
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de>
 <20140313194252.GB6478@ns203013.ovh.net>
 <20140313203009.GT17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140313203009.GT17250@pengutronix.de>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:30 Thu 13 Mar     , Sascha Hauer wrote:
> On Thu, Mar 13, 2014 at 08:42:52PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:38 Thu 13 Mar     , Sascha Hauer wrote:
> > > Hi Sean,
> > > 
> > > On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
> > > > Hi,
> > > > 
> > > > I've finally managed to get U-Boot's SPL to configure DDR3 and load
> > > > barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
> > > > build with most features turned on, and I'm running into a number of
> > > > problems.  barebox is able to load a zImage off of the FAT partition,
> > > > set up ATAGs, and jump to it.  So I have the basics done.  But there are
> > > > lots of little things that aren't working.
> > > > 
> > > > When I boot without an Ethernet cable plugged in, the "timeout" command
> > > > takes a very long time to complete.  It generally freezes at "Hit any
> > > > key to stop autoboot:  3" and tends to ignore input for around ten
> > > > seconds.  How can I prevent this from happening, short of compiling out
> > > > FEC support?
> > > 
> > > Are you trying to start from network without a cable plugged in? When I
> > > start from network without a cable I get:
> > > 
> > > running /env/bin/init...
> > > 
> > > Hit m for menu or any other key to stop autoboot:  1
> > > blspec: blspec_scan_directory: net loader/entries
> > > booting net
> > > dhcp failed: Network is down
> > > dhcp: Network is down
> > > 
> > 
> > I get the same issue on Calao USB keys
> > 
> > this is quite anoying
> > 
> > can we fix it
> 
> Well if we try booting from network then we have to wait until it's
> clear that there's no link.
> 
> It may be that I don't understand the actual problem or issue.

I do agree if you try to boot on the network we have to wait the xs of timeout

The problem is that you have now a timeout even beofre the autoboot timeout
and even before to try to boot

I did not investigate further but the problem is there

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
