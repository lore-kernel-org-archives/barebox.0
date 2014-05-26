Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22b.google.com ([2607:f8b0:4002:c01::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wp0Ch-0004OW-CO
 for barebox@lists.infradead.org; Mon, 26 May 2014 19:05:00 +0000
Received: by mail-yh0-f43.google.com with SMTP id v1so6704260yhn.16
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 12:04:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
References: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
Date: Mon, 26 May 2014 21:04:37 +0200
Message-ID: <CAOpc7mFb81QWXQg-iGvnNSqXoWiby4YqOGdOLGNpkBhdFtE5OQ@mail.gmail.com>
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
Subject: Re: [PATCH] cfi_flash: show progress while during erase
To: Franck Jullien <franck.jullien@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -       ret = cfi_erase(info, instr->len, instr->addr);
> +       ret = cfi_erase(info, instr->len, instr->addr, 1);

Hmm, why this parameter?  Basically, three things would be sane:

* never output progress (no verbose parameter needed, obviously)
* always output progress (again no parameter needed)
* make it a command line option (parameter needed)

What you have here (in the current form) is a needless parameter to cfi_erase().

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
