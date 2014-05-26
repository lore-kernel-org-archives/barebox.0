Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wp0KJ-0007bI-6o
 for barebox@lists.infradead.org; Mon, 26 May 2014 19:12:51 +0000
Received: by mail-wg0-f42.google.com with SMTP id y10so8267469wgg.13
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 12:12:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOpc7mFb81QWXQg-iGvnNSqXoWiby4YqOGdOLGNpkBhdFtE5OQ@mail.gmail.com>
References: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
 <CAOpc7mFb81QWXQg-iGvnNSqXoWiby4YqOGdOLGNpkBhdFtE5OQ@mail.gmail.com>
Date: Mon, 26 May 2014 21:12:27 +0200
Message-ID: <CAJfOKBzMSTNFDCZs34-cN_SDOemcB1Qpod3t=_uOz3VkdU=xkA@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

2014-05-26 21:04 GMT+02:00 Holger Schurig <holgerschurig@gmail.com>:
>> -       ret = cfi_erase(info, instr->len, instr->addr);
>> +       ret = cfi_erase(info, instr->len, instr->addr, 1);
>
> Hmm, why this parameter?  Basically, three things would be sane:
>

I copied the code that was here before (I know that's not a good reason).
Well, this "1" means: if you want to make verbose an option, implement
this and replace "1" by whatever it needs.

> * never output progress (no verbose parameter needed, obviously)
> * always output progress (again no parameter needed)
> * make it a command line option (parameter needed)
>
> What you have here (in the current form) is a needless parameter to cfi_erase().

What would you think if we had a command line option to make erase quiet (-q) ?
By default we would have a progress bar displayed.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
