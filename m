Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgYuD-0007Al-E4
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 08:00:54 +0000
Date: Wed, 4 Aug 2010 10:00:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100804080051.GT14113@pengutronix.de>
References: <1280483395-9043-1-git-send-email-eric@eukrea.com>
	<20100804074253.GS14113@pengutronix.de>
	<4C591B60.7090204@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C591B60.7090204@eukrea.com>
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
Subject: Re: [PATCH] cfi_flash_intel: support 1024b buffer write
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 04, 2010 at 09:48:48AM +0200, Eric B=E9nard wrote:
> Hi Sascha,
>
> Le 04/08/2010 09:42, Sascha Hauer a =E9crit :
>> On Fri, Jul 30, 2010 at 11:49:55AM +0200, Eric B=E9nard wrote:
>>> newer Numonyx Strataflash P3x have 1024b buffer, thus, it's possible
>>> to write a buffer size of 0x200 which the actual flash_write_cmd
>>> doesn't permit as it's limited to a uchar parameter.
>>
>> So I guess these chips have 16 data lines?
>>
> actual flash_write_cmd is also used on chips with 16 data lines (like  =

> P30 or P33 Numonyx).

Yes. I meant that 8 wouldn't be enough because the command gets
wider than 8bit.

>
>>
> >Unfortunately this won't work when two of these are parallel. You'd have
>> to duplicate the command for the upper 16 bit.
>>
> Does actual flash_write_cmd works when 2 chips are parallel ?

At least it's supposed to ;)

See flash_make_cmd, it iterates over all bytes in info->portwidth and
writes cmd or 0 into the buffer depending on info->chipwidth.

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
