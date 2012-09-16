Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9PS-00042G-VY
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:36:56 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6130BFF9BB9
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 09:42:35 +0200 (CEST)
Date: Sun, 16 Sep 2012 09:34:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916073419.GD25990@game.jcrosoft.org>
References: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
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
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 09:19 Sun 16 Sep     , Franck Jullien wrote:
> Hi,
> 
> In order to fix fat detection, I need to patch ff.c and filetype.c.
> However, ff.c is already patched in next (I need to modify the version
> already in next).
> Should I generate my patches against next or master ?
redo the patch as it more a v2 that an increment one

Sacah will replace it

Best Regards,
J.
> 
> Franck.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
