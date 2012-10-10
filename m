Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLttU-0001kh-I3
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 10:52:05 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A20C3DC1823
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2012 12:58:29 +0200 (CEST)
Date: Wed, 10 Oct 2012 12:49:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121010104941.GI26553@game.jcrosoft.org>
References: <20121010064633.GH27665@pengutronix.de>
 <20121010094123.GH26553@game.jcrosoft.org>
 <20121010095411.GB27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121010095411.GB27665@pengutronix.de>
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
Subject: Re: barebox@ELCE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:54 Wed 10 Oct     , Sascha Hauer wrote:
> On Wed, Oct 10, 2012 at 11:41:23AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:46 Wed 10 Oct     , Sascha Hauer wrote:
> > > Hi All,
> > > 
> > > As you might have noticed already there is a barebox presentation at the
> > > ELCE this year in Barcelona. For everyone who is able to come I'd be
> > > happy to see and meet you there.
> > > I will talk about the current barebox status and the future directions
> > > for barebox.
> > for the future direction I thik we could discus about it here first
> 
> Well those who have seen the patches I was recently working on won't be
> surprised: It goes into the direction of a multiplatform bootloader.
can we add dt probe will full dt support (maybe drop the boards

I'll to add multi boards support too specially usefull as a second stage. As
example we could detect the board type in the pbl and let barebox select the
correct one, also if a first stage oottloader exist it can pass the
infotmation.

I was thinking on arm in the same way as the kernel

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
