Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from oproxy3.bluehost.com ([2605:dc00:100:2::a3]
 helo=oproxy3-pub.bluehost.com)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPdw-0006AT-9j
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:45:37 +0000
From: "David Lynch Jr." <dhlii@dlasys.net>
In-Reply-To: <20120125220848.GC5446@pengutronix.de>
References: <1327525133.19793.23.camel@hp-dhlii>
 <20120125220848.GC5446@pengutronix.de>
Date: Thu, 26 Jan 2012 08:45:30 -0500
Message-ID: <1327585530.8900.1.camel@hp-dhlii>
Mime-Version: 1.0
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
Subject: Re: i.MX53 QSB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks for all the responses. 


On Wed, 2012-01-25 at 23:08 +0100, Sascha Hauer wrote:
> Hi David,
> 
> On Wed, Jan 25, 2012 at 03:58:53PM -0500, David Lynch Jr. wrote:
> > I can build a barebox.bin for the i.MX53 QSB. 
> > 
> > If I am booting from the SD card how do I get it onto the card
> > 
> > dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??
> 
> cat barebox.bin > /dev/sdc
> 
> Of course this means that you will overwrite the partition table of the
> SD card. I'm still loooking for a good way to make this behaviour more
> convenient.
> 
> Sascha
> 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
