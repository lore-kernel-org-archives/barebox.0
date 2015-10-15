Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmhm8-0001Qa-GL
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 12:36:53 +0000
Received: by lbwr8 with SMTP id r8so67604235lbw.2
 for <barebox@lists.infradead.org>; Thu, 15 Oct 2015 05:36:29 -0700 (PDT)
Date: Thu, 15 Oct 2015 15:38:56 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151015153856.71d1506a@berta>
In-Reply-To: <20151014140908.GS7858@pengutronix.de>
References: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
 <20151014140908.GS7858@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 0/2] usb: core: return -EAGAIN on usb_* functions
 reentrance
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 14 Oct 2015 16:09:08 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Peter,
> 
> On Wed, Oct 14, 2015 at 01:15:47PM +0300, Peter Mamonov wrote:
> > The second patch of this patch set adds reentrance detection to 
> > the the following functions: usb_submit_int_msg, usb_control_msg and
> > usb_bulk_msg. These functions will return -EAGAIN if reentered. 
> > Other public usb_* functions call one of these three functions.
> > This patch enables one to use regular *delay() functions
> > throughout the ehci-hcd.c.
> > 
> > The first patch adds check for -EAGAIN return value to the usb
> > keyboard driver. The driver will skip keyboard poll upon getting
> > this error value from either usb_submit_int_msg() or
> > usb_get_report() functions.
> > 
> > Peter Mamonov (2):
> > 	input: usb_kbd: skip poll on -EAGAIN error
> > 	usb: core: return -EAGAIN on usb_* functions reentrance
> 
> Applied on -next. I believe we no longer need mdelay_non_interruptible
> in the ehci-hcd driver, right? Also we don't have to detect
> re-entrancy in the ehci driver anymore. I have applied some patches
> removing that to -next. Could you check the result?

Yes.
Yes.
I've tested the current "next" branch - the usb stuff works fine.

> 
> Sascha
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
