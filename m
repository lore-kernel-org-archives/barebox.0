Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6CQ-00009r-8D
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 09:01:07 +0000
Received: by mail-lj1-x244.google.com with SMTP id h15so3928922ljg.10
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 02:01:04 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:01:00 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190812120100.d43cc8b9adffc39522fd9cef@gmail.com>
In-Reply-To: <20190812074121.zn5h3yr4rja32q3q@pengutronix.de>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20181218071943.2560-10-antonynpavlov@gmail.com>
 <20190811125905.6fc213ce18ee414156f482ab@gmail.com>
 <20190812074121.zn5h3yr4rja32q3q@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 09/10] scripts: add nmon-loader
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 12 Aug 2019 09:41:21 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Sun, Aug 11, 2019 at 12:59:05PM +0300, Antony Pavlov wrote:
> > On Tue, 18 Dec 2018 10:19:42 +0300
> > Antony Pavlov <antonynpavlov@gmail.com> wrote:
> > =

> > Hi Sascha!
> > =

> > It looks like this patch is missed in the master branch.
> > Please apply the patch!
> =

> I was about to apply it when I just saw that neither the commit message
> nor a comment in the script give a hint what this all about. Could you
> add something?
> =

> > > +if {$argc !=3D 3} {
> > > +    puts "Usage:"
> > > +    puts "    nmon-loader.expect <file> <device> <speed>"
> =

> The script is named just nmon-loader, not nmon-loader.expect.

Ok, I'll add a comment to the script itself and resend the updated patch.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
