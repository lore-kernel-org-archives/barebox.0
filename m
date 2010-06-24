Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORjp9-0001Rv-6V
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 10:38:24 +0000
Date: Thu, 24 Jun 2010 12:38:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624103821.GU12115@pengutronix.de>
References: <1277372997-6472-1-git-send-email-eric@eukrea.com>
	<4C232B24.6050105@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C232B24.6050105@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] fix command loadb
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 24, 2010 at 11:53:40AM +0200, Eric B=E9nard wrote:
> Le 24/06/2010 11:49, Eric B=E9nard a =E9crit :
>> which was broken after commit c3789cd49b43ec1c414ba1b0e9f48e8ccc19f8e1
>>
> this patch is only compile tested so the fix may be wrong.

Looks sane. Applied.

Sascha

>
> Eric
>
>> Signed-off-by: Eric B=E9nard<eric@eukrea.com>
>> ---
>>   commands/loadb.c |    2 +-
>>   1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/commands/loadb.c b/commands/loadb.c
>> index 6740ef4..437b60f 100644
>> --- a/commands/loadb.c
>> +++ b/commands/loadb.c
>> @@ -724,7 +724,7 @@ static int do_load_serial_bin(struct command *cmdtp,=
 int argc, char *argv[])
>>   		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
>>   		return -ENODEV;
>>   	}
>> -	current_baudrate =3D simple_strtoul(cdev->baudrate_string, NULL, 10);
>> +	current_baudrate =3D (int)simple_strtoul(dev_get_param(cdev->dev, "bau=
drate"), NULL, 10);
>>
>>   	/* Load Defaults */
>>   	if (load_baudrate =3D=3D 0)
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
