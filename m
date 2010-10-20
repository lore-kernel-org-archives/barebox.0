Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P8W8g-0004Cm-32
	for barebox@lists.infradead.org; Wed, 20 Oct 2010 10:43:22 +0000
Message-ID: <4CBEC7C7.1040301@eukrea.com>
Date: Wed, 20 Oct 2010 12:43:19 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
	<1287065132-20372-6-git-send-email-eric@eukrea.com>
	<20101016190102.GD6225@tarshish>
In-Reply-To: <20101016190102.GD6225@tarshish>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/10] eukrea_cpuimx25: update board support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

Le 16/10/2010 21:01, Baruch Siach a =E9crit :
>> +#ifdef CONFIG_USB
>> +
>> +#define MX35_H1_SIC_SHIFT	21
>> +#define MX35_H1_SIC_MASK	(0x3<<  MX35_H1_SIC_SHIFT)
>> +#define MX35_H1_PM_BIT		(1<<  8)
>> +#define MX35_H1_IPPUE_UP_BIT	(1<<  7)
>> +#define MX35_H1_IPPUE_DOWN_BIT	(1<<  6)
>> +#define MX35_H1_TLL_BIT		(1<<  5)
>> +#define MX35_H1_USBTE_BIT	(1<<  4)
>> +#define MXC_EHCI_INTERFACE_SINGLE_UNI	(2<<  0)
>
> The exact same defines appear in patch no. 10 of this series. IMO these s=
hould
> go into a shared header file.
>
done, thanks for the review.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
