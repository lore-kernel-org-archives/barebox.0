Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vUv-0000Mo-QS
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:52:58 +0000
Message-ID: <511CB3ED.4060504@free-electrons.com>
Date: Thu, 14 Feb 2013 10:52:45 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
 <20130213171230.GP19322@game.jcrosoft.org>
In-Reply-To: <20130213171230.GP19322@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Jean-Christophe,

Le 13/02/2013 18:12, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> On 17:45 Wed 13 Feb     , Maxime Ripard wrote:
>> Since the only storage medium on the cfa-10036 is the MMC card, we need
>> to have a registered environment partition on it if we want to be able
>> to modify at runtime.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
>> ---
>>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   44 +++++++++++++++=
++++++-
>>  1 file changed, 43 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm=
/boards/crystalfontz-cfa10036/cfa10036.c
>> index b59dbab..1821b10 100644
>> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> @@ -97,9 +97,46 @@ static int cfa10036_mem_init(void)
>>  }
>>  mem_initcall(cfa10036_mem_init);
>>  =

>> +/**
>> + * Try to register an environment storage on the attached MCI card
>> + * @return 0 on success
>> + *
>> + * We rely on the existence of a usable SD card, already attached to
>> + * our system, to get something like a persistent memory for our enviro=
nment.
>> + * If this SD card is also the boot media, we can use the second partit=
ion
>> + * for our environment purpose (if present!).
>> + */
>> +static int register_persistant_environment(void)
>> +{
>> +	struct cdev *cdev;
>> +
>> +	/*
>> +	 * The CFA-10036 only has one MCI card socket.
>> +	 * So, we expect its name as "disk0".
>> +	 */
>> +	cdev =3D cdev_by_name("disk0");
>> +	if (cdev =3D=3D NULL) {
>> +		pr_err("No SD card found\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	/* MCI card is present, also a useable partition on it? */
>> +	cdev =3D cdev_by_name("disk0.1");
>> +	if (cdev =3D=3D NULL) {
>> +		pr_err("No second partition available\n");
>> +		pr_info("Please create at least a second partition with"
>> +			" 256 kiB...512 kiB in size (your choice)\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	/* use the full partition as our persistent environment storage */
>> +	return devfs_add_partition("disk0.1", 0, cdev->size,
>> +						DEVFS_PARTITION_FIXED, "env0");
>> +}
> it's time to have a common code

I'm ok with doing it, where should it be stored?

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
