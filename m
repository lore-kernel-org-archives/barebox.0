Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vmm-0002is-AM
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 10:11:25 +0000
Message-ID: <511CB82E.9030105@free-electrons.com>
Date: Thu, 14 Feb 2013 11:10:54 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
 <201302140916.36347.jbe@pengutronix.de>
In-Reply-To: <201302140916.36347.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] cfa-10036: Use the second MMC partition to store
 the environment
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Juergen,

Le 14/02/2013 09:16, Juergen Beisert a =E9crit :
> Maxime Ripard wrote:
>> Since the only storage medium on the cfa-10036 is the MMC card, we need
>> to have a registered environment partition on it if we want to be able
>> to modify at runtime.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
>> ---
>>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   44
>> +++++++++++++++++++++- 1 file changed, 43 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm=
/boards/crystalfontz-cfa10036/cfa10036.c
>> index b59dbab..1821b10 100644 =

>> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> @@ -97,9 +97,46 @@ static int cfa10036_mem_init(void)
>>  }
>>  mem_initcall(cfa10036_mem_init);
>>
>> +/**
>> + * Try to register an environment storage on the attached MCI card
>> + * @return 0 on success
>> + *
>> + * We rely on the existence of a usable SD card, already attached to
>> + * our system, to get something like a persistent memory for our enviro=
nment.
>> + * If this SD card is also the boot media, we can use the second partit=
ion
>> + * for our environment purpose (if present!). =

>> + */
>> +static int register_persistant_environment(void)
> =

> register_persist*e*nt_environment
> =

> Seems a copy from my typo in the falconwing. I really should fix it :))

Oops :)
I will fix it, it will probably end up in a common function anyway.

Thanks,
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
