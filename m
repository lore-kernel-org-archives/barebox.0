Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKpnw-0005mV-IH
 for barebox@lists.infradead.org; Mon, 21 May 2018 18:45:10 +0000
Received: by mail-it0-x243.google.com with SMTP id q4-v6so22297473ite.3
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 11:44:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180521115438.26493-2-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-2-pmamonov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 11:44:52 -0700
Message-ID: <CAHQ1cqHGNnf6FbtvnN+J_4uBHbEf3V8NdAZ4Nzt3Od58JTgCgQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 01/12] resource: fix iomem root resource for 64 bit
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 21, 2018 at 4:54 AM, Peter Mamonov <pmamonov@gmail.com> wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

IMHO, Signed-off-by is a bit of an overkill for this. I am perfectly
fine not getting credit for trivial suggestions as was this one in
general, but if we must, Suggested-by seems like a better fit.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
