Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x229.google.com ([2607:f8b0:4001:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSFsj-0001Nw-Eh
 for barebox@lists.infradead.org; Sun, 07 Feb 2016 03:19:26 +0000
Received: by mail-ig0-x229.google.com with SMTP id 5so38649631igt.0
 for <barebox@lists.infradead.org>; Sat, 06 Feb 2016 19:19:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1454790180-3156-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454790180-3156-1-git-send-email-andrew.smirnov@gmail.com>
Date: Sat, 6 Feb 2016 19:19:04 -0800
Message-ID: <CAHQ1cqEJmDM+ZG-Pv6mnZnSHVr0_SDbdFaCVbXtyvVpGRq9KSg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [RFC] spi-nor: Use different timeout values for write and erase
 operations
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Sat, Feb 6, 2016 at 12:23 PM, Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
> Some chips take longer than 40 seconds to perform certain
> operations. One concrete example would be M25P128 that, according to
> its spec, can take up to 250 seconds to perform a chip erase.
>
> This commit:
>
>      - Adds 'wait_time` parameter to spi_nor_wait_till_ready() so that
>        each individual caller of would be able to use custom timeout
>
>      - Adds timings information to flash_info and nor_spi structures
>        to specify sector and chip erase timeouts
>
>      - Modifies the code of spi_nor_erase() to make use of previously
>        mentioned changes
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>


I was pointed to a kernel patch that solves the same problem in a less
verbose way:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=09b6a377687b885565339e60bc62566433a0406f

so instead of going with what's in my RFC I think I'll port those
kernel changes to Barebox.

Sorry for the noise.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
