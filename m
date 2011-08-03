Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qoa8M-0001D2-T1
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 12:01:11 +0000
Received: by wwj26 with SMTP id 26so6127wwj.0
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 05:01:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110803102244.GQ31404@pengutronix.de>
References: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
	<1312360122-26499-2-git-send-email-antonynpavlov@gmail.com>
	<20110803102244.GQ31404@pengutronix.de>
Date: Wed, 3 Aug 2011 16:01:08 +0400
Message-ID: <CAA4bVAGnCxcaF9+Toh13VEzKxET+nW3dvbk5La9zRsnMnot9CA@mail.gmail.com>
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

On 3 August 2011 14:22, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Aug 03, 2011 at 12:28:42PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0commands/Kconfig =A0 =A0| =A0 =A06 +++
>> =A0commands/Makefile =A0 | =A0 =A01 +
>> =A0commands/ifconfig.c | =A0 97 ++++++++++++++++++++++++++++++++++++++++=
+++++++++++
>> =A03 files changed, 104 insertions(+), 0 deletions(-)
>> =A0create mode 100644 commands/ifconfig.c
>
> Right now I don't see the reason to add a ifconfig command. Why not use
> devinfo eth0?

I don't use dhcp.
I use enhanced version of ifconfig to setup eth0 parameters
(ipaddr, netmask etc).

Have we a command to make dev_set_param() on any device?

With command of such type we will have no need of ifconfig.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
