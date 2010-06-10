Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OMheb-0002DF-3R
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 13:18:42 +0000
Message-ID: <4C10E62C.3020808@eukrea.com>
Date: Thu, 10 Jun 2010 15:18:36 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1276156332-7160-1-git-send-email-eric@eukrea.com>
	<20100610114405.GL20799@pengutronix.de>
In-Reply-To: <20100610114405.GL20799@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] eukrea_cpuimx25: add compressed logo support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le 10/06/2010 13:44, Sascha Hauer a =E9crit :
> On Thu, Jun 10, 2010 at 09:52:11AM +0200, Eric B=E9nard wrote:
>> Signed-off-by: Eric B=E9nard<eric@eukrea.com>
>> ---
>>   board/eukrea_cpuimx25/env/bin/init |    3 +++
>>   1 files changed, 3 insertions(+), 0 deletions(-)
>>
>> diff --git a/board/eukrea_cpuimx25/env/bin/init b/board/eukrea_cpuimx25/=
env/bin/init
>> index 8bcc732..335d7ae 100644
>> --- a/board/eukrea_cpuimx25/env/bin/init
>> +++ b/board/eukrea_cpuimx25/env/bin/init
>> @@ -14,6 +14,9 @@ fi
>>
>>   if [ -f /env/logo.bmp ]; then
>>   	bmp /env/logo.bmp
>> +elif [ -f /env/logo.bmp.lzo ]; then
>> +	unlzo /env/logo.bmp.lzo /logo.bmp
>> +	bmp /logo.bmp
>>   fi
>
> So the lzo support also is of other use than only for the kernel.
> Nice :)
>
yes, that allow to have a 1 sector environement even with an =

uncompressed BMP logo !

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
