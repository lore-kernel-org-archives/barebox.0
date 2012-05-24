Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXevo-000138-7E
 for barebox@lists.infradead.org; Thu, 24 May 2012 20:46:49 +0000
Date: Thu, 24 May 2012 22:46:40 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120524224640.291aabdd@eb-e6520>
In-Reply-To: <20120524202510.GE30400@pengutronix.de>
References: <1337889903-18638-1-git-send-email-eric@eukrea.com>
 <20120524202510.GE30400@pengutronix.de>
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
Subject: Re: [PATCH] i.MX25: fix eSDHC1 pads
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Thu, 24 May 2012 22:25:10 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> On Thu, May 24, 2012 at 10:05:03PM +0200, Eric B=E9nard wrote:
> > enabling SION bit makes SDHC1 working on the i.MX25.
> =

> Can we instead just sync the iomux file with the kernel? I think this

OK will post the patch syncing barebox & kernel.

> will make less problems in the longer run. At least as long the iomux
> files in the kernel still exist...
> =

is iomux settings planned to be removed from the kernel ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
