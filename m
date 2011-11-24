Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTYx8-0002gC-2k
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:02:58 +0000
Received: by wwf5 with SMTP id 5so209039wwf.18
 for <barebox@lists.infradead.org>; Thu, 24 Nov 2011 05:02:55 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20111122104513.GI27267@pengutronix.de>
References: <1321882291-26290-1-git-send-email-h.feurstein@gmail.com>
 <20111122091926.GE27267@pengutronix.de>
 <CAFfN3gU23rF4f1-JOxTHeLzxMrKBupamNYRQvCAAFdjiGEOdew@mail.gmail.com>
 <20111122104513.GI27267@pengutronix.de>
Date: Thu, 24 Nov 2011 14:02:54 +0100
Message-ID: <CAFfN3gXzWDnh3wrUqHbEWw6iR9N3d1WaziMhkW37Xo6e-J2R5A@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] eeprom/at25: add erase support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2011/11/22 Sascha Hauer <s.hauer@pengutronix.de>:
> How about cp /dev/zero /dev/env0?
>
Well, this works, aside from the error message "write: No space left
on device". Personally I still prefer the 'erase' support also for
eeprom-like devices. Then the handling of partitions would become
uniform. But there is still the protect/unprotect thing ...

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
