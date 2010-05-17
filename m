Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODx67-0003cP-M7
	for barebox@lists.infradead.org; Mon, 17 May 2010 09:58:56 +0000
Date: Mon, 17 May 2010 11:58:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517095854.GY31199@pengutronix.de>
References: <1273754207-7763-1-git-send-email-eric@eukrea.com>
	<1273754207-7763-2-git-send-email-eric@eukrea.com>
	<20100517091450.GL31199@pengutronix.de>
	<4BF11043.8050400@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BF11043.8050400@eukrea.com>
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
Subject: Re: [PATCH 2/3] Add support for Eukrea's CPUIMX25
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, May 17, 2010 at 11:45:39AM +0200, Eric B=E9nard wrote:
> Hi Sascha,
>
> v2 of the patch passed through checkpatch so no trailing whitespaces  =

> should left.
>
> Le 17/05/2010 11:14, Sascha Hauer a =E9crit :
>> Care to rewrite this in C like some other boards already do?
>> I will commit it as is though, no showstopper.
>>
> I put this on the todo list, exercise seems interesting so I'll do it  =

> asap ;-)

Ok, the patch looks ok apart from the comment I made. I'll wait applying
it for some time. Just ping me before the next release if you want me to
apply the assembler version.


Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
