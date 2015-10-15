Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmerc-0001eS-CO
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 09:30:21 +0000
Received: by wicgb1 with SMTP id gb1so19543479wic.1
 for <barebox@lists.infradead.org>; Thu, 15 Oct 2015 02:29:58 -0700 (PDT)
References: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
 <1444897136-25028-3-git-send-email-s.hauer@pengutronix.de>
 <20151015110037.7bfef9ab@free-electrons.com>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <561F7212.1010205@gmail.com>
Date: Thu, 15 Oct 2015 11:29:54 +0200
In-Reply-To: <20151015110037.7bfef9ab@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] scripts/kwbimage: Make BINARY files relative to
 config file
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On 15.10.2015 11:00, Thomas Petazzoni wrote:
> On Thu, 15 Oct 2015 10:18:55 +0200, Sascha Hauer wrote:
>> The BINARY files given in the config files are expected to be relative
>> to the place kwbimage is called from. This is bad since it breaks where
>> kwbimage is called from the build directory and not the source
>> directory.
>> It makes more sense to make the paths in the config files relative
>> to the config files which works with out of tree builds and is also
>> more what a user normally expects.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>
> In practice those binary.0 files are not really part of the Barebox
> source code. The binary.0 file has to be extracted from a vendor U-Boot
> binary prior to doing the Barebox build, so it isn't exactly part of
> the "source tree".
>
> Though I agree it is probably easier to extract them once and keep them
> around in the source tree (not checked-in, of course).

Sascha,

I am fine with making the path relative to kwbimage.cfg, although I'd
make it even more explicit by putting a './' in from of the binary.0
in each kwbimage.cfg.

> Note that U-Boot now has a fully open-source implementation of this
> binary.0 thing, at least for Armada XP and Armada 38x. However, it's
> basically copy/pasted from the vendor U-Boot, so it's not very pretty
> to look at:

Interesting, thanks for the links.

>   - http://git.denx.de/?p=u-boot.git;a=tree;f=drivers/ddr/marvell
>     for the DDR initialization code.

I think it would be nice to have the DDR init code in barebox, however..

>   - http://git.denx.de/?p=u-boot.git;a=tree;f=arch/arm/mach-mvebu/serdes
>     for the SERDES lane initialization

... I don't see why SERDES init is important that early (for production
use). I think SERDES init should be/stay part of the PHY init code we
already have.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
