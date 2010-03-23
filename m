Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu725-00089q-3L
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 16:32:49 +0000
Message-ID: <4BA8ED29.7060907@eukrea.com>
Date: Tue, 23 Mar 2010 17:32:41 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <20100323133217.GA26177@darwin>	<20100323142643.GN2241@pengutronix.de>	<20100323150915.GB26177@darwin>
	<4BA8DEBF.6060305@eukrea.com> <20100323162201.GE26177@darwin>
In-Reply-To: <20100323162201.GE26177@darwin>
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
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Matthias,

Le 23/03/2010 17:22, Matthias Kaehlcke a =E9crit :
> El Tue, Mar 23, 2010 at 04:31:11PM +0100 Eric B=E9nard ha dit:
>
>> Le 23/03/2010 16:09, Matthias Kaehlcke a =E9crit :
>>> if you can send me the barebox image that works on your board i'll
>>> check if it works on mine, and we'll have some more certainty about
>>> whether there is some obscure problem in my build process or my board
>>> is somehow different to yours
>>>
>> one possible diff : do you have DDR2 or Mobile DDR on your board ?
>
> according to the board documentation it's DDR2
>
> is this what barebox expects to find?
>
for the 3stack yes (but I think there may be some 3stack with mDDR as =

both init sequence are in redboot for example).
If you try my patch, it's for mDDR.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
