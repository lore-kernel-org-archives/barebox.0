Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P91wO-0002gX-Be
	for barebox@lists.infradead.org; Thu, 21 Oct 2010 20:40:49 +0000
Message-ID: <4CC0A54C.7020308@eukrea.com>
Date: Thu, 21 Oct 2010 22:40:44 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1287582017-12999-1-git-send-email-eric@eukrea.com>
	<1287582017-12999-2-git-send-email-eric@eukrea.com>
	<20101021190623.GG28242@pengutronix.de>
In-Reply-To: <20101021190623.GG28242@pengutronix.de>
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
Subject: Re: [PATCH 2/3] cpuimx35: fix warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

Le 21/10/2010 21:06, Sascha Hauer a =E9crit :
>> +#undef DEST_BASE
>>   #define DEST_BASE 0x80000000
>>   struct imx_flash_header __flash_header_section flash_header =3D {
>>   	.app_code_jump_vector	=3D DEST_BASE + 0x1000,
>
> Why don't you just use another define instead of redefining DEST_BASE?
>
because I fixed this with my fingers and not with my brain :-D

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
