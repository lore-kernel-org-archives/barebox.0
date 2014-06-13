Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22f.google.com ([2607:f8b0:4002:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvXHY-0005HN-Jz
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 19:37:01 +0000
Received: by mail-yk0-f175.google.com with SMTP id 9so2386381ykp.6
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 12:36:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqFUQNropsFM59FXo1dPx3WGbBnVB5X4EH9kCG4g8x_P2w@mail.gmail.com>
References: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
 <20140612054226.GC15686@pengutronix.de>
 <CAHQ1cqFUQNropsFM59FXo1dPx3WGbBnVB5X4EH9kCG4g8x_P2w@mail.gmail.com>
Date: Fri, 13 Jun 2014 21:36:38 +0200
Message-ID: <CAOpc7mGwbUjn3_M0ey7ac=Ae_1_1Sp8AxSBAot_5buOOor=9Ng@mail.gmail.com>
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
Subject: Re: i.MX6Q SABRESD board and barebox
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Andrey,

probably no one noticed because CONFIG_ARCH_TEXT_BASE is unused as
soon as CONFIG_RELOCATABLE is set.

However, I guess that you don't like a relocatable image to be used
with your debugger. Maybe you shrink barebox down to what you need and
put it into the static on-board SDRAM?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
