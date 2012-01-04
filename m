Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiN01-0005me-6M
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:19:09 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 176A010101E8
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:20:12 +0100 (CET)
Date: Wed, 4 Jan 2012 10:19:02 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120104101902.7215bf61@eb-e6520>
In-Reply-To: <20120104090312.GO5446@pengutronix.de>
References: <1325609969-21471-1-git-send-email-eric@eukrea.com>
 <20120104090312.GO5446@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/4] fsl_udc: update and fix
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Wed, 4 Jan 2012 10:03:12 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> Generally, can you please collect the comments to a series and then
> send the whole series again instead of responding with v2 patches in
> the original thread? I find it quite hard to pick the correct patches
> from a longer thread. It's easier to just see 'no comments to the new
> series (except maybe acks), so apply it'.
> =

I'll send a clean version of the whole serie once all the comments are
addressed.

While testing in an other configuration, I fixed a problem which
was preventing the usbserial console enumeration while timeout was
running (needs poller_call() in the do {} while () loop in
do_timeout()) so a v4 is following.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
