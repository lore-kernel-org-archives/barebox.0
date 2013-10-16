Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWMyQ-0002KV-Rz
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 09:00:59 +0000
Received: by mail-ea0-f169.google.com with SMTP id k11so204263eaj.0
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2013 02:00:37 -0700 (PDT)
Date: Wed, 16 Oct 2013 11:00:27 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131016090027.GA56824@gmail.com>
References: <1381858703-27993-2-git-send-email-a.heider@gmail.com>
 <1381908729.4093.12.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381908729.4093.12.camel@weser.hi.pengutronix.de>
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
Subject: Re: [PATCH] ARM: rpi: fix reading of the EMMC clock for CONFIG_MMU
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 16, 2013 at 09:32:09AM +0200, Lucas Stach wrote:
> Am Dienstag, den 15.10.2013, 19:38 +0200 schrieb Andre Heider:
> > Add explicit flushing to prevent the 50MHz fallback.
> > 
> Uh, this is pretty ugly. We certainly don't want all those explicit
> invalidates/flushes in the driver code. Isn't it possible to push this
> into some helper functions, that do the right thing when communicating
> with the mailboxes?

Sure, as of now this was just the only mbox user. So I hacked away to
prevent regressions under CONFIG_MMU ;)

But I planned to work on exactly that, since we want to use mbox for
other things too (like setting up simplefb for the kernel).

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
