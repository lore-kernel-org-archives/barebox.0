Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMq8i-0002A3-PM
 for barebox@lists.infradead.org; Sun, 27 May 2018 07:30:55 +0000
Date: Sun, 27 May 2018 09:28:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180527072834.GA13583@ravnborg.org>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180526204451.16530-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 01/48] ARM: i.MX: xload: Fix compiler warning
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey

On Sat, May 26, 2018 at 01:44:04PM -0700, Andrey Smirnov wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> the ESDHC controller is a 32bit device, so can do DMA only on the
> lower 32bit. Fix the compiler warning about casting a pointer to integer
> of different size on aarch64 by casting to unsigned long first. Error
> out if the destination does not fit into 32bit though.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
Nitpicking...

In the kernel the "Signed-off-by:" lines shall document the path of the patch
towards the kernel. So every time a patch passes a person, this person is supposed
to add a "Signed-off" to explicit say that:
"
    The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.
"

From Documentation/process/submitting-patches.rst

So in other words - I had expected to see:
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Andrey Smirnov <...>

And then, when Sasha apply the patch he adds a third "Signed-off".

I dunno how strong the rules are followed for barebox,
and you can also find many examples in the kernel where
the rules are not followed strict.
But in general this is how it is used.

	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
