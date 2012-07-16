Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmUe-0004bn-AX
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:41:49 +0000
Message-ID: <50042829.4000606@cmotion.eu>
Date: Mon, 16 Jul 2012 16:41:45 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
 <1342432439-27455-3-git-send-email-christian.kapeller@cmotion.eu>
 <20120716143147.GO30009@pengutronix.de>
In-Reply-To: <20120716143147.GO30009@pengutronix.de>
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
Subject: Re: [PATCH 2/2] tx51: Disable kallsyms. It prevents the board from
 booting.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/16/2012 04:31 PM, Sascha Hauer wrote:
> On Mon, Jul 16, 2012 at 11:53:59AM +0200, Christian Kapeller wrote:
>>
>> diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
>> index 7fff0f0..e1796b9 100644
>> --- a/arch/arm/configs/tx51stk5_defconfig
>> +++ b/arch/arm/configs/tx51stk5_defconfig
>> @@ -32,7 +32,6 @@ CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
>>  CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
>>  CONFIG_MEMORY_LAYOUT_DEFAULT=y
>>  CONFIG_MALLOC_TLSF=y
>> -CONFIG_KALLSYMS=y
> 
> Of course I rather would like to fix the underlying issue. Does this
> happen on a second stage barebox aswell?

I hear you. My intend was to have at least a booting board, rather than
a brick.

I just flashed tx51 barebox without CONFIG_KALLSYMS, and could
successfully start a barebox binary with CONFIG_KALLSYMS set using
bootm.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
