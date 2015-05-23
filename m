Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x234.google.com ([2607:f8b0:4001:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YwE2v-00081x-3w
 for barebox@lists.infradead.org; Sat, 23 May 2015 18:21:21 +0000
Received: by igcau1 with SMTP id au1so11436720igc.1
 for <barebox@lists.infradead.org>; Sat, 23 May 2015 11:20:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150515053325.GJ6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <20150515053325.GJ6325@pengutronix.de>
Date: Sat, 23 May 2015 11:20:55 -0700
Message-ID: <CAHQ1cqFseav5dbRv_uxLX0me4V1Tjn2p8kHvKMPiQi6DLcmNrQ@mail.gmail.com>
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
Subject: Re: [PATCH 01/10] common/memtest.c: Fix incorrect array boundary check
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, May 14, 2015 at 10:33 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, May 13, 2015 at 07:54:18PM -0700, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  common/memtest.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>
>
> I have applied the memtest patches for now. I'll come to the PBL console
> input patches next week when I find some time. I think I haven't made my
> mind yet whether we really want to have input support in PBL and where
> this all leads to. We use functions which were originally meant for
> debugging to do regular output with PBL console support. Maybe we should
> clean this up and introduce some real early console backend rather than
> abusing the debugging functions before we add more features to it.
>

I agree that it seems to start to look like too much of a code
duplication, FWIW, my main intention with adding input support to PBL
was to allow for more interactivity in hang() handler(like being able
to send a very primitive command to reset the board, instead of
relying on external reset circuitry). I am not sure how this can be
improved, so if you have any ideas of how to better introduce the same
functionality I'll be happy to help on implementing it.

> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
