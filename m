Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P63Rj-0005fa-Hq
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 15:40:52 +0000
Date: Wed, 13 Oct 2010 17:40:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101013154045.GR28242@pengutronix.de>
References: <1286963684-16359-1-git-send-email-eric@eukrea.com>
	<20101013111439.GO28242@pengutronix.de>
	<4CB5A5F6.9040802@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4CB5A5F6.9040802@eukrea.com>
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
Subject: Re: [PATCH] unbreak bootm
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 13, 2010 at 02:28:38PM +0200, Eric B=E9nard wrote:
> Hi Sascha,
>
> Le 13/10/2010 13:14, Sascha Hauer a =E9crit :
>> On Wed, Oct 13, 2010 at 11:54:44AM +0200, Eric B=E9nard wrote:
>>> commit a3c1e5d888d0ee317ffc7635694684bb71213c9c was
>>> not tested as all the tests are wrong and it breaks bootm
>>>
>>
>> :-(
>>
>> How about the following patch (currently untested)?
>>
> works with the attached fix.

Ok, thanks for testing and fixing. I squashed the fixes into my patch
and added it to next.

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
