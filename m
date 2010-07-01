Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OUEC9-0005S8-Tf
	for barebox@lists.infradead.org; Thu, 01 Jul 2010 07:28:27 +0000
Message-ID: <4C2C4396.1060702@eukrea.com>
Date: Thu, 01 Jul 2010 09:28:22 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <20100701071307.GG16981@jasper.tkos.co.il>
In-Reply-To: <20100701071307.GG16981@jasper.tkos.co.il>
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
Subject: Re: Barebox 'git describe' strangeness
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Baruch,

Le 01/07/2010 09:13, Baruch Siach a =E9crit :
> Hi barebox list,
>
> For some reason 'git describe' shows me:
>
> v2009.12.0-178-gdc882c3
>
> I.e. git doesn't find the more recent v2010.06.0 tag. What is worse is th=
at
> the top-level Makefile takes the '-178-gdc882c3' part and attaches it to
> '2010.06.0', making the output of the 'version' command:
>
> barebox 2010.06.0-00178-gcc827a1 (Jul  1 2010 - 09:02:45)
>
> which is plain wrong.
>
> Can anyone here explain what's going on?
>
same thing here (the man says "By default (without --all or --tags) git =

describe only shows annotated tags." so maybe the tags after 2009.12.0 =

are not annotated ?)

git describe --tags
returns : v2010.06.0-29-g9ad1fe6

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
