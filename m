Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORkua-0001YC-E0
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:48:05 +0000
Message-ID: <4C2345F1.9060003@eukrea.com>
Date: Thu, 24 Jun 2010 13:48:01 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1277372997-6472-1-git-send-email-eric@eukrea.com>
	<1277372997-6472-2-git-send-email-eric@eukrea.com>
	<1277372997-6472-3-git-send-email-eric@eukrea.com>
	<20100624104801.GV12115@pengutronix.de>
In-Reply-To: <20100624104801.GV12115@pengutronix.de>
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
Subject: Re: [PATCH 3/3] eukrea_cpuimx35: better handling of backlight
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 24/06/2010 12:48, Sascha Hauer a =E9crit :
> On Thu, Jun 24, 2010 at 11:49:57AM +0200, Eric B=E9nard wrote:
>> start with backlight disabled and enable it if the logo is
>> displayed.
>
> I just posted a patch which starts up the imxfb driver disabled and
> another patch which adds a board specific enable/disable hook. Would
> this be a solution for you? The only thing missing then is a patch
> which initializes the ipu fb driver with the display disabled.
>
yes I saw your patch after sending this one and it's clearly the right =

way to do this.
I'll update ipu_fb to add the enable/disable hook.

Thanks,
Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
