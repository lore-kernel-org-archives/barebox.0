Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SZKBF-0008Hs-4X
 for barebox@lists.infradead.org; Tue, 29 May 2012 11:01:39 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B610CFF964F
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 12:38:10 +0200 (CEST)
Date: Tue, 29 May 2012 12:35:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120529103507.GK2202@game.jcrosoft.org>
References: <1338127033-10348-1-git-send-email-plagnioj@jcrosoft.com>
 <1338127033-10348-2-git-send-email-plagnioj@jcrosoft.com>
 <20120529083506.GZ30400@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120529083506.GZ30400@pengutronix.de>
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
Subject: Re: [PATCH 2/2] menu: add support for disable entry
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:35 Tue 29 May     , Sascha Hauer wrote:
> On Sun, May 27, 2012 at 03:57:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    2 +
> >  commands/menu.c                                    |   15 +++++-
> >  common/menu.c                                      |   44 +++++++++++++------
> >  include/menu.h                                     |    1 +
> >  4 files changed, 45 insertions(+), 17 deletions(-)
> > 
> > @@ -450,6 +458,7 @@ static const __maybe_unused char cmd_menu_help[] =
> >  "Add an entry\n"
> >  "  (-R for do no exit the menu after executing the command)\n"
> >  "  (-b for box style 1 for selected)\n"
> > +"  (-D for disabel style command is not needed)\n"
> 
> s/disabel/disable/
> 
> Better talk about comment lines instead? If I understand this patch
> correctly that's what it does.
yes and no as I get in mind to beable to change the type of the menu_entry at
runtime

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
