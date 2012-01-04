Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiMt1-0004hr-4E
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:11:55 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8AC9BDC44FD
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:12:42 +0100 (CET)
Date: Wed, 4 Jan 2012 10:03:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104090334.GA18008@game.jcrosoft.org>
References: <20120104081755.GM945@game.jcrosoft.org>
 <1325665914-19238-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325665914-19238-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v3 3/4] serial gadget: enable/disable on request
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 09:31 Wed 04 Jan     , Eric B=E9nard wrote:
> - add a usbserial command to enable/disable the serial gadget
> - allow dfu and usbserial to cohexist in the same barebox
> - add a timeout in u_serial so that we don't get locked if the user
> enable usbserial from a UART console but doesn't consume the data
> on the usbserial port created on the PC
> - remove debug or verbose printf
> - tested on i.MX25 & i.MX35
> =

tested on usb-a926x

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
