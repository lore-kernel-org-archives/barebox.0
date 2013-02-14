Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vKk-00080H-1Y
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:42:29 +0000
Message-ID: <511CB169.4040108@free-electrons.com>
Date: Thu, 14 Feb 2013 10:42:01 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
 <20130213170941.GO19322@game.jcrosoft.org>
In-Reply-To: <20130213170941.GO19322@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cfa10036: Retrieve the RAM size at runtime
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Jean-Christophe,

Le 13/02/2013 18:09, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> On 17:50 Wed 13 Feb     , Maxime Ripard wrote:
>> The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
>> on it.
>>
>> Since it's not stored anywhere, we need to runtime detect it, thanks to
>> the get_ram_size function.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
>> ---
>>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm=
/boards/crystalfontz-cfa10036/cfa10036.c
>> index 1821b10..47a9520 100644
>> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> @@ -91,7 +91,8 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata =
=3D {
>>  =

>>  static int cfa10036_mem_init(void)
>>  {
>> -	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
>> +	arm_add_mem_device("ram0", IMX_MEMORY_BASE,
>> +			get_ram_size(IMX_MEMORY_BASE, 256 * SZ_1M));
> check the sdram control register instead so you do not need to get_ram_si=
ze
> and specify a Max

This is not possible, the first stage bootloader sets up the cs, lines
and rows for 256MB, in every case, so we will always end up with 256MB here.

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
