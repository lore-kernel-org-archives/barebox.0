Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6umj-0001Gr-T2
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 06:00:47 +0000
Date: Mon, 22 Jun 2015 08:00:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150622060022.GC6325@pengutronix.de>
References: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
 <20150617092857.GJ6325@pengutronix.de>
 <20150620140912.b8435aff9de4a645f5d4639e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150620140912.b8435aff9de4a645f5d4639e@gmail.com>
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
Subject: Re: barebox picotcp integration (2015.06.14)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Sat, Jun 20, 2015 at 02:09:12PM +0300, Antony Pavlov wrote:
> On Wed, 17 Jun 2015 11:28:57 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Mon, Jun 15, 2015 at 01:13:43AM +0300, Antony Pavlov wrote:
> > > Hi!
> > > 
> > > I have just published latest picotcp-enabled barebox.
> > > Please see my 20150614.picotcp branch in my github barebox repo
> > > (https://github.com/frantony/barebox/tree/20150614.picotcp).
> > > 
> ...
> > 
> > Why are you using the picotcp tftp implementation? picotcp surely
> > supports sending/receiving udp packets, right? Wouldn't it be a good
> > first step to replace the barebox udp API with the one picotcp provides?
> > I mean I would expect that you replace only the network stack, not the
> > network stack including the applications. If at some point we decide
> > that the tftp implementation in picotcp is better than the one in
> > barebox that would be the time to switch it.
> > 
> 
> I have reworked tftp support: now barebox tftp implementation is used on top
> of picotcp udp/ip stack and works 2 times slower than original u-boot stack-based
> implementation (I have tested it with sandbox arch).

Do you have an idea why this is slower? I had a quick look into it and
found nothing obvious.

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
