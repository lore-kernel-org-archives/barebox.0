Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAj6-0006WR-CJ
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 09:01:19 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8FC0FFF9B30
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 11:06:55 +0200 (CEST)
Date: Sun, 16 Sep 2012 10:58:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916085839.GF25990@game.jcrosoft.org>
References: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
 <20120916073419.GD25990@game.jcrosoft.org>
 <20120916074457.GB6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916074457.GB6180@pengutronix.de>
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
Subject: Re: Patch a file in the next branch
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 09:44 Sun 16 Sep     , Sascha Hauer wrote:
> On Sun, Sep 16, 2012 at 09:34:19AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:19 Sun 16 Sep     , Franck Jullien wrote:
> > > Hi,
> > > 
> > > In order to fix fat detection, I need to patch ff.c and filetype.c.
> > > However, ff.c is already patched in next (I need to modify the version
> > > already in next).
> > > Should I generate my patches against next or master ?
> > redo the patch as it more a v2 that an increment one
> 
> Probing a FAT with MBR is a new feature, being able to automatically
> detect it is a new feature aswell, so I see no reason to merge both
> patches.
yes but without it the mount will ne to force the type
and As discuss with Franch the ff.c should use the filetype so make in one
patch make more sense

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
