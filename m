Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLCAA-0002KT-Rp
 for barebox@lists.infradead.org; Tue, 22 May 2018 18:37:36 +0000
Received: by mail-it0-x243.google.com with SMTP id 70-v6so1234184ity.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 11:37:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180522071645.znyrhl5pvn4px4rm@pengutronix.de>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
 <20180522071645.znyrhl5pvn4px4rm@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 11:37:22 -0700
Message-ID: <CAHQ1cqHso6LcNGaWSb2JnUVOQ5ej_vR+UPK1R=qfOBQ9JjEJug@mail.gmail.com>
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
Subject: Re: [PATCH v4 00/29] ARM MMU code improvements and on-demand PTE
 allocation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 22, 2018 at 12:16 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, May 21, 2018 at 08:14:41PM -0700, Andrey Smirnov wrote:
>> Everyone:
>>
>> With exeception of patch 27/28, all patches in this series are just
>> small improvements(IMHO) that I made while working with ARM MMU code.
>>
>> Patch 27/28, OTOH, brings a bit of a change to how MMU code allocates
>> PTEs, postponing that until the users of DMA API actually request
>> that.
>
> Applied, thanks. I skipped 29/29 which hasn't been part of the other
> series and doesn't seem to be ready yet.
>

Ugh, yes, thank you, 29 was not supposed to be in a series. My bad.
Sorry about that.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
