Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x241.google.com ([2607:f8b0:4001:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLbPF-00064n-Nc
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 18:53:31 +0000
Received: by mail-ig0-x241.google.com with SMTP id h5so10118484igh.0
 for <barebox@lists.infradead.org>; Tue, 19 Jan 2016 10:53:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160119082149.GJ13058@pengutronix.de>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
 <1453089161-6697-16-git-send-email-andrew.smirnov@gmail.com>
 <20160119082149.GJ13058@pengutronix.de>
Date: Tue, 19 Jan 2016 10:53:07 -0800
Message-ID: <CAHQ1cqHB6=OLR0vBNK8UA1ty0t1LpBsoJ95H9m=GqYy7ZKOuNw@mail.gmail.com>
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
Subject: Re: [PATCH 16/20] e1000: Add functions for register polling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 19, 2016 at 12:21 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 17, 2016 at 07:52:37PM -0800, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/net/e1000/e1000.h | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>>
>> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
>> index 291e64d..5e24758 100644
>> --- a/drivers/net/e1000/e1000.h
>> +++ b/drivers/net/e1000/e1000.h
>> @@ -2176,5 +2176,24 @@ static inline uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
>>  }
>>
>>
>> +static inline int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
>> +                              uint32_t mask, uint32_t value,
>> +                              uint64_t timeout)
>
> We should let the compiler decide whether to inline this or not. Can we
> remove the inline?

In general the reason I put "inline" when defining functions in
headers -- that is not to say that it applies in this case -- is
because that tells the compiler that the code for function doesn't
have to put in the object file if no one is using it. Otherwise when
.c that doesn't reference includes .h with static non-inline function
that nobody uses GCC might emit a warning about unused function.

I am not sure if this is true for given the set of flags BB passes to
GCC, so I'll double check and if it's not the case remove the 'inline'

>
>> +{
>> +     const uint64_t start = get_time_ns();
>> +
>> +     do {
>> +             const uint32_t v = e1000_read_reg(hw, reg);
>> +
>> +             if ((v & mask) == value)
>> +                     return 0;
>> +
>> +     } while (!is_timeout(start, timeout));
>> +
>> +     return -ETIMEDOUT;
>> +}
>> +
>> +#define E1000_POLL_REG(a, reg, mask, value, timeout) \
>> +     e1000_poll_reg((a), E1000_##reg, (mask), (value), (timeout))
>
> Can we drop this define? All it does is to put E1000_ in front of the
> register name which could also be done by the caller.

I'd love to do that. How do you feel about getting rid of
E1000_READ_REG and E1000_WRITE_REG?

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
