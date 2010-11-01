Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PCuRz-00044j-9w
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 13:29:28 +0000
Message-ID: <4CCEC0B1.4040907@eukrea.com>
Date: Mon, 01 Nov 2010 14:29:21 +0100
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<20101101131946.GW6017@pengutronix.de>
In-Reply-To: <20101101131946.GW6017@pengutronix.de>
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
Subject: Re: [PATCHv2] Add dynamic video initialization to barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

Le 01/11/2010 14:19, Sascha Hauer a =E9crit :
> General remarks about this series:
>
> - Please do not add code with '#if 0' and activate it later. This shows
>    the series has the wrong order.
> - Please refrain from basing your internal functions around 'struct
>    device_d'. By doing so we completey lose type safety and at least in
>    case of the mci framework where three different devices are involved
>    this leads to unreadable and error prone code. The framebuffer
>    code should be based around struct fb_info.
> - Please keep the line lengths within sensible limits.
> - Get rid of CONFIG_VIDEO_DELAY_INIT and make the mode runtime
>    changeable. All this requires is a
>    host->fb_disable(info); host->fb_mode(info, newmode); host->fb_enable(=
mode);
>
and pcr in imxfb_mode which describes polarity of signals and thus can chan=
ge =

from a screen to another.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
