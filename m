Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLnFy-0002eR-DT
 for barebox@lists.infradead.org; Wed, 20 Jan 2016 07:32:43 +0000
Date: Wed, 20 Jan 2016 08:32:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160120073218.GL13058@pengutronix.de>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
 <1453089161-6697-16-git-send-email-andrew.smirnov@gmail.com>
 <20160119082149.GJ13058@pengutronix.de>
 <CAHQ1cqHB6=OLR0vBNK8UA1ty0t1LpBsoJ95H9m=GqYy7ZKOuNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHB6=OLR0vBNK8UA1ty0t1LpBsoJ95H9m=GqYy7ZKOuNw@mail.gmail.com>
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
Subject: Re: [PATCH 16/20] e1000: Add functions for register polling
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 19, 2016 at 10:53:07AM -0800, Andrey Smirnov wrote:
> On Tue, Jan 19, 2016 at 12:21 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sun, Jan 17, 2016 at 07:52:37PM -0800, Andrey Smirnov wrote:
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>  drivers/net/e1000/e1000.h | 19 +++++++++++++++++++
> >>  1 file changed, 19 insertions(+)
> >>
> >> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> >> index 291e64d..5e24758 100644
> >> --- a/drivers/net/e1000/e1000.h
> >> +++ b/drivers/net/e1000/e1000.h
> >> @@ -2176,5 +2176,24 @@ static inline uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
> >>  }
> >>
> >>
> >> +static inline int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
> >> +                              uint32_t mask, uint32_t value,
> >> +                              uint64_t timeout)
> >
> > We should let the compiler decide whether to inline this or not. Can we
> > remove the inline?
> 
> In general the reason I put "inline" when defining functions in
> headers -- that is not to say that it applies in this case -- is
> because that tells the compiler that the code for function doesn't
> have to put in the object file if no one is using it. Otherwise when
> .c that doesn't reference includes .h with static non-inline function
> that nobody uses GCC might emit a warning about unused function.

I didn't realize this function is in the header file. Can we put it in
the C file?

> 
> I'd love to do that. How do you feel about getting rid of
> E1000_READ_REG and E1000_WRITE_REG?

Good idea. I'm all in for that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
