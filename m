Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WyzqQ-0003n8-0h
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 08:43:19 +0000
Received: by mail-yk0-f181.google.com with SMTP id 9so4547541ykp.12
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 01:42:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140623074308.GU15686@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
 <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
 <20140623074308.GU15686@pengutronix.de>
Date: Mon, 23 Jun 2014 10:42:55 +0200
Message-ID: <CAOpc7mEtWpacJ1Q7nqBmYzHYEWdQBw7hrCgqLP-9bijpP9qsXw@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: i.MX6 frame buffer inside barebox?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> My preferred solution is to be fast enough in the bootloader
> and show a splash screen under Linux only.

Hmm, I'd like to not do that. Splash screen from Linux usually means
that I need an initrd. And an initrd is seldom needed on an embedded
device (i.e. no complicated RAID or DM setup). And it just slows down
the overall boot ...

But thanks for the info anyway.

Oh, one more question: do you have any idea if a simplefb would be
fast enought for X11 ?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
