Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDwhX-0005GS-1I
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:47:14 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8A548FFABCB
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 14:03:33 +0100 (CET)
Date: Fri, 8 Mar 2013 13:42:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308124245.GC32347@game.jcrosoft.org>
References: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
 <1362613518-15456-1-git-send-email-plagnioj@jcrosoft.com>
 <20130308074108.GX1906@pengutronix.de>
 <20130308122143.GB32347@game.jcrosoft.org>
 <20130308124525.GB1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308124525.GB1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] beagle: add missing mmc twl and control init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:45 Fri 08 Mar     , Sascha Hauer wrote:
> On Fri, Mar 08, 2013 at 01:21:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:41 Fri 08 Mar     , Sascha Hauer wrote:
> > > On Thu, Mar 07, 2013 at 12:45:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > take from xloader
> > > > 
> > > > with this the mmc work even when booting from nand
> > > 
> > > Which beagle board revision do you have? With this patch the MMC
> > > doesn't work at all anymore, even when booting from it.
> > c3
> 
> Me too. Have you tested the patch?
I use my current flashed barebox and re-run barebox

and it works

I boot from NAND

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
