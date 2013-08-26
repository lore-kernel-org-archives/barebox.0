Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VE6IQ-0004Em-7d
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 23:34:06 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so1895403eaj.41
 for <barebox@lists.infradead.org>; Mon, 26 Aug 2013 16:33:44 -0700 (PDT)
Message-ID: <521BE5A1.5080109@gmail.com>
Date: Tue, 27 Aug 2013 01:32:49 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
 <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
 <20130826132018.GF13964@titan.lakedaemon.net>
 <20130826225148.789cb51a803900ceb21f77ae@gmail.com>
 <20130826194758.GC24470@titan.lakedaemon.net>
In-Reply-To: <20130826194758.GC24470@titan.lakedaemon.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org

On 08/26/2013 09:47 PM, Jason Cooper wrote:
> On Mon, Aug 26, 2013 at 10:51:48PM +0400, Antony Pavlov wrote:
>> On Mon, 26 Aug 2013 09:20:18 -0400
>> Jason Cooper <jason@lakedaemon.net> wrote:
>>> On Mon, Aug 26, 2013 at 08:57:10AM +0400, Antony Pavlov wrote:
>>>> +/* Serial interface registers */
>>>> +#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + 0x0)
>>>> +#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + 0x14)
>>>> + #define UART_ST_TX_RDY	2
>>>
>>> leading whitespace, and perhaps use BIT() here.
>>
>> The leading whitespace is put here intentionally to distinguish register address macros
>> and bit fields macros.
>
> CodingStyle doesn't spell it out explicitly, however:
>
> $ git grep -c '^[ \t]#define'

Jason,

you should have used

git grep -c '^#[ \t]define'

It is in fact quite common to distinguish address offset macros
and bit macros by adding a space, but between '#' and 'define'.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
