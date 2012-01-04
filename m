Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiMto-0004lY-9e
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:12:44 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 37CDFDC03AB
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:13:44 +0100 (CET)
Date: Wed, 4 Jan 2012 10:05:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104090517.GB18008@game.jcrosoft.org>
References: <1325609969-21471-1-git-send-email-eric@eukrea.com>
 <1325609969-21471-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325609969-21471-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/4] dfu: fill bwPollTimeout and better handle detach
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 17:59 Tue 03 Jan     , Eric B=E9nard wrote:
> - bwPollTimeout is set to 10 ms, from the DFU spec, this
> is the minimum time, in milliseconds, that the host should
> wait before sending a subsequent DFU_GETSTATUS request.
> Without this, I get 25 seconds value and dfu-util waits twice 25s
> during download
> - when in IDEL and receiving DETACH, first return 0 to make
> dfu-util happy, then use a dfudetach variable to exit dfu
> (without an USB reset as per the comment on line 425) and
> return to runtime mode.
> - tested on i.MX25 & i.MX35
> =

Tested on usb-a926x

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
