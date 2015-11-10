Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x241.google.com ([2607:f8b0:4002:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwFAB-0008PK-JC
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 20:05:08 +0000
Received: by ykba77 with SMTP id a77so1223976ykb.2
 for <barebox@lists.infradead.org>; Tue, 10 Nov 2015 12:04:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20151110074043.GC8526@pengutronix.de>
References: <1447063593-23825-1-git-send-email-serge.koshechkin@gmail.com>
 <20151110074043.GC8526@pengutronix.de>
Date: Tue, 10 Nov 2015 23:04:46 +0300
Message-ID: <CAJgjPtDfO=59Q=nxBd6uKyy-hujyz9CBWg4HsQ22teksTfyMdw@mail.gmail.com>
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
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
Subject: Re: [PATCH] docproc: sync with linux-4.3 kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, "Antony N. Pavlov" <antony@niisi.msk.ru>

Hi Sascha,

On Tue, Nov 10, 2015 at 10:40 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Sergey,
>
> On Mon, Nov 09, 2015 at 01:06:33PM +0300, Sergey Koshechkin wrote:
>> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
>> ---
>>  scripts/basic/docproc.c | 334 +++++++++++++++++++++++++++++++++++++-----------
>>  1 file changed, 256 insertions(+), 78 deletions(-)
>
> What's the motivation for updating this file? Is it even used in
> barebox?

The motivation was to defeat "missing prototypes".
But It seems you are right. I tryied to compile docs without docproc.c
and everything looks fine.
Can we drop it then?

-- 
Best regards,
Sergey Koshechkin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
