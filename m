Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wflk1-0006Aq-G3
 for barebox@lists.infradead.org; Thu, 01 May 2014 07:49:15 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so2000938eek.18
 for <barebox@lists.infradead.org>; Thu, 01 May 2014 00:48:48 -0700 (PDT)
Date: Thu, 1 May 2014 09:48:33 +0200
From: Beniamino Galvani <b.galvani@gmail.com>
Message-ID: <20140501074832.GA4548@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
 <20140429070557.GB5858@pengutronix.de>
 <20140429211313.GA15720@gmail.com> <5555245.5Qy31DLVk9@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5555245.5Qy31DLVk9@diego>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 29, 2014 at 11:59:22PM +0200, Heiko St=FCbner wrote:
> > > BTW I noticed the upstream radxa rock dts file does not have a board
> > > specific compatible. I added this in my patch, but this should be done
> > > upstream.
> > =

> > CC'ing Heiko, who is the Linux Rockchip maintainer.
> =

> Until now I didn't give it much thought, but according to usage-model.txt=
 the =

> board-specific compatible is a required property. So we'll need to add it=
 to =

> the board dts in the kernel too.
> =

> So you could send a patch, or I'll prepare one in the next days.

Ok, I will send a patch.

Beniamino

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
