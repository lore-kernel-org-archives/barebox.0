Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VocFc-0006Fb-EE
 for barebox@lists.infradead.org; Thu, 05 Dec 2013 16:58:09 +0000
Received: from mail607.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DE920FF887B
 for <barebox@lists.infradead.org>; Thu,  5 Dec 2013 17:48:06 +0100 (CET)
Date: Thu, 5 Dec 2013 17:48:09 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131205164809.GE27628@ns203013.ovh.net>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346765@AUTOSERVER1.auto.local>
 <20131127210115.GZ24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467EB@AUTOSERVER1.auto.local>
 <20131128162219.GT32436@tarshish>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467F8@AUTOSERVER1.auto.local>
 <20131129094623.GB24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346830@AUTOSERVER1.auto.local>
 <20131203092654.GH24559@pengutronix.de>
 <20131203190126.GD27628@ns203013.ovh.net>
 <20131205152456.GT24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131205152456.GT24559@pengutronix.de>
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
Subject: Re: FW: Barebox on Karo TX25
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 16:24 Thu 05 Dec     , Sascha Hauer wrote:
> On Tue, Dec 03, 2013 at 08:01:26PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:26 Tue 03 Dec     , Sascha Hauer wrote:
> > > BTW Please don't top-post.
> > > 
> > > On Mon, Dec 02, 2013 at 09:13:31AM +0000, John Parker wrote:
> > > > Hi again
> > > > 
> > > > So now my problem is that I really could do with the LED and UBIFS stuff that happened since February.
> > > > 
> > > > Should I try to fix mx25 in the latest code, or undo the problematic commit?
> > > 
> > > Well preferably you should fix the latest code and send a patch to make
> > > it work again ;) However, that could become tricky. For doing so the
> > > patch to enable the debug UART early may become useful. With this you
> > > can use putc_ll and puthex_ll in early code.
> > > 
> > > I did some investigation. What happens here is really strange. First I
> > > added a missing instruction cache invalidation. That alone doesn't fix
> > > the problem. Inserting a nop fixes booting for me, see the attached
> > > patch. If I move the nop up in the code it still works. If I move it
> > > down, then the board does not work. I have no idea what's happening here
> > > :(
> > 
> > could be that the sdram controler need times to stabelized and that you miss a
> > delay for this
> 
> I thought about this aswell, but I don't believe that a single nop could
> make such a reproducable difference. I tried all this with JTAG
> debugging aswell which should make all timing issues vanish.

on at91 we need to do a bus access to validate the sdram config so could be
an out of sync on the bus

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
