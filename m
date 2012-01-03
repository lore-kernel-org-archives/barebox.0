Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri1nJ-0007DO-HI
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 10:40:38 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 36976DC3CC3
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 11:41:34 +0100 (CET)
Date: Tue, 3 Jan 2012 11:33:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120103103359.GI945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
 <1325344898-7076-1-git-send-email-plagnioj@jcrosoft.com>
 <20120103093739.GO27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120103093739.GO27267@pengutronix.de>
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
Subject: Re: [PATCH 01/12] atmel: reference boards and Caloa boards bbt
 option enabled
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:37 Tue 03 Jan     , Sascha Hauer wrote:
> On Sat, Dec 31, 2011 at 04:21:27PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/at91sam9260ek/init.c    |    1 +
> >  arch/arm/boards/at91sam9261ek/init.c    |    1 +
> >  arch/arm/boards/at91sam9263ek/init.c    |    1 +
> >  arch/arm/boards/at91sam9m10g45ek/init.c |    1 +
> >  arch/arm/boards/usb-a926x/init.c        |    1 +
> >  5 files changed, 5 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> > index dbd6541..b10d0dc 100644
> > --- a/arch/arm/boards/at91sam9260ek/init.c
> > +++ b/arch/arm/boards/at91sam9260ek/init.c
> > @@ -71,6 +71,7 @@ static struct atmel_nand_data nand_pdata = {
> >  #else
> >  	.bus_width_16	= 0,
> >  #endif
> > +	.on_flash_bbt	= 1,
> 
> This field does not exist and is not added in this series, so current
> next is broken on Atmel.
> Maybe your branch is different from your pull request? I had to apply
> these patches from the mails since I can't reach your server.
I resend the patch to the ML

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
