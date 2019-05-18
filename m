Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS23A-0002XG-Vd
 for barebox@lists.infradead.org; Sat, 18 May 2019 16:19:10 +0000
Received: by mail-oi1-x242.google.com with SMTP id t187so7251764oie.10
 for <barebox@lists.infradead.org>; Sat, 18 May 2019 09:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <CA+T6rvGEu1dvR0Xs0+v6cMQZZWHqvkcVL6+NkAiRa5CH7N=vrw@mail.gmail.com>
In-Reply-To: <CA+T6rvGEu1dvR0Xs0+v6cMQZZWHqvkcVL6+NkAiRa5CH7N=vrw@mail.gmail.com>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Sat, 18 May 2019 16:18:44 +0000
Message-ID: <CA+T6rvFKGmStoZ0SNEAKQNKkv0jKDETN7jspkoC=QmzcQ=TRbw@mail.gmail.com>
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
Subject: Re: checkpatch warning about strict_strto* family of functions
To: barebox@lists.infradead.org
Cc: Geordan Neukum <gneukum1@gmail.com>

Ah, disregard. Ahmad's work in the patch: 'checkpatch: import as-is
from Linux v5.1' should resolve this. Sorry for the confusion.

Geordan

On Sat, May 18, 2019 at 2:55 AM Geordan Neukum <gneukum1@gmail.com> wrote:
>
> Hi all,
>
>     In running the current version of checkpatch in barebox, I noticed
> a warning that I *should* be using functions from the strict_strto*
> family over those in the simple_strto* family. It appears that the
> strict_strto* family is a linux-only thing. Any interest in porting
> those over? If not, we may want to consider removing or temporarily
> silencing that warning.
>
> Thanks,
> Geordan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
