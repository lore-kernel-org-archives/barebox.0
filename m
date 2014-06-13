Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22c.google.com ([2607:f8b0:400e:c02::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvXNE-00078P-3O
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 19:42:52 +0000
Received: by mail-pd0-f172.google.com with SMTP id fp1so2442444pdb.3
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 12:42:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOpc7mGwbUjn3_M0ey7ac=Ae_1_1Sp8AxSBAot_5buOOor=9Ng@mail.gmail.com>
References: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
 <20140612054226.GC15686@pengutronix.de>
 <CAHQ1cqFUQNropsFM59FXo1dPx3WGbBnVB5X4EH9kCG4g8x_P2w@mail.gmail.com>
 <CAOpc7mGwbUjn3_M0ey7ac=Ae_1_1Sp8AxSBAot_5buOOor=9Ng@mail.gmail.com>
Date: Fri, 13 Jun 2014 12:42:30 -0700
Message-ID: <CAHQ1cqEVoWLVeKaRSa0dBxesi9FO4O89Q=M2S3cKSkNbonf9LA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Yeah, that's what I've been doing(I forgot to mention that I disabled
relocatable image as well).

I just wanted to double check that I wasn't missing anything obvious
and that that setting was indeed incorrect.

Thanks,
Andrey

On Fri, Jun 13, 2014 at 12:36 PM, Holger Schurig
<holgerschurig@gmail.com> wrote:
> Hi Andrey,
>
> probably no one noticed because CONFIG_ARCH_TEXT_BASE is unused as
> soon as CONFIG_RELOCATABLE is set.
>
> However, I guess that you don't like a relocatable image to be used
> with your debugger. Maybe you shrink barebox down to what you need and
> put it into the static on-board SDRAM?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
