Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x243.google.com ([2607:f8b0:4001:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aImLy-0003n3-R5
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 23:58:27 +0000
Received: by mail-ig0-x243.google.com with SMTP id y8so14219457igw.0
 for <barebox@lists.infradead.org>; Mon, 11 Jan 2016 15:58:04 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160111104951.GP13058@pengutronix.de>
References: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
 <20160111104951.GP13058@pengutronix.de>
Date: Mon, 11 Jan 2016 15:58:03 -0800
Message-ID: <CAHQ1cqFRxR3U61KO73oqk-P4Mp3q7nfdN_QqVk1amQ5Mv2Ay4w@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/3] ARM: asm: Add convenience fucntions to access VBAR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 11, 2016 at 2:49 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 10, 2016 at 04:58:10PM -0800, Andrey Smirnov wrote:
>> Add two functions to get/set VBAR register.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>
>> Changes since v1 (http://lists.infradead.org/pipermail/barebox/2015-December/025685.html):
>>
>>  - Use CONFIG_CPU_32v7 instead of __LINUX_ARM_ARCH__
>>
>> ---
>>  arch/arm/include/asm/system.h | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>
> Applied, thanks

Sacha, I screwed up that subject line for two other patches in this
series (forgot to put v2), did you apply them as well or should I
resend them?

Thanks,
Andrey

>
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
