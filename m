Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wwq75-0004Xt-4d
 for barebox@lists.infradead.org; Tue, 17 Jun 2014 09:55:35 +0000
Received: by mail-la0-f48.google.com with SMTP id gl10so3682858lab.7
 for <barebox@lists.infradead.org>; Tue, 17 Jun 2014 02:55:11 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140614205341.GB16872@pengutronix.de>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
 <1402646075-22747-12-git-send-email-chf.fritz@googlemail.com>
 <20140614205341.GB16872@pengutronix.de>
Date: Tue, 17 Jun 2014 11:55:07 +0200
Message-ID: <1402998907.3130.1.camel@lovely>
Mime-Version: 1.0
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
Subject: Re: [PATCH 11/18] musb: adapt driver to work on barebox
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael

On Sat, 2014-06-14 at 22:53 +0200, Michael Grzeschik wrote:
> On Fri, Jun 13, 2014 at 09:54:28AM +0200, Christoph Fritz wrote:
> > ---
> >  drivers/usb/musb/linux-compat.h |   31 +-------
> >  drivers/usb/musb/musb.h         |  164 +++++++++++++++++++++++++++++++++++++++
> >  drivers/usb/musb/musb_core.c    |   20 +++--
> >  drivers/usb/musb/musb_core.h    |   42 +++-------
> >  drivers/usb/musb/musb_dsps.c    |    2 -
> >  drivers/usb/musb/musb_host.c    |    2 +-
> >  drivers/usb/musb/musb_io.h      |   19 -----
> >  drivers/usb/musb/usb-compat.h   |    2 +-
> >  include/usb/musb.h              |  162 --------------------------------------
> 
> Why move musb.h in patch 6 first, when
> it got moved here again?

It's a left over from my development branch. Thanks for the hint.

 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
