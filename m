Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yi0-f49.google.com ([209.85.218.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R2vQs-0003Wk-TP
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 01:35:37 +0000
Received: by yic13 with SMTP id 13so2349020yic.36
	for <barebox@lists.infradead.org>; Sun, 11 Sep 2011 18:35:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMwGMjyne+ixbgzJ3_KJ9+=qHK+kGQgQGqL06stVvv-GQ6PYow@mail.gmail.com>
References: <CAMwGMjyne+ixbgzJ3_KJ9+=qHK+kGQgQGqL06stVvv-GQ6PYow@mail.gmail.com>
Date: Sun, 11 Sep 2011 21:35:29 -0400
Message-ID: <CAMwGMjwFt=bjhWmPKDUCWUjGBTULb9U33=GfrDUcFtrQW4107A@mail.gmail.com>
From: Jon Ringle <jon@ringle.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox nand ignoring bad eraseblocks or read/write
To: barebox@lists.infradead.org

On Fri, Sep 9, 2011 at 11:29 PM, Jon Ringle <jon@ringle.org> wrote:
> I have a NAND device with a few bad eraseblocks, which is not
> uncommon. I figured that barebox would properly handle avoiding the
> bad eraseblocks.
> So I was surprised when I discovered that this is not entirely the
> case when I #define DEBUG at the top of nand.c. erase seems to honor
> the bad eraseblocks, but write still silently uses the bad erase block
> and read fails when it reads the bad eraseblock at 0x001e0000. Am I
> missing something?

I found that I had CONFIG_GLOB=n and that was causing
/env/bin/hush_hack to fail to create the bad block aware devices with
"nand -a /dev/nand0.*"

Jon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
