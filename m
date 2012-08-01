Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SwcES-0000sN-Ny
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 16:57:13 +0000
Date: Wed, 1 Aug 2012 18:56:44 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120801185644.52c45c4b@eb-e6520>
In-Reply-To: <1343827988.3466.76.camel@mars>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
 <20120720080435.GP30009@pengutronix.de>
 <1343827988.3466.76.camel@mars>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC][PATCH] pcm043: usb support --not working--
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org, Jerry Kirk <jkirk865@gmail.com>

Hi Christoph,

Le Wed, 01 Aug 2012 15:33:08 +0200,
Christoph Fritz <chf.fritz@googlemail.com> a =E9crit :

> Hi,
> =

>  with the patch below I get the same behavior as Jerry: Only once after
> reset command "usb" shows HI-Devices (Joystick, Mouse, ...). Jerry, do
> you have made any progress on this?
> =

> The clock settings seems to be the same as for eukrea_cpuimx35. Eric:
> Does USB work for you on your board?
> =

thanks for the heads up : now it works.

> Sascha, I currently have no working config for kernel >=3D3.5 to check for
> clocks in debugfs.
> =

> Any thoughts on this?
> =

try to copy the config in that patch I just sent ;-)

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
