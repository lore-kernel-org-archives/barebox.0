Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THbil-0001Dh-2e
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:39:16 +0000
Message-ID: <5065B686.3060503@free-electrons.com>
Date: Fri, 28 Sep 2012 16:39:02 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1348840692-1913-1-git-send-email-maxime.ripard@free-electrons.com>
 <20120928143207.GF1322@pengutronix.de>
In-Reply-To: <20120928143207.GF1322@pengutronix.de>
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
Subject: Re: [PATCH] arm: cfa10036: Add proper resource length
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, brian@crystalfontz.com

Hi Sascha,

Le 28/09/2012 16:32, Sascha Hauer a =E9crit :
> On Fri, Sep 28, 2012 at 03:58:12PM +0200, Maxime Ripard wrote:
>> The cfa10036 board file were missing the length parameter when adding
>> devices. This made barebox crash early in the boot, in the mxs-mci
>> driver.
>>
>> Provide the resources lengths in a consistent format.
> =

> Applied, thanks

Will this be applied to the next stable release (2012.10)? Since 2012.09
was already broken (my bad), it would be nice if 2012.10 wasn't.

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
