Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlGkh-0002dM-Tj
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 08:43:04 +0000
Received: by wwf22 with SMTP id 22so2798607wwf.18
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 01:43:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110725025843.GD10295@game.jcrosoft.org>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
	<1311535336-4534-8-git-send-email-antonynpavlov@gmail.com>
	<20110725025843.GD10295@game.jcrosoft.org>
Date: Mon, 25 Jul 2011 12:42:59 +0400
Message-ID: <CAA4bVAGyvhG-S74ewjPKhO93YVFiPSm+HLfXJKxG040L6B0D4Q@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 09/10] MIPS: add draft cpuinfo command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 25/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 23:22 Sun 24 Jul     , Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  arch/mips/Kconfig       |   11 +++++++++++
>>  arch/mips/lib/Makefile  |    3 +++
>>  arch/mips/lib/cpuinfo.c |   38 ++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 52 insertions(+), 0 deletions(-)
>>  create mode 100644 arch/mips/lib/cpuinfo.c
>>
...
>> --- a/arch/mips/lib/Makefile
>> +++ b/arch/mips/lib/Makefile
>> @@ -4,3 +4,6 @@ obj-y += lshrdi3.o
>>  obj-y += ashldi3.o
>>  obj-y += ashrdi3.o
>>  obj-y += memory.o
>> +
>> +#obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
>> +obj-y += cpuinfo.o
> ??

Ups ...

I'm going to fix it.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
