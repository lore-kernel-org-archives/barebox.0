Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBrz-0000uv-Oq
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:31:37 +0000
Received: by mail-io0-x241.google.com with SMTP id l25-v6so14802900ioh.12
 for <barebox@lists.infradead.org>; Fri, 08 Jun 2018 00:31:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180608070540.m6etfu37vu6s64ic@pengutronix.de>
References: <20180607174011.13130-1-pvizeli@syshack.ch>
 <20180608070540.m6etfu37vu6s64ic@pengutronix.de>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Fri, 8 Jun 2018 09:31:24 +0200
Message-ID: <CACvFaDf3ivn2jQxTKdT1b1VbzhnxdEXGojd4-8pVyiSz=rcvuw@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] drivers: of: bugfix partition fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

2018-06-08 9:05 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> of_find_property is not called directly from the code you are changing,
> so how excatly is the code path that fails?

of_get_reproducible_name -> of_get_property -> of_find_property

>
> What are you doing to get into this situation? This test should never
> fail or else we are in trouble. Is there some "oftree -f" command
> involved? I should really remove this command since in a device tree
> based system there are always references to device nodes which are not
> expected to become invalid.
>

Yes, I load the device tree from first bootloader and overlay some state dtbo.
But how I should do this without flush? I can do that also an a file
and load this
to bootm, but the fixups will also run on this and fails too.

I think we need remove `oftree -f` or apply this patch for hardening.

Greets
Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
