Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vb0-x22e.google.com ([2607:f8b0:400c:c02::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Llm-0007tk-2j
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 19:59:59 +0000
Received: by mail-vb0-f46.google.com with SMTP id w20so2495536vbb.5
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 11:59:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
Date: Thu, 9 Jan 2014 14:59:33 -0500
Message-ID: <CAJyuEefHk_D6U5Tkrf0CKVfRZ2VSxmfOE4TepG9G1yP9YvF24Q@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Since I am still having issues with the kernel booting -- and needed a
bit of a break to clear my mind -- I decided to delve into the initial
barebox bootup from NAND a bit more.

Correct me if I am wrong, but how I understand things right now...

The iMX6 requires a BCB header prior to the actual barebox partition
(e.g. nand0.bootstream). This bootstream partition would contain the
BCB data specific to the iMX6 (i.e. an FCB and at least a partial
DBBT).

It also looks like this functionality is already present in barebox
for the MX23/28 series of parts (i.e. the "bcb" command).

I also have the source for kobs-ng v1.3, which does properly generate
the BCB for the MX6 series (and is what I am currently using to flash
barebox into NAND).

So, basically, it sounds like what I need to do is migrate the bcb.c
file from the arm/mach-mxs folder into the MX6 portion of the tree and
then update it based on the datasheet and the "known good" parameters
from kobs-ng v1.3 (which look fairly similar to the definitions you
already have in place for the MX23/28 FCB).

Does this sound like a reasonable plan of action?

It really looks like life with the iMX6 would be much easier if I had
a SPI-NOR on this SOM, instead of NAND only.

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
