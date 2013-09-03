Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGuyh-0006G3-Ct
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 18:05:25 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net>
Date: Tue, 03 Sep 2013 20:04:56 +0200
In-Reply-To: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net> (Darren
 Garnier's message of "Mon, 2 Sep 2013 22:22:20 -0400")
Message-ID: <87ppspye5z.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/4] mtd: fix erasesize math for non power-of-2 devices
To: Darren Garnier <dgarnier@reinrag.net>
Cc: barebox@lists.infradead.org

Darren Garnier <dgarnier@reinrag.net> writes:

> Signed-off-by: Darren Garnier <dgarnier@reinrag.net>

Hi Darren,

First of all, do any device exist where erasesize is non power-of-2, and if so
which one do you have in mind ?

Secondly, if such devices exist, I'd wish to have that explained in the commit
message, to know what motivated your patch.

> +#define ALIGNED_OFFSET(offset, bs) ((bs & (bs-1)) == 0) ? \
> +									offset & ~(bs-1) : \
> +									bs * div_u64(offset,bs)
> +#define ALIGNED_COUNT(count, bs) ((bs & (bs-1)) == 0) ? \
> +									ALIGN(count,bs) : \
> +									bs *
> div_u64(count+(bs-1),bs)
These lines look a bit over 80 caracters to me, or is it my editor ...
Moreover the (bs & (bs-1)) == 0 should be replaced by IS_ALIGNED(bs).

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
