Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WwlsD-0006ND-Lb
 for barebox@lists.infradead.org; Tue, 17 Jun 2014 05:23:58 +0000
Received: by mail-lb0-f182.google.com with SMTP id c11so1362212lbj.13
 for <barebox@lists.infradead.org>; Mon, 16 Jun 2014 22:23:34 -0700 (PDT)
Date: Tue, 17 Jun 2014 09:35:17 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140617093517.865365da210ba4675eb3789b@gmail.com>
In-Reply-To: <20140616213513.GG15686@pengutronix.de>
References: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
 <20140616210859.bc53e769b34765c933c93867@gmail.com>
 <20140616213513.GG15686@pengutronix.de>
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
Subject: Re: [PATCH] ARM: AM335x: Beaglebone: Fix memory setup for
 Beaglebone black
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 16 Jun 2014 23:35:13 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Mon, Jun 16, 2014 at 09:08:59PM +0400, Antony Pavlov wrote:
> > On Mon, 16 Jun 2014 17:13:54 +0200
> > Philipp Zabel <p.zabel@pengutronix.de> wrote:
> > =

> > Question to Sascha.
> > =

> > Can we preserve the 'memory' dts record in situations like this?
> > =

> > Is it possible just alter dts in early init code?
> > Or something else?
> =

> For what do you want to preserve it? barebox never uses the memory node
> directly to pass it to the kernel. The barebox memory banks are
> initialized from the code and from the dts. When starting Linux the
> memory node is (re)populated with the barebox memory banks
> =

> I may misunderstand what you are trying to archieve.

Imagine a family of boards. The RAM size can vary from board to board
(for simplicity suppose that all over conditions are the same).
Suppose I have a reliable RAM size detection routine and I want to run
just the same barebox image on different boards.
I want to run dts enabled Linux on all boards.

How can I handle this situation correctly?

Also note that on MIPS boards barebox uses no more than 256 MiB of RAM
(even if a board has more than 256 MiB of RAM). It's a measure to make
mips barebox simplier.
I want to pass information on all available RAM to linux via dts.
Can you describe reasonable barebox behaviour in this situation please?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
