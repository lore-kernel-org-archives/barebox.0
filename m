Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJH6W-0002F5-Qn
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 04:30:25 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BF018FF8875
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 06:31:34 +0200 (CEST)
Date: Sun, 15 Apr 2012 06:12:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415041223.GH30672@game.jcrosoft.org>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-6-git-send-email-s.hauer@pengutronix.de>
 <20120414104658.GC2074@game.jcrosoft.org>
 <20120414132737.GZ3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414132737.GZ3852@pengutronix.de>
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
Subject: Re: [PATCH 5/7] net mii: Add mii_open/mii_close functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:27 Sat 14 Apr     , Sascha Hauer wrote:
> On Sat, Apr 14, 2012 at 12:46:58PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> > > Some phys need board specific fixups. To be able to do this
> > > from board code add mii_open/mii_close functions so that the
> > > board can use the regular mii_read/mii_write functions.
> > I don't like this
> > 
> > we can import the phylib from the kernel
> 
> I'm afraid what I want to do here is a board specific hack to a generic
> phy. Unfortunately this is a top secret product without datasheet
> available :(
so how are you going to describe this with DT boot?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
