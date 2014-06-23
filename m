Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x231.google.com ([2607:f8b0:4002:c01::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wyyd1-0006gI-IU
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:25:28 +0000
Received: by mail-yh0-f49.google.com with SMTP id f73so4712742yha.8
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 00:25:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140618195849.GL15686@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
Date: Mon, 23 Jun 2014 09:25:02 +0200
Message-ID: <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
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

Whaaa, it never occured to me that I have to enable the framebuffer as
well...   thanks, now it works.


As for simplefb, I removed that. I thought that this sets up a
framebuffer in the bootloader, which when Linux' framebuffer driver
takes over, without reprogramm or screen flicker. However, it seems
that this only works with specific framebuffer patterns, e.g. some 16
and 32 bit special rgb formats. I don't really get the need for that,
because the bootloader already has programmed the graphics device
correctly, the Linux driver could just re-use that information, so I
don't really see a need why the framebuffer organization has to be
present in the device tree in yet-another-format (tm).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
