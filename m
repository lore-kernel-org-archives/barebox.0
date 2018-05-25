Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22c.google.com ([2607:f8b0:4001:c0b::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMDrs-0006TS-S0
 for barebox@lists.infradead.org; Fri, 25 May 2018 14:38:59 +0000
Received: by mail-it0-x22c.google.com with SMTP id y189-v6so7080821itb.2
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 07:38:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACvFaDe7o9CL8bTsq7BHXN-erBiakKMCZ6De2vEfst6wPZsxrA@mail.gmail.com>
References: <CACvFaDe7o9CL8bTsq7BHXN-erBiakKMCZ6De2vEfst6wPZsxrA@mail.gmail.com>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Fri, 25 May 2018 16:38:43 +0200
Message-ID: <CACvFaDfATGdZqBuPnNQzUSz+sx85+kqHifk2CVYHqUtPxPFo5Q@mail.gmail.com>
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
Subject: Re: Trigger fixups of device tree
To: barebox@lists.infradead.org

I solve it. It was a wrong environment.

Sorry for the noise and a nice weekend :)

2018-05-25 16:08 GMT+02:00 Pascal Vizeli <pascal.vizeli@syshack.ch>:
> Hi,
>
> I test last some of_fixup_status. But they had no effect. If I do same
> with `of_properties -s ...` it works and do what he should. Is it
> possible, that I need trigger the fixups manual before I use bootm?
>
> greets
> Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
