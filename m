Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCvDh-0004W3-Dr
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 14:18:47 +0000
Date: Mon, 1 Nov 2010 15:18:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101101141804.GZ6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<20101101131946.GW6017@pengutronix.de>
	<4CCEC0B1.4040907@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4CCEC0B1.4040907@eukrea.com>
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
Subject: Re: [PATCHv2] Add dynamic video initialization to barebox
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Mon, Nov 01, 2010 at 02:29:21PM +0100, Eric B=E9nard wrote:
> Hi J=FCrgen,
>
> Le 01/11/2010 14:19, Sascha Hauer a =E9crit :
>> General remarks about this series:
>>
>> - Please do not add code with '#if 0' and activate it later. This shows
>>    the series has the wrong order.
>> - Please refrain from basing your internal functions around 'struct
>>    device_d'. By doing so we completey lose type safety and at least in
>>    case of the mci framework where three different devices are involved
>>    this leads to unreadable and error prone code. The framebuffer
>>    code should be based around struct fb_info.
>> - Please keep the line lengths within sensible limits.
>> - Get rid of CONFIG_VIDEO_DELAY_INIT and make the mode runtime
>>    changeable. All this requires is a
>>    host->fb_disable(info); host->fb_mode(info, newmode); host->fb_enable=
(mode);
>>
> and pcr in imxfb_mode which describes polarity of signals and thus can =

> change from a screen to another.

This is handled in a later patch.

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
