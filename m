Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RehMR-0004jr-M7
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 06:15:10 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7D3A8DC7912
 for <barebox@lists.infradead.org>; Sun, 25 Dec 2011 07:15:45 +0100 (CET)
Date: Sun, 25 Dec 2011 07:09:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111225060944.GA16816@game.jcrosoft.org>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
 <1323945034-19687-2-git-send-email-s.hauer@pengutronix.de>
 <20111218130742.GE7899@game.jcrosoft.org>
 <20111219103109.GJ27267@pengutronix.de>
 <20111220140321.GF7899@game.jcrosoft.org>
 <20111223171448.GD27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111223171448.GD27267@pengutronix.de>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH 01/12] oftree: add of_fix_tree()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:14 Fri 23 Dec     , Sascha Hauer wrote:
> On Tue, Dec 20, 2011 at 03:03:21PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:31 Mon 19 Dec     , Sascha Hauer wrote:
> > > On Sun, Dec 18, 2011 at 02:07:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > HI,
> > > > 
> > > > 	what is the impact on the binary size??
> > > 
> > > Don't know. Why should this have a great influence on binary size?
> > I mean the whole rework??
> 
> About +2k
too muck it's break a lots of my board

we need to take a look to reduce the impact

as IIRC it's more with zlib and co

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
