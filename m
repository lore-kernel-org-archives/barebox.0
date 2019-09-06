Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66iy-0002Zg-A5
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 05:23:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id f12so9964314iog.12
 for <barebox@lists.infradead.org>; Thu, 05 Sep 2019 22:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190812201915.12414-1-andrew.smirnov@gmail.com>
 <20190812201915.12414-5-andrew.smirnov@gmail.com>
 <20190906013829.6a4c13a0dc780639b0b484b7@gmail.com>
In-Reply-To: <20190906013829.6a4c13a0dc780639b0b484b7@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 5 Sep 2019 22:23:42 -0700
Message-ID: <CAHQ1cqFtwrxRXSEMdWRGSMFFj3YC8zSGdKOhDYn+sJ94V7LdHA@mail.gmail.com>
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
Subject: Re: [PATCH 5/5] eeprom: at24: Convert the driver to NVMEM
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 5, 2019 at 3:38 PM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Mon, 12 Aug 2019 13:19:15 -0700
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Hi!
>
> Could you please test this patch with disabled NVMEM?
>
> I see that this patch leads to barebox crash in memory allocation code
> if CONFIG_NVMEM is not set.
>

Hmm, I think driver should just select CONFIG_NVMEM since it seems
pretty pointless without it. Totally missed that in my original patch,
sorry.
Will submit a fix for this shortly.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
