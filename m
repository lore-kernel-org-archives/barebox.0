Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x231.google.com ([2607:f8b0:4001:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YwDvL-0004FD-2i
 for barebox@lists.infradead.org; Sat, 23 May 2015 18:13:30 +0000
Received: by igbhj9 with SMTP id hj9so13413019igb.1
 for <barebox@lists.infradead.org>; Sat, 23 May 2015 11:13:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150515052521.GI6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-6-git-send-email-andrew.smirnov@gmail.com>
 <20150515052521.GI6325@pengutronix.de>
Date: Sat, 23 May 2015 11:13:03 -0700
Message-ID: <CAHQ1cqFrdyqvw3OKgPKup3dGanOmt8AqhC=N+p7ph=J9nR4n6g@mail.gmail.com>
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
Subject: Re: [PATCH 06/10] common: pbl: Allow boards to override hang()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, May 14, 2015 at 10:25 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Wed, May 13, 2015 at 07:54:23PM -0700, Andrey Smirnov wrote:
>> Add provisions such that board code can re-define the behaviour of
>> hang() to implement a behaviour better suited for a particular
>> hardware platform.
>
> I'm generally fine with being able to overwrite hang(), but the ARM
> specific changes here should be an extra patch with an explanation why
> this change is necessary. I assume you want to make hang() usable
> for early debugging in the PBL when the code is not running at the
> address it's linked at. But that's only an assumption.
>

You are correct in your assumption. I'll split the patch in the next
version of the series.


> Sascha
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
