Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD9R-00045x-Pz
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:28:10 +0000
Received: by wyf23 with SMTP id 23so2649727wyf.36
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 09:28:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110719154639.GJ5727@game.jcrosoft.org>
References: <1311089118-30780-1-git-send-email-antonynpavlov@gmail.com>
	<20110719154639.GJ5727@game.jcrosoft.org>
Date: Tue, 19 Jul 2011 20:27:53 +0400
Message-ID: <CAA4bVAEpmvUitzua9fetxbCZ9gfoFctN33PSw=mX=NKDB8G1=w@mail.gmail.com>
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
Subject: Re: [PATCH] Add option DEBUG_LL to common/Kconfig
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 19/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 19:25 Tue 19 Jul     , Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  common/Kconfig |   11 +++++++++++
>>  1 files changed, 11 insertions(+), 0 deletions(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 7d2367b..61e13cb 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -482,4 +482,15 @@ config ENABLE_DEVICE_NOISE
>>  	help
>>  	  Enable this to get noisy device handling routines
>>
>> +config DEBUG_LL
>> +	bool
>> +	depends on HAS_DEBUG_LL
>> +	prompt "low level debug messages"
>> +	help
>> +	  Enable this to get low level debug messages during barebox
>> initialization.
>> +
>>  endmenu
>> +
>> +config HAS_DEBUG_LL
>> +	bool
>> +	default n
> n by default

I did not understood.

Do you mean this?

config DEBUG_LL
        bool
+        default n
        depends on HAS_DEBUG_LL
        prompt "low level debug messages"
        help
          Enable this to get low level debug messages during barebox
initialization.


-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
