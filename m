Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9WVU-00014h-Fq
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 07:28:09 +0000
Received: by qcsu28 with SMTP id u28so630050qcs.36
 for <barebox@lists.infradead.org>; Thu, 06 Sep 2012 00:28:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120906065544.GK26594@pengutronix.de>
References: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
 <1346877446-13368-1-git-send-email-franck.jullien@gmail.com>
 <20120906065544.GK26594@pengutronix.de>
Date: Thu, 6 Sep 2012 09:28:05 +0200
Message-ID: <CAJfOKBxOs5oaj5-_LHiZprTf383YLd9H2sddgCiW43FFrUsXRA@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: [PATCH] [OpenRISC] Add __ashrdi3 and remove link to libgcc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2012/9/6 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Franck,
>
> On Wed, Sep 05, 2012 at 10:37:26PM +0200, Franck Jullien wrote:
>> In a previous patch, Sascha needed to add __ashrdi3 and then linked to
>> libgcc. This patch add the ashrdi3 function in the arch/openrisc/lib
>> directory and remove the libgcc link.
>
> Does this fix any regressions or is it just a do-the-right-thing patch?
>

No, it doesn't fix anything. I just did the same thing I did for
others libgcc functions.

>>
>> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
>> ---
>>  arch/openrisc/Makefile      |    4 +-
>>  arch/openrisc/lib/Makefile  |    1 +
>>  arch/openrisc/lib/ashrdi3.S |   59 +++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 62 insertions(+), 2 deletions(-)
>>  create mode 100644 arch/openrisc/lib/ashrdi3.S
>>
>> diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
>> index 1f4b175..9e88a51 100644
>> --- a/arch/openrisc/Makefile
>> +++ b/arch/openrisc/Makefile
>> @@ -1,6 +1,6 @@
>>  CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
>>
>> -LIBGCC          := $(shell $(CC) $(KBUILD_CFLAGS) -print-libgcc-file-name)
>> +#LIBGCC := $(shell $(CC) $(KBUILD_CFLAGS) -print-libgcc-file-name)
>
> Can we remove the line instead?

I wanted to keep it in case we have the problem again (need to link to
libgcc).....

>
>>
>>  board-$(CONFIG_GENERIC) := generic
>>
>> @@ -20,6 +20,6 @@ common-y += $(BOARD)
>>  common-y += arch/openrisc/lib/
>>  common-y += arch/openrisc/cpu/
>>
>> -common-y          += $(LIBGCC)
>> +#common-y += $(LIBGCC)
>
> ditto.

But I could remove it of course.

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
