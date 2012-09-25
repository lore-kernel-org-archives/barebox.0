Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGKB2-0003Ej-Bi
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 01:43:09 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B420BFFA9AB
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 03:49:04 +0200 (CEST)
Date: Tue, 25 Sep 2012 03:40:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120925014035.GH26553@game.jcrosoft.org>
References: <CAAMcf8CHwJ=UiS5p8pLDuZO3fk5nNEJbqQOxvJLXMkxd_NS+Vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8CHwJ=UiS5p8pLDuZO3fk5nNEJbqQOxvJLXMkxd_NS+Vg@mail.gmail.com>
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
Subject: Re: [RFC][PATCH] archosg9: add support for tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 01:37 Tue 25 Sep     , vj wrote:
>    Hello,
>    A  this is my first contribution, so I'm basically requesting for
>    comments.
> 
>    The attached patch adds support for Archos G9 tablet wich uses an OMAP4460
>    cpu.
>    The tablet by default only boots from internal flash, so to test barebox
>    on it
>    a hardware tweak is required: change the sys_boot configuration.
>    Once done the tablet can be booted with the following command:
>    A sudo scripts/usbboot <first_stage> <rootfs>
> 
>    The patch contains
>    A 1.- specific changes for OMAP4460
>    A 2.- support for usb-booting
>    A 3.- support for console on usb
>    A 4.- support for file transfer through usb
>    A 5.- some minor bug fixes
>    A 6.- adds support for archosg9 board
> 
>    A question I have is what does omap_vector_init do?
>    It breaks usb-booting.
> 
>    In any case the patch should be tested with other boards to check it does
>    not
>    breaks something.
> 
>    The patch applies against 1af6fdcd03dbc311d785625bd6e2329f7ce1adb7.
can you resend your patch splitted in multiple patch (6 1 patchper topic)

via git email as example so we can review it

Best Regaards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
