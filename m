Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoboY-0002Xy-Eq
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 13:48:51 +0000
Received: by wwf22 with SMTP id 22so590928wwf.18
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 06:48:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110803120648.GR31404@pengutronix.de>
References: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
	<1312360122-26499-2-git-send-email-antonynpavlov@gmail.com>
	<20110803102244.GQ31404@pengutronix.de>
	<CAA4bVAGnCxcaF9+Toh13VEzKxET+nW3dvbk5La9zRsnMnot9CA@mail.gmail.com>
	<20110803120648.GR31404@pengutronix.de>
Date: Wed, 3 Aug 2011 17:48:48 +0400
Message-ID: <CAA4bVAGdwCK9Z+hWcq-cq6rj+RqTTKGeqh5SK4rwPhHEsfVdFw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH very-draft] add ifconfig command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 3 August 2011 16:06, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Aug 03, 2011 at 04:01:08PM +0400, Antony Pavlov wrote:
>> On 3 August 2011 14:22, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > On Wed, Aug 03, 2011 at 12:28:42PM +0400, Antony Pavlov wrote:
>> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> >> ---
>> >> =A0commands/Kconfig =A0 =A0| =A0 =A06 +++
>> >> =A0commands/Makefile =A0 | =A0 =A01 +
>> >> =A0commands/ifconfig.c | =A0 97 +++++++++++++++++++++++++++++++++++++=
++++++++++++++
>> >> =A03 files changed, 104 insertions(+), 0 deletions(-)
>> >> =A0create mode 100644 commands/ifconfig.c
>> >
>> > Right now I don't see the reason to add a ifconfig command. Why not use
>> > devinfo eth0?
>>
>> I don't use dhcp.
>> I use enhanced version of ifconfig to setup eth0 parameters
>> (ipaddr, netmask etc).
>>
>> Have we a command to make dev_set_param() on any device?
>
> Not directly command, but you can set it on the command line. Device
> parameters are just like normal shell variables:
>
> barebox:/ eth0.ipaddr=3D192.168.2.18
> barebox:/ echo $eth0.ipaddr
> 192.168.2.18
> barebox:/

Thank a lot!

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
