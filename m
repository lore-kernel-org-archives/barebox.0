Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBPR4-0006ng-OH
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 12:19:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B4A0BFF9E52
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 14:24:53 +0200 (CEST)
Date: Tue, 11 Sep 2012 14:16:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120911121644.GJ31207@game.jcrosoft.org>
References: <1347341518-2779-1-git-send-email-alex.aring@gmail.com>
 <1347341518-2779-2-git-send-email-alex.aring@gmail.com>
 <20120911073138.GE18243@pengutronix.de>
 <CAB_54W69jr4hnoa54mNn76WRCX3BV35UJYb0BrpCqfJUYJ0yOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB_54W69jr4hnoa54mNn76WRCX3BV35UJYb0BrpCqfJUYJ0yOw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] complete: abstract path complete
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On 12:38 Tue 11 Sep     , Alexander Aring wrote:
>    Hi,
> 
>    I prefer this implementation than the older one, because it check on
>    executable(Maybe we add a attribute for that or check on shebang) file and
>    call found with the full path.
>    I was thinking about to put this as RFC..., because I don't have really a
>    usecase for this.
>    Some commands can do a autocompletion for files that are in $PATH, when
>    this is needed.
> 
>    The naming things, I don't like the name, too. I was doing the naming like
>    the others functions.
>    I will send a v2 with a better name and functionheader
do not like it is not a justification to move or rename it

IT remember the shit that did TI guys on the kernel rename and move stuff
because x or y do notlinke the naming

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
