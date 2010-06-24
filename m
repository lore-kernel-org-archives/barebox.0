Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORnzy-0007Oj-F4
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 15:05:51 +0000
Message-ID: <4C23744C.1010707@eukrea.com>
Date: Thu, 24 Jun 2010 17:05:48 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: assorted patches
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 24/06/2010 11:39, Sascha Hauer a =E9crit :
>
> The following changes since commit 334fe1dc8a1b866d1f0f4ccf82ff7b06589ec0=
22:
>
>    pca100: use generic default env (2010-06-22 15:44:45 +0200)
>
> are available in the git repository at:
>    git://git.pengutronix.de/git/barebox.git assorted-pu
>
> Sascha Hauer (11):
>        i.MX27: merge iomux pim definitions from kernel
>        imxfb: Add board specific hook to enable display
>        imxfb: do not enable framebuffer on startup
>        memcpy cmd: Do not expect to read/write the whole chunk at once
>        armlinux: reorder tag setup
>        remove eco920 board support
>        usbnet: remove unused dev member in struct usbnet
>        i.MX serial: Use readl/writel instead of pointer deref
>        i.MX clocksource: Use readl/writel instead of pointer deref
>        i.MX27: Add some missing device base addresses
>        fb: add a usage counter to prevent double enable/disable
>
patche serie tested on i.MX35 : no problem found

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
