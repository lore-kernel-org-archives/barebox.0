Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiM97-0004Iz-Dm
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 08:24:30 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2AF15DC3CFA
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 09:25:28 +0100 (CET)
Date: Wed, 4 Jan 2012 09:17:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104081755.GM945@game.jcrosoft.org>
References: <1325609969-21471-3-git-send-email-eric@eukrea.com>
 <1325623931-28780-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325623931-28780-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/4] serial gadget: enable/disable on request
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 21:52 Tue 03 Jan     , Eric B=E9nard wrote:
> - add a usbserial command to enable/disable the serial gadget
> - allow dfu and usbserial to cohexist in the same barebox
> - add a timeout in u_serial so that we don't get locked if the user
> enable usbserial from a UART console but doesn't consume the data
> on the usbserial port created on the PC
> - remove debug or verbose printf
> - tested on i.MX25 & i.MX35
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> v2 : always recompile after fixing checkpatch notes ...
> =

>  commands/Makefile             |    1 +
>  commands/usbserial.c          |  102 +++++++++++++++++++++++++++++++++++=
++++++
>  drivers/usb/gadget/Kconfig    |    5 +--
>  drivers/usb/gadget/f_acm.c    |    4 +-
>  drivers/usb/gadget/serial.c   |   40 +++++++++++++---
>  drivers/usb/gadget/u_serial.c |   22 ++++++---
missing usbserial.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
