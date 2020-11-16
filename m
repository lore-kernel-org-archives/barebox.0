Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keaLb-0008Kf-Kx
 for barebox@lists.infradead.org; Mon, 16 Nov 2020 08:58:52 +0000
References: <20201112172347.385-2-a.fatoum@pengutronix.de>
 <20201113082600.30578-1-a.fatoum@pengutronix.de>
 <20201116082117.GY29830@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <545427ba-6738-f336-e7e1-24332df853ac@pengutronix.de>
Date: Mon, 16 Nov 2020 09:58:48 +0100
MIME-Version: 1.0
In-Reply-To: <20201116082117.GY29830@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] fixup! setenv: align with POSIX in handling of
 setenv(var, "")
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 16.11.20 09:21, Sascha Hauer wrote:
> On Fri, Nov 13, 2020 at 09:26:00AM +0100, Ahmad Fatoum wrote:
>> Previously setenv xxx= deleted x like xxx= does. With xxx= now instead
>> assigning the empty string, setenv xxx= should too.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> ---
>>  commands/setenv.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/commands/setenv.c b/commands/setenv.c
>> index 6992f604f513..9aeb8f010bc5 100644
>> --- a/commands/setenv.c
>> +++ b/commands/setenv.c
>> @@ -18,8 +18,7 @@ static int do_setenv(int argc, char *argv[])
>>  	equal = strrchr(argv[1], '=');
>>  	if (equal) {
>>  		equal[0] = '\0';
>> -		if (equal[1])
>> -			argv[2] = &equal[1];
>> +		argv[2] = &equal[1];
>>  	}
> 
> Fine with me, but I just had a second look at fbf145dc86 ("commands: setenv:
> support setenv dev.var=VAL syntax"). This patch introduced using argv[2]
> when argc was only to, thus only argv[0] and argv[1] are valid. I wonder
> if this is allowed. KAsan doesn't complain, but still I think this
> should be changed. Could you do this before further modifying this?

barebox always has argv[argc] = NULL, so just like standard C, accessing
argv[2] here is fine.

See
  common/parser.c:29: argv[nargs] = NULL;
  common/hush.c:698:  pglob->gl_pathv[pathc] = NULL;
  lib/glob.c:398:     pglob->gl_pathv[pglob->gl_pathc] = NULL;
  lib/glob.c:232:     pglob->gl_pathv[pglob->gl_pathc] = NULL;

Cheers,
Ahmad
  


> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
