Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkiTh-0002Yy-OB
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 05:15:46 +0000
Received: by mail-io1-xd31.google.com with SMTP id f4so24941981ioh.6
 for <barebox@lists.infradead.org>; Mon, 08 Jul 2019 22:15:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190704165617.cvdb34k5mi35jtwa@localhost.localdomain>
In-Reply-To: <20190704165617.cvdb34k5mi35jtwa@localhost.localdomain>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 8 Jul 2019 22:15:32 -0700
Message-ID: <CAHQ1cqF+ort2dL7j1vj4UasQ--fecV3Whq40Wvi0Zq_2n9tCjw@mail.gmail.com>
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
Subject: Re: memcmp command is broken
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 4, 2019 at 9:56 AM Peter Mamonov <pmamonov@gmail.com> wrote:
>
> Hi, Andrey,
>
> Current `memcmp` command implementation is broken and fails with the error
> message "read: Bad file number" when calls `read_full(destfd, ...)`. Guess this
> is because `memcpy_parse_options()` opens `destfd` with `O_WRONLY` flag. Anyway
> reverting "ddf4cca339 commands: Introduce memcpy_parse_options()" fixes the
> problem.
>

Yeah, you are right, sorry about that. I'll submit a fix shortly.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
