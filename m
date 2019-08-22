Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tTf-0006eS-V1
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 20:14:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id p12so14723808iog.5
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 13:14:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-3-s.hauer@pengutronix.de>
In-Reply-To: <20190822125158.10296-3-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 22 Aug 2019 13:14:23 -0700
Message-ID: <CAHQ1cqHb2EtQ_CCFW7PYOyR-yZ86Fx0605gSwsx_fxUojYffKw@mail.gmail.com>
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
Subject: Re: [PATCH 2/8] ARM: aarch64: Fix get_runtime_offset after relocation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 22, 2019 at 5:52 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> get_runtime_offset shall return the offset between the address we are
> running at and the address we are linked at. This value obviously
> changes when we relocate the binary. cf3b09737b tried to avoid using
> R_AARCH64_RELATIVE relocations, but in fact this is exactly what the
> function needs to work. Consider barebox starting at 0x10000000
> when we are linked at 0x0 then get_runtime_offset() should return
> 0x10000000 before relocate_to_current_adr(), but afterwards it should
> return 0x0.
>
> This patch brings back the previously removed "a" flag. Since gcc5
> doesn't put the values of R_AARCH64_RELATIVE fixup'd relocations
> into the binary but zeroes instead, we help ourselves by basing
> get_runtime_offset on an address which actually is zero. With
> CONFIG_RELOCATABLE=y the binary is always linked to 0x0, so _text
> is initially zero.
>

This paragraph might be worth putting in the comment as well to
document some cleverness that is still required to deal with GCC5.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
