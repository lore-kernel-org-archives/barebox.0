Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OTs2x-0006VU-Sy
	for barebox@lists.infradead.org; Wed, 30 Jun 2010 07:49:28 +0000
Message-ID: <4C2AF704.10301@eukrea.com>
Date: Wed, 30 Jun 2010 09:49:24 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4C2A1F94.8030808@eukrea.com>
	<20100630071707.GR12115@pengutronix.de>
In-Reply-To: <20100630071707.GR12115@pengutronix.de>
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
Subject: Re: Pending patches for 2010.07
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 30/06/2010 09:17, Sascha Hauer a =E9crit :
> On Tue, Jun 29, 2010 at 06:30:12PM +0200, Eric B=E9nard wrote:
>> Hi Sascha,
>>
>> the following patches are needed to get good support of cpuimx35 for
>> 2010.07 :
>
> What's missing first is the board support. It's currently sitting in
> -next.
>
OK sorry, I forget that next is 2010.08 ;-)
>>
>> [PATCH 1/2] imx-ipu-fb: Add board specific hook to enable display
>> http://lists.infradead.org/pipermail/barebox/2010-June/001068.html
>> [PATCH 2/2] imx-ipu-fb: do not enable framebuffer on startup
>> http://lists.infradead.org/pipermail/barebox/2010-June/001069.html
>
> I applied these to next a few moments ago.
>
git says 33 min ago ;-)

>>
>> [PATCH] eukrea_cpuimx35: boot update
>> http://lists.infradead.org/pipermail/barebox/2010-June/001071.html
>>
>> [PATCH] eukrea_cpuimx35: better usage of LCD enable pins
>> http://lists.infradead.org/pipermail/barebox/2010-June/001095.html
>> (for this last one, please take the patch sent today, I forget to put v2
>> in the subject)
>
> These do not apply. I haven't looked into it though.
>
ok strange, I'm rebasing and resending.

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
